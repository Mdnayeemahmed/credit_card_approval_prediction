import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class MyForm extends StatefulWidget {
  @override
  _MyFormState createState() => _MyFormState();
}

class _MyFormState extends State<MyForm> {
  final GlobalKey<FormBuilderState> _formKey = GlobalKey<FormBuilderState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('User Information Form'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: FormBuilder(
          key: _formKey,
          child: Column(
            children: [
              FormBuilderDropdown(
                name: 'gender',
                decoration: InputDecoration(labelText: 'Gender'),
                items: ['Female', 'Male']
                    .map((gender) => DropdownMenuItem(
                  value: gender,
                  child: Text(gender),
                ))
                    .toList(),
              ),
              FormBuilderDropdown(
                name: 'FLAG_OWN_CAR',
                decoration: InputDecoration(labelText: 'Do you own a car?'),
                items: ['Yes', 'No']
                    .map((ownCar) => DropdownMenuItem(
                  value: ownCar,
                  child: Text(ownCar),
                ))
                    .toList(),
              ),
              FormBuilderDropdown(
                name: 'FLAG_OWN_REALTY',
                decoration: InputDecoration(labelText: 'Do you own a property?'),
                items: ['Yes', 'No']
                    .map((ownRealty) => DropdownMenuItem(
                  value: ownRealty,
                  child: Text(ownRealty),
                ))
                    .toList(),
              ),
              FormBuilderTextField(
                name: 'CNT_CHILDREN',
                decoration: InputDecoration(labelText: 'Number of Children'),
                keyboardType: TextInputType.number,
              ),
              FormBuilderTextField(
                name: 'AMT_INCOME_TOTAL',
                decoration: InputDecoration(labelText: 'Annual Income'),
                keyboardType: TextInputType.number,
              ),
              FormBuilderDropdown(
                name: 'NAME_INCOME_TYPE',
                decoration: InputDecoration(labelText: 'Income Category'),
                items: ['Working', 'Commercial Associate', 'Other']
                    .map((incomeType) => DropdownMenuItem(
                  value: incomeType,
                  child: Text(incomeType),
                ))
                    .toList(),
              ),
              FormBuilderDropdown(
                name: 'NAME_EDUCATION_TYPE',
                decoration: InputDecoration(labelText: 'Education Level'),
                items: [
                  'Secondary / Secondary Special',
                  'Higher Education',
                  'Other'
                ]
                    .map((educationType) => DropdownMenuItem(
                  value: educationType,
                  child: Text(educationType),
                ))
                    .toList(),
              ),
              FormBuilderDropdown(
                name: 'NAME_FAMILY_STATUS',
                decoration: InputDecoration(labelText: 'Marital Status'),
                items: ['Yes', 'No']
                    .map((familyStatus) => DropdownMenuItem(
                  value: familyStatus,
                  child: Text(familyStatus),
                ))
                    .toList(),
              ),
              FormBuilderDropdown(
                name: 'NAME_HOUSING_TYPE',
                decoration: InputDecoration(labelText: 'Way of Living'),
                items: [
                  'House / Apartment',
                  'With Parents',
                  'Other'
                ]
                    .map((housingType) => DropdownMenuItem(
                  value: housingType,
                  child: Text(housingType),
                ))
                    .toList(),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.saveAndValidate()) {
                    print(_formKey.currentState!.value);
                    // Add logic to handle the form data
                  }
                },
                child: Text('Submit'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}