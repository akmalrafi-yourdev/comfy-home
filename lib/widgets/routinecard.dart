import 'package:flutter/material.dart';

class RoutineCard extends StatefulWidget {
  final double height;
  final double width;
  final Color color;
  final Widget child;
  final IconData icons;
  final String title;

  RoutineCard(
      {this.height,
      this.width,
      this.color,
      this.child,
      this.icons,
      this.title});

  @override
  _CustomCardState createState() => _CustomCardState();
}

class _CustomCardState extends State<RoutineCard> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isSelected = !isSelected;
          print(isSelected.toString());
        });
      },
      child: Container(
        height: widget.height,
        width: widget.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              widget.icons,
              color: (!isSelected) ? Color(0xFF726a95) : Colors.white,
            ),
            SizedBox(
              height: 12,
            ),
            Text(
              widget.title,
              style: TextStyle(
                color: (!isSelected) ? Color(0xFF726a95) : Colors.white,
              ),
            ),
          ],
        ),
        decoration: BoxDecoration(
          gradient: (!isSelected)
              ? null
              : LinearGradient(
                  colors: [
                    Color(0xFF726a95),
                    Color(0xFF709fb0),
                  ],
                  begin: Alignment.bottomLeft,
                  end: Alignment.topRight,
                ),
          color: (!isSelected) ? Colors.white : null,
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 8,
            )
          ],
        ),
      ),
    );
  }
}
