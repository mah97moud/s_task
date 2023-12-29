import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:s_task/core/extensions/context_ex.dart';
import 'package:s_task/features/home/presentation/widgets/plan_discount_form_field.dart';
import 'package:s_task/features/home/presentation/widgets/plan_name_form_field.dart';
import 'package:s_task/features/home/presentation/widgets/plan_percentage_form_field.dart';

import '../../../core/app/di.dart';
import '../managers/add_plan_cubit/add_plan_cubit.dart';
import 'widgets/plan_price_form_field.dart';

class AddPlanView extends StatefulWidget {
  const AddPlanView({Key? key}) : super(key: key);

  @override
  State<AddPlanView> createState() => _AddPlanViewState();
}

class _AddPlanViewState extends State<AddPlanView> {
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
      create: (context) => AddPlanCubit(
        di(),
      ),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Add Plan'),
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
                    BlocConsumer<AddPlanCubit, AddPlanState>(
                      listener: (context, state) {
                        if (state is AddPlanSuccess) {
                          context.showSnackBar(state.message);
                          Navigator.pop(context,true);
                        } else if (state is AddPlanFailure) {
                          context.showSnackBar(state.message);
                        } else {
                          context.showLoadingSnackBar('Loading...');
                        }
                      },
                      builder: (context, state) => ElevatedButton(
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            final cubit = context.read<AddPlanCubit>();
                            final name = _nameController.text;
                            final dis = int.tryParse(_disController.text);
                            final price = int.tryParse(_priceController.text);
                            final percentage = _percentageController.text;

                            final body = {
                              "nameChannel": name,
                              "name": name.toLowerCase(),
                              "discount": dis ?? 0,
                              "price": price ?? 0,
                              "percentage1": percentage,
                            };

                            cubit.addPlan(
                              body: body,
                            );
                          }
                        },
                        child: const Text('Add Plan'),
                      ),
                    )
                  ],
                ),
              )),
        ),
      ),
    );
  }
}
