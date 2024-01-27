import 'package:aladin/widget/global-appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../../widgets/colors-pattern.dart';

class RouteMapScreen extends StatefulWidget {
  const RouteMapScreen({super.key});

  @override
  State<RouteMapScreen> createState() => _RouteMapScreenState();
}

class _RouteMapScreenState extends State<RouteMapScreen> {
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
      color: Color(0xFFF7932B),
      child: SafeArea(
        child: GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
          },
          child: Scaffold(
            appBar: globalAppbar(context, 'Route Map', () {
              Get.back();
            }),
            body: Padding(
              padding: EdgeInsets.only(top: 10.h),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //?1st row is for Location..

                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 0.w),
                          child: SvgPicture.asset(
                            'assets/transport-images/G2.svg',
                            height: 70.h,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Flexible(
                          child: Padding(
                            padding: EdgeInsets.only(left: 0.w, right: 40.w),
                            child: TextFormField(
                              cursorColor: Colors.black,
                              cursorHeight: 18.h,
                              cursorWidth: 1.w,
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: Colors.white,
                                contentPadding:
                                    EdgeInsets.symmetric(horizontal: 12.w),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    width: 0.1.w,
                                  ),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    width: 0.1.w,
                                  ),
                                ),
                                hintText: 'Your Location',
                                hintStyle: TextStyle(
                                  fontFamily: "Roboto",
                                  fontSize: 14.sp,
                                ),
                              ),
                            ),
                          ),
                        ),
                        // Padding(
                        //   padding: EdgeInsets.only(left: 10.w),
                        //   child: SvgPicture.asset(
                        //     'assets/transport-images/G2.svg',
                        //     height: 70.h,
                        //     fit: BoxFit.cover,
                        //   ),
                        // ),
                        // SizedBox(width: 10.w),
                        // Container(
                        //   height: 50.h,
                        //   width: 300.w,
                        //   decoration: BoxDecoration(
                        //     border: Border.all(
                        //       color: Colors.black,
                        //       width: 0.1.w,
                        //     ),
                        //     borderRadius: BorderRadius.circular(10.r),
                        //     color: Colors.white,
                        //   ),
                        //   child: Padding(
                        //     padding: EdgeInsets.only(top: 15.h, left: 10.h),
                        //     child: Text(
                        //       'Your Location',
                        //       style: GoogleFonts.roboto(fontSize: 16.sp),
                        //       textAlign: TextAlign.start,
                        //       // textAlign: TextAlign.center,
                        //     ),
                        //   ),
                        // ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 30.w),
                      child: SvgPicture.asset(
                        'assets/transport-images/G1.svg',
                        height: 30.h,
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    //? 2nd row is for location..
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 20.w),
                          child: SvgPicture.asset(
                            'assets/transport-images/Location.svg',
                            height: 30.h,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Flexible(
                          child: Padding(
                            padding: EdgeInsets.only(left: 20.w, right: 40.w),
                            child: TextFormField(
                              cursorColor: Colors.black,
                              cursorHeight: 18.h,
                              cursorWidth: 1.w,
                              decoration: InputDecoration(
                                  filled: true,
                                  fillColor: Colors.white,
                                  contentPadding:
                                      EdgeInsets.symmetric(horizontal: 12.w),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      width: 0.1.w,
                                    ),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      width: 0.1.w,
                                    ),
                                  ),
                                  hintText: 'Home',
                                  hintStyle: TextStyle(
                                    fontFamily: "Roboto",
                                    fontSize: 14.sp,
                                  )),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 40.h,
                    ),
                    // Current Location
                    Padding(
                      padding: EdgeInsets.only(left: 20.w, right: 20.w),
                      child: Container(
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
                                  if (_selectedLocation != null)
                                    _selectedLocation!,
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
                    ),
                    SizedBox(height: 50.h),
                    Padding(
                      padding: EdgeInsets.only(left: 20.w),
                      child: Text(
                        '10 min (1.1 km)',
                        style: TextStyle(
                          fontFamily: 'ARLRDBD',
                          fontSize: 25.sp,
                          color: primaryColor,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 20.w, top: 20.h),
                      child: Text(
                        'Now there is no traffic here.',
                        style: GoogleFonts.roboto(fontSize: 16.sp),
                        textAlign: TextAlign.start,
                        // textAlign: TextAlign.center,
                      ),
                    ),
                    //? last section part 1..
                    Padding(
                      padding: EdgeInsets.only(left: 20.w, top: 20.h),
                      child: Row(
                        children: [
                          // 1st container uses for picked button..
                          Container(
                            height: 30.h,
                            width: 80.w,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.black,
                                width: 0.1.w,
                              ),
                              borderRadius: BorderRadius.circular(14.r),
                              color: Color(0xFFF7932B),
                            ),
                            child: Center(
                              child: Text(
                                'Picked',
                                style: GoogleFonts.roboto(
                                  fontSize: 12.sp,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 20.w,
                          ),
                          //?
                          Container(
                            height: 30.h,
                            width: 80.w,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.black,
                                width: 0.1.w,
                              ),
                              borderRadius: BorderRadius.circular(14.r),
                              color: color5,
                            ),
                            child: Center(
                              child: Text(
                                'Droped',
                                style: GoogleFonts.roboto(
                                    fontSize: 12.sp,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    //? Last section part 2..
                    Padding(
                      padding:
                          EdgeInsets.only(left: 20.w, top: 20.h, right: 20.w),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          // 1st container uses for picked button..
                          Container(
                            height: 30.h,
                            width: 90.w,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.black,
                                width: 0.1.w,
                              ),
                              borderRadius: BorderRadius.circular(14.r),
                              color: color5,
                            ),
                            child: Center(
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: 8.w,
                                  ),
                                  SvgPicture.asset(
                                    'assets/transport-images/pHoNe.svg',
                                    // color: Colors.amber,
                                    // height: 20,
                                  ),
                                  SizedBox(
                                    width: 10.w,
                                  ),
                                  Text(
                                    '017xxxxxx',
                                    style: GoogleFonts.roboto(
                                      fontSize: 12.sp,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          // SizedBox(
                          //   width: 5.w,
                          // ),
                          //?
                          Container(
                            height: 30.h,
                            width: 115.w,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.black,
                                width: 0.1.w,
                              ),
                              borderRadius: BorderRadius.circular(14.r),
                              color: color5,
                            ),
                            child: Center(
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: 10.w,
                                  ),
                                  Image.asset(
                                    'assets/transport-images/messenger1.png',
                                  ),
                                  SizedBox(
                                    width: 10.w,
                                  ),
                                  Text(
                                    'Text Massage',
                                    style: GoogleFonts.roboto(
                                        fontSize: 12.sp,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold),
                                    textAlign: TextAlign.center,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          // SizedBox(
                          //   width: 5.w,
                          // ),
                          // Spacer(),
                          //?
                          Container(
                            height: 30.h,
                            width: 118.w,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.black,
                                width: 0.1.w,
                              ),
                              borderRadius: BorderRadius.circular(14.r),
                              color: color5,
                            ),
                            child: Center(
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: 10.w,
                                  ),
                                  Image.asset(
                                    'assets/transport-images/m1.png',
                                  ),
                                  SizedBox(
                                    width: 10.w,
                                  ),
                                  Text(
                                    'Location Share',
                                    style: GoogleFonts.roboto(
                                        fontSize: 12.sp,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold),
                                    textAlign: TextAlign.center,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
