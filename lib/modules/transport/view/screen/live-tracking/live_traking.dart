import 'package:aladin/modules/online_class/view/screen/colors_pattern-online.dart';
import 'package:aladin/widget/global-appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:get/get.dart';

import '../../../../helpcenter/module/view/widgets/color_pattern.dart';

class LiveTrackingScreen extends StatefulWidget {
  const LiveTrackingScreen({super.key});

  @override
  State<LiveTrackingScreen> createState() => _LiveTrackingScreenState();
}

class _LiveTrackingScreenState extends State<LiveTrackingScreen> {
  late GoogleMapController _googleMapCon;
  Marker? _selectedLocation;

  final CameraPosition _initialCameraPosition = const CameraPosition(
    target: LatLng(37.773972, -122.431297),
    zoom: 1.5,
  );

  //bool _firstTime = true;

  // CountryModel? _selectedCountry;
  // StateModel? _selectedState;
  // CityModel? _selectedCity;

  @override
  void initState() {
    if (Get.arguments != null) {
      _selectedLocation = const Marker(
        markerId: MarkerId('origin'),
        infoWindow: InfoWindow(
          title: "Current Location",
        ),
        position: LatLng(
          /*aModel!.latitude != 0 ? aModel!.latitude :*/
          37.773972,
          /*aModel!.longitude != 0 ? aModel!.longitude :*/ -122.431297,
        ),
      );
    }
    // _addressCon.getCountries();
    super.initState();
  }

  @override
  void dispose() {
    _googleMapCon.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: appBarColor,
      child: SafeArea(
        child: Scaffold(
          appBar: globalAppbar(context, 'Live Tracking', () {
            Get.back();
          }),
          body: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.only(top: 50.h, left: 30.w, right: 30.w),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: double.infinity.w,
                    height: 326.h,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Center(
                          child: GoogleMap(
                            myLocationButtonEnabled: false,
                            zoomControlsEnabled: false,
                            initialCameraPosition: _initialCameraPosition,
                            onMapCreated: (controller) =>
                                _googleMapCon = controller,
                            markers: {
                              if (_selectedLocation != null) _selectedLocation!,
                            },
                            onLongPress: (pos) => setState(
                              () => _selectedLocation = Marker(
                                markerId: const MarkerId('origin'),
                                infoWindow: const InfoWindow(
                                  title: "Select Location",
                                ),
                                position: LatLng(
                                  pos.latitude,
                                  pos.longitude,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 60.h,
                  ),
                  Stack(
                    // alignment: Alignment.centerLeft,
                    children: [
                      Positioned(
                        left: 10.w, // Centered vertical line
                        top: 15.h,
                        width: 1.w,
                        bottom: 0.h,
                        // bottom: 0.0,
                        // width: 2.0,
                        child: Container(color: primaryColor),
                      ),
                      Container(
                        height: 176.2.h,
                      ),
                      Positioned(
                        top: 0.0.h,
                        left: 6.w,
                        child: Row(
                          children: [
                            SvgPicture.asset(
                              'assets/transport-images/E104.svg',
                              height: 10.h,
                              width: 10.w,
                              fit: BoxFit.cover,
                            ),
                            SizedBox(
                              width: 10.w,
                            ),
                            Text(
                              'Shankor',
                              style: GoogleFonts.roboto(fontSize: 16.sp),
                            ),
                          ],
                        ),
                      ),
                      //?
                      Positioned(
                        top: 40.h,
                        left: 6.w,
                        child: Row(
                          children: [
                            SvgPicture.asset(
                              'assets/transport-images/E104.svg',
                              height: 10.h,
                              width: 10.w,
                              fit: BoxFit.cover,
                            ),
                            SizedBox(
                              width: 10.w,
                            ),
                            Text(
                              'Dhanmondi 27',
                              style: GoogleFonts.roboto(fontSize: 16.sp),
                            ),
                          ],
                        ),
                      ),
                      //?
                      Positioned(
                        top: 80.h,
                        left: 6.w,
                        child: Row(
                          children: [
                            SvgPicture.asset(
                              'assets/transport-images/E104.svg',
                              height: 10.h,
                              width: 10.w,
                              fit: BoxFit.cover,
                            ),
                            SizedBox(
                              width: 10.w,
                            ),
                            Text(
                              'Asad Gate',
                              style: GoogleFonts.roboto(fontSize: 16.sp),
                            ),
                          ],
                        ),
                      ),
                      //?
                      Positioned(
                        top: 120.h,
                        left: 6.w,
                        child: Row(
                          children: [
                            SvgPicture.asset(
                              'assets/transport-images/E102.svg',
                              height: 10.h,
                              width: 10.w,
                              fit: BoxFit.cover,
                            ),
                            SizedBox(
                              width: 10.w,
                            ),
                            Text(
                              'Farmgate',
                              style: GoogleFonts.roboto(
                                fontSize: 16.sp,
                                color: color9,
                              ),
                            ),
                          ],
                        ),
                      ),
                      //?
                      Positioned(
                        top: 161.5.h,
                        left: 6.w,
                        child: Row(
                          children: [
                            SvgPicture.asset(
                              'assets/transport-images/E102.svg',
                              height: 10.h,
                              width: 10.w,
                              fit: BoxFit.cover,
                            ),
                            SizedBox(
                              width: 10.w,
                            ),
                            Text(
                              'Mohakhali',
                              style: GoogleFonts.roboto(
                                fontSize: 16.sp,
                                color: color9,
                              ),
                            ),
                          ],
                        ),
                      ),
                      // SizedBox(
                      //   width: 10.w,
                      // ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
