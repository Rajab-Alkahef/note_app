import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';

import 'custom_button.dart';
import 'custom_text_field.dart';

class AddNotesBottomSheet extends StatelessWidget {
  const AddNotesBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Container(
        height: 400,
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 32,
              ),
              customTextField(hint: ' title'),
              SizedBox(
                height: 16,
              ),
              customTextField(
                hint: ' Content',
                maxlines: 5,
              ),
              SizedBox(
                height: 32,
              ),
              CustombuttonSheet(),
              SizedBox(
                height: 16,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
