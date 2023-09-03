import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class colorItem extends StatelessWidget {
  const colorItem({super.key, required this.isActive, required this.color});

  final Color color;
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return isActive
        ? CircleAvatar(
            backgroundColor: Colors.white,
            radius: 38,
            child: CircleAvatar(
              backgroundColor: color,
              radius: 34,
            ),
          )
        : CircleAvatar(
            backgroundColor: color,
            radius: 38,
          );
  }
}

class colorListView extends StatefulWidget {
  const colorListView({super.key});

  @override
  State<colorListView> createState() => _colorListViewState();
}

class _colorListViewState extends State<colorListView> {
  int currentIndex = 0;
  List<Color> color = const [
    Color(0xff49416D),
    Color(0xffA882DD),
    Color(0xffE08D79),
    Color(0xffB3F2DD),
    Color(0xffE0EFDE),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 38 * 2,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: color.length,
          itemBuilder: ((context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: GestureDetector(
                onTap: () {
                  currentIndex = index;
                  setState(() {});
                },
                child: colorItem(
                  color: color[index],
                  isActive: currentIndex == index,
                ),
              ),
            );
          })),
    );
  }
}
