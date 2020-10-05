import 'package:flutter/material.dart';

class RecentlyCard extends StatefulWidget {
  final double height;
  final double width;
  final Color color;
  final Widget child;
  final IconData icons;
  final String title;
  final String firstDeg;
  final String power;

  RecentlyCard(
      {this.height,
      this.width,
      this.color,
      this.child,
      this.icons,
      this.title,
      this.firstDeg,
      this.power});

  @override
  _CustomCardState createState() => _CustomCardState();
}

class _CustomCardState extends State<RecentlyCard> {
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
        padding: EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 24,
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
              height: 12,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.title,
                  style: TextStyle(
                    color: (!isSelected) ? Color(0xFF726a95) : Colors.white,
                  ),
                ),
                SizedBox(
                  height: 4,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.power,
                      size: 16,
                      color: (!isSelected) ? Color(0xFF726a95) : Colors.white,
                    ),
                    SizedBox(
                      width: 6,
                    ),
                    Text(
                      widget.power + "%",
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
