import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:mumet/ui/colors/colors.dart';
import 'package:mumet/ui/core/button/outline_button.dart';
import 'package:mumet/ui/size/spacing.dart';
import 'package:stacked/stacked.dart';

import 'income_viewmodel.dart';

class IncomeView extends StatelessWidget {
 const IncomeView({Key? key}) : super(key: key);

 @override
 Widget build(BuildContext context) {
  final theme = Theme.of(context);
  final isDarkMode = theme.brightness == Brightness.dark;
   return ViewModelBuilder<IncomeViewModel>.reactive(
     builder: (context, model, child) => Scaffold(
        backgroundColor: XColors.PRIMARY,
        appBar: AppBar(
          backgroundColor: XColors.TRANSPARENT,
          title: const Text('Add Income', style: TextStyle(color: XColors.WHITE)),
          leading: IconButton(
            icon: const Icon(Icons.close, color: XColors.WHITE),
            onPressed: () => Navigator.of(context).pop(),
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                FormBuilder(
                  key: model.formKey,
                  child: Column(
                    children: <Widget>[
                      XSpacing.verticalMedium,
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: isDarkMode? XColors.DARK_LIGHT_2 :XColors.PRIMARY_LIGHT,
                        ),
                        child: ListTile(
                          leading: const Icon(Icons.monetization_on, color: XColors.WHITE),
                          title: Text('Nominal', style: theme.textTheme.labelLarge!.copyWith(color: Colors.white)),
                          trailing: Text('IDR 0', style: theme.textTheme.labelLarge!.copyWith(color: Colors.white, fontWeight: FontWeight.bold)),
                        ),
                      ),
                      XSpacing.verticalSmall,
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: isDarkMode? XColors.DARK_LIGHT_2 :XColors.PRIMARY_LIGHT,
                        ),
                        child: ListTile(
                          leading: const Icon(Icons.monetization_on, color: XColors.WHITE),
                          title: Text('Category', style: theme.textTheme.labelLarge!.copyWith(color: Colors.white)),
                          trailing: Text('Select Category', style: theme.textTheme.labelLarge!.copyWith(color: Colors.white, fontWeight: FontWeight.bold)),
                        ),
                      ),
                      XSpacing.verticalSmall,
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: isDarkMode? XColors.DARK_LIGHT_2 :XColors.PRIMARY_LIGHT,
                        ),
                        child: ListTile(
                          leading: const Icon(Icons.monetization_on, color: XColors.WHITE),
                          title: Text('Date', style: theme.textTheme.labelLarge!.copyWith(color: Colors.white)),
                          trailing: Text('Select Date', style: theme.textTheme.labelLarge!.copyWith(color: Colors.white, fontWeight: FontWeight.bold)),
                        ),
                      ),
                      XSpacing.verticalSmall,
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: isDarkMode? XColors.DARK_LIGHT_2 :XColors.PRIMARY_LIGHT,
                        ),
                        child: FormBuilderTextField(
                          name: 'description',
                          minLines: 6,
                          maxLines: 6,
                          style: theme.textTheme.labelLarge!.copyWith(color: Colors.white),
                          decoration: InputDecoration(
                            hintText: 'Description',
                            border: InputBorder.none,
                            hintStyle: theme.textTheme.labelLarge!.copyWith(color: Colors.white)
                          ),
                          validator: FormBuilderValidators.compose([
                            FormBuilderValidators.max(200),
                          ]),
                          keyboardType: TextInputType.text,
                        ),
                      ),
                      XSpacing.verticalLarge,
                      MyOutlineButton(
                        leadingIcon: const Icon(Icons.add, color: XColors.TEXT),
                        text: 'Add Income', 
                        onPressed: (){},
                      )
                      
                    ],
                  ),
                )
              ],
            ),
          ),

        ),
     ),
     viewModelBuilder: () => IncomeViewModel(),
   );
 }
}