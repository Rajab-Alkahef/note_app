import 'package:flutter/material.dart';
import 'package:notes_app/Views/widgets/custom_button.dart';
import 'package:notes_app/Views/widgets/custom_text_field.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    super.key,
  });

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> formKey = GlobalKey();

  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, subtitle;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          const SizedBox(
            height: 32,
          ),
          customTextField(
              onSaved: (value) {
                title = value;
              },
              hint: ' title'),
          const SizedBox(
            height: 16,
          ),
          customTextField(
            onSaved: (value) {
              subtitle = value;
            },
            hint: ' Content',
            maxlines: 5,
          ),
          const SizedBox(
            height: 32,
          ),
          CustombuttonSheet(
            onTap: () {
              if (formKey.currentState!.validate()) {
                formKey.currentState!.save();
              } else {
                autovalidateMode = AutovalidateMode.always;
                setState(() {});
              }
            },
          ),
          const SizedBox(
            height: 16,
          ),
        ],
      ),
    );
  }
}
