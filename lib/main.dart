import 'package:flutter/material.dart';
import 'package:notes_app/Views/note_view.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:notes_app/constants.dart';

void main() async {
  await Hive.initFlutter();
  await Hive.openBox(kNotesBox);
  runApp(const NoteApp());
}

class NoteApp extends StatelessWidget {
  const NoteApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        fontFamily: 'Poppins',
      ),
      home: notesView(),
    );
  }
}
