import 'package:flutter/material.dart';
import 'package:smart_home/widgets/recentlycard.dart';
import 'package:smart_home/widgets/roomcard.dart';
import 'package:smart_home/widgets/routinecard.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: ListView(
              children: [
                Stack(
                  children: [
                    Positioned(
                      top: -MediaQuery.of(context).size.height / 4,
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height / 2,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Color(0xFF726a95),
                              Color(0xFF709fb0),
                            ],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                          ),
                          borderRadius: BorderRadius.circular(72),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 24, top: 36),
                      child: Text(
                        "Akmal's Home",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(24, 88, 24, 24),
                      height: 160,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(18),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.3),
                            blurRadius: 8,
                            // spreadRadius: 1,
                          ),
                        ],
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(12),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "28°C",
                                  style: TextStyle(
                                      color: Color(0xFF709fb0),
                                      fontWeight: FontWeight.w600,
                                      fontSize: 18),
                                  textAlign: TextAlign.center,
                                ),
                                Text(
                                  "avg. room temp",
                                  style: TextStyle(
                                    color: Colors.grey[400],
                                    fontSize: 12,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                                SizedBox(
                                  height: 24,
                                ),
                                Text(
                                  "34°C",
                                  style: TextStyle(
                                      color: Color(0xFF709fb0),
                                      fontWeight: FontWeight.w600,
                                      fontSize: 18),
                                  textAlign: TextAlign.center,
                                ),
                                Text(
                                  "outside temp",
                                  style: TextStyle(
                                    color: Colors.grey[400],
                                    fontSize: 12,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "72%",
                                  style: TextStyle(
                                      color: Color(0xFF709fb0),
                                      fontWeight: FontWeight.w600,
                                      fontSize: 18),
                                  textAlign: TextAlign.center,
                                ),
                                Text(
                                  "humidity",
                                  style: TextStyle(
                                    color: Colors.grey[400],
                                    fontSize: 12,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                                SizedBox(
                                  height: 24,
                                ),
                                Text(
                                  "4",
                                  style: TextStyle(
                                      color: Color(0xFF709fb0),
                                      fontWeight: FontWeight.w600,
                                      fontSize: 18),
                                  textAlign: TextAlign.center,
                                ),
                                Text(
                                  "devices connected",
                                  style: TextStyle(
                                    color: Colors.grey[400],
                                    fontSize: 12,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 24),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Routines",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF726a95),
                        ),
                      ),
                      Text(
                        "View all",
                        style: TextStyle(
                          color: Colors.grey[400],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 12,
                ),
                SizedBox(
                  height: 136,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Container(
                        padding: EdgeInsets.only(left: 24, top: 12, bottom: 12),
                        child: RoutineCard(
                          height: 100,
                          width: 146,
                          icons: Icons.wb_sunny,
                          title: "Morning",
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 24, top: 12, bottom: 12),
                        child: RoutineCard(
                          height: 100,
                          width: 146,
                          icons: Icons.blur_linear,
                          title: "Sport Activity",
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 24, top: 12, bottom: 12),
                        child: RoutineCard(
                          height: 100,
                          width: 146,
                          icons: Icons.panorama,
                          title: "Outdoor Activity",
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(
                            left: 24, top: 12, bottom: 12, right: 24),
                        child: RoutineCard(
                          height: 100,
                          width: 146,
                          icons: Icons.toys,
                          title: "Kids Around",
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                  child: Text(
                    "Rooms",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: Color(0xFF726a95),
                    ),
                  ),
                ),
                SizedBox(
                  height: 100,
                  width: 120,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Container(
                        padding: EdgeInsets.only(left: 24, top: 12, bottom: 12),
                        child: RoomCard(
                          width: 240,
                          icons: Icons.tv,
                          title: "2nd Living Room",
                          firstDeg: "23°C",
                          humid: "85",
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 24, top: 12, bottom: 12),
                        child: RoomCard(
                          width: 240,
                          icons: Icons.airline_seat_flat,
                          title: "Annie Bedroom",
                          firstDeg: "27°C",
                          humid: "72",
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(
                            left: 24, top: 12, bottom: 12, right: 24),
                        child: RoomCard(
                          width: 240,
                          icons: Icons.panorama,
                          title: "Dad's Painting Room",
                          firstDeg: "25°C",
                          humid: "86",
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 24, vertical: 24),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Recently Devices Used",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF726a95),
                        ),
                      ),
                      Text(
                        "View all",
                        style: TextStyle(
                          color: Colors.grey[400],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 180,
                  margin: EdgeInsets.only(bottom: 12),
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Container(
                        padding: EdgeInsets.only(left: 24, top: 12, bottom: 12),
                        child: RecentlyCard(
                          width: 160,
                          icons: Icons.settings_remote,
                          title: "Panaxonic AC",
                          power: "25",
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 24, top: 12, bottom: 12),
                        child: RecentlyCard(
                          width: 160,
                          icons: Icons.directions_bike,
                          title: "Electric Bike",
                          power: "27",
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 24, top: 12, bottom: 12),
                        child: RecentlyCard(
                          width: 160,
                          icons: Icons.tv,
                          title: "TV Cinema",
                          power: "26",
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(
                            left: 24, top: 12, bottom: 12, right: 24),
                        child: RecentlyCard(
                          width: 160,
                          icons: Icons.av_timer,
                          title: "Mega Timer",
                          power: "12",
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
