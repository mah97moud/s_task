import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:s_task/core/extensions/context_ex.dart';
import 'package:s_task/features/home/presentation/widgets/plan_discount_form_field.dart';
import 'package:s_task/features/home/presentation/widgets/plan_name_form_field.dart';
import 'package:s_task/features/home/presentation/widgets/plan_percentage_form_field.dart';
import 'package:s_task/features/home/presentation/widgets/save_plan_button.dart';

import '../../../core/app/di.dart';
import '../data/models/plan_model/plan_data_model.dart';
import '../managers/add_plan_cubit/add_edit_plan_cubit.dart';
import 'widgets/plan_price_form_field.dart';

class AddEditPlanView extends StatefulWidget {
  const AddEditPlanView({Key? key, this.editPlan}) : super(key: key);
  final PlanDataModel? editPlan;

  @override
  State<AddEditPlanView> createState() => _AddEditPlanViewState();
}

class _AddEditPlanViewState extends State<AddEditPlanView> {
  final _formKey = GlobalKey<FormState>();
  late final TextEditingController _nameController;
  late final TextEditingController _disController;
  late final TextEditingController _priceController;
  late final TextEditingController _percentageController;

  @override
  void initState() {
    super.initState();
    _nameController = TextEditingController();
    _disController = TextEditingController();
    _priceController = TextEditingController();
    _percentageController = TextEditingController();
  }

  @override
  void dispose() {
    _nameController.dispose();
    _disController.dispose();
    _priceController.dispose();
    _percentageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddEditPlanCubit(
        di(),
      )..init(widget.editPlan),
      child: BlocConsumer<AddEditPlanCubit, AddEditPlanState>(
        listener: (context, state) async {
          final currentState = state;
          final readAddEditCubit = context.read<AddEditPlanCubit>();

          if (currentState is AddEditPlanEditState) {
            var plan = currentState.plan;
            _nameController.text = plan.name;
            _disController.text = plan.discount.toString();
            _priceController.text = plan.price.toString();
            _percentageController.text = plan.percentage1.toString();
          }

          if (state is AddEditPlanSuccess) {
            context.showSnackBar(state.message);
            Navigator.pop(context, true);
          } else if (state is AddEditPlanFailure) {
            context.showSnackBar(state.message);
            await readAddEditCubit.init(widget.editPlan);
          } else if (state is AddEditPlanLoading) {
            context.showLoadingSnackBar('Loading...');
          }
        },
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              title: widget.editPlan != null
                  ? const Text('Edit Plan')
                  : const Text('Add Plan'),
            ),
            body: Form(
              key: _formKey,
              child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        PlanNameFormField(nameController: _nameController),
                        const SizedBox(height: 20.0),
                        PlanDiscountFormField(disController: _disController),
                        const SizedBox(height: 20.0),
                        PlanPriceFormField(priceController: _priceController),
                        const SizedBox(height: 20.0),
                        PlanPercentageFormField(
                          percentageController: _percentageController,
                        ),
                        const SizedBox(height: 30.0),
                        SavePlanButton(
                          formKey: _formKey,
                          nameController: _nameController,
                          disController: _disController,
                          priceController: _priceController,
                          percentageController: _percentageController,
                          editPlan: widget.editPlan,
                        ),
                      ],
                    ),
                  )),
            ),
          );
        },
      ),
    );
  }
}
