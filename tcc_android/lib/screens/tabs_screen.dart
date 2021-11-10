import 'package:flutter/material.dart';

class Tabsscreen extends StatefulWidget {
  final int index;
  final ValueChanged<int> onChangedTab;

  const Tabsscreen({
    required this.index,
    required this.onChangedTab,
  });

  // ignore: empty_constructor_bodies
  @override
  _TabsscreenState createState() => _TabsscreenState();
}

class _TabsscreenState extends State<Tabsscreen> {
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 8,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            buildTabItem(index: 0, icon: Icon(Icons.credit_score_rounded)),
            buildTabItem(index: 1, icon: Icon(Icons.attach_money_rounded)),
            buildTabItem(index: 2, icon: Icon(Icons.book_outlined)),
            buildTabItem(index: 3, icon: Icon(Icons.wallet_membership_sharp)),
          ],
        ));
  }

  Widget buildTabItem({
    required int index,
    required Icon icon,
  }) {
    final isSelected = index == widget.index;

    return IconTheme(
        data: IconThemeData(
          color: isSelected ? Colors.red : Colors.black,
        ),
        child: IconButton(
          icon: icon,
          onPressed: () => widget.onChangedTab(index),
        ));
  }
}
