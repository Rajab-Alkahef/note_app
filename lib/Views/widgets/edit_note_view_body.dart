import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:notes_app/Views/widgets/custom_app_bar.dart';
import 'package:notes_app/Views/widgets/custom_text_field.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          customAppBar(title: "Edit Note", icon: Icons.check),
          SizedBox(
            height: 30,
          ),
          customTextField(hint: 'title'),
          SizedBox(
            height: 16,
          ),
          customTextField(
            hint: 'content',
            maxlines: 5,
          ),
        ],
      ),
    );
  }
}
