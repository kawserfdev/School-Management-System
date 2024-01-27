import 'package:flutter/material.dart';
import '../view/screen/driver-profile/driver_profile.dart';
import '../view/screen/live-tracking/live_traking.dart';
import '../view/screen/route-map/route_map.dart';
import '../view/widgets/colors-pattern.dart';

class TransportMoel {
  String title;
  String imgUrl;
  Color color;
  Widget widget;

  TransportMoel(this.title, this.imgUrl, this.color, this.widget);

  static List<TransportMoel> items() {
    return [
      TransportMoel(
        'Driver Profile',
        'assets/transport-images/DriverProfile1.png',
        color1,
        const DriverProfileScreen(),
        // const PdfInstructionScreen(),
      ),
      TransportMoel(
        'Live Traking',
        'assets/transport-images/LiveTracking1.png',
        color2,
        const LiveTrackingScreen(),
        // MapScreen(),
        // const VideoInstructionScreen(),
      ),
      TransportMoel(
        'Route Map',
        'assets/transport-images/Routemap1.png',
        color3,
        const RouteMapScreen(),
        // const VideoInstructionScreen(),
      ),
    ];
  }
}
