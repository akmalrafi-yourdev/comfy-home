import 'package:flutter/material.dart';

class RoomCard extends StatefulWidget {
  final double height;
  final double width;
  final Color color;
  final Widget child;
  final IconData icons;
  final String title;
  final String firstDeg;
  final String humid;

  RoomCard(
      {this.height,
      this.width,
      this.color,
      this.child,
      this.icons,
      this.title,
      this.firstDeg,
      this.humid});

  @override
  _CustomCardState createState() => _CustomCardState();
}

class _CustomCardState extends State<RoomCard> {
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
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              width: 24,
            ),
            Container(
              height: 36,
              width: 36,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient: (!isSelected)
                    ? LinearGradient(
                        colors: [Color(0xFF726a95), Color(0xFF709fb0)],
                      )
                    : null,
                color: (!isSelected) ? Color(0xFF726a95) : Colors.white,
              ),
              child: Icon(
                widget.icons,
                size: 24,
                color: (!isSelected) ? Colors.white : Color(0xFF726a95),
              ),
            ),
            SizedBox(
              width: 24,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  widget.title,
                  style: TextStyle(
                    color: (!isSelected) ? Color(0xFF726a95) : Colors.white,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(
                  height: 4,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.ac_unit,
                      size: 16,
                      color: (!isSelected) ? Color(0xFF726a95) : Colors.white,
                    ),
                    SizedBox(
                      width: 6,
                    ),
                    Text(
                      widget.firstDeg,
                      style: TextStyle(
                        color: (!isSelected) ? Color(0xFF726a95) : Colors.white,
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    Icon(
                      Icons.cloud,
                      size: 16,
                      color: (!isSelected) ? Color(0xFF726a95) : Colors.white,
                    ),
                    SizedBox(
                      width: 6,
                    ),
                    Text(
                      widget.humid + "%",
                      style: TextStyle(
                        color: (!isSelected) ? Color(0xFF726a95) : Colors.white,
                        fontSize: 16,
                      ),
                    ),
                  ],
                )
              ],
            )
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
