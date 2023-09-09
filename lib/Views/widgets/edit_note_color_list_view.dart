import 'package:flutter/material.dart';
import 'package:notes_app/Views/widgets/color_list_view.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/model/note_model.dart';

class EditNoteColorsList extends StatefulWidget {
  const EditNoteColorsList({super.key, required this.note});
  final NoteModel note;
  @override
  State<EditNoteColorsList> createState() => _EditNoteColorsListState();
}

class _EditNoteColorsListState extends State<EditNoteColorsList> {
  late int currentIndex;
  @override
  void initState() {
    currentIndex = kcolor.indexOf(Color(widget.note.color));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 38 * 2,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: kcolor.length,
        itemBuilder: ((context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: GestureDetector(
              onTap: () {
                currentIndex = index;
                widget.note.color = kcolor[index].value;
                setState(() {});
              },
              child: ColorItem(
                color: kcolor[index],
                isActive: currentIndex == index,
              ),
            ),
          );
        }),
      ),
    );
  }
}
