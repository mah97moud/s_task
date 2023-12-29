import 'package:flutter/material.dart';
import 'package:s_task/features/home/presentation/widgets/plan_discount_form_field.dart';
import 'package:s_task/features/home/presentation/widgets/plan_name_form_field.dart';
import 'package:s_task/features/home/presentation/widgets/plan_percentage_form_field.dart';

import 'widgets/plan_price_form_field.dart';

class AddPlanView extends StatefulWidget {
const AddPlanView({ Key? key }) : super(key: key);

  @override
  State<AddPlanView> createState() => _AddPlanViewState();
}

class _AddPlanViewState extends State<AddPlanView> {

  late final TextEditingController _nameController ;
  late final TextEditingController _disController ;
  late final TextEditingController _priceController ;
  late final TextEditingController _percentageController ;

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
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Plan'),
      ),
      body: Padding(
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
              PlanPercentageFormField(percentageController: _percentageController)
            ],
          ),
        )
      ),
    );
  }
}
