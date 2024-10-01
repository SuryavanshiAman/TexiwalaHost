
import 'dart:async';
import 'dart:convert';
import 'dart:ui' as ui;
import 'package:another_stepper/widgets/another_stepper.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import 'package:http/http.dart' as http;
import 'package:taxiwalahost/Constant/ConstantButton/Stepperlist.dart';
import 'package:taxiwalahost/Constant/ConstantTextfield/ApiConstant.dart';
import 'package:taxiwalahost/Constant/ConstantTextfield/CustomTextfield.dart';
import 'package:taxiwalahost/Route/RouteNames.dart';
import 'package:taxiwalahost/Theme/ConstantColor.dart';
import 'package:taxiwalahost/Theme/assetsConstant.dart';
import 'package:taxiwalahost/Theme/fontStyle.dart';

class Orderrideacitve extends StatefulWidget {
  // final String locationType;

  @override
  State<Orderrideacitve> createState() => _OrderrideacitveState();
}

class _OrderrideacitveState extends State<Orderrideacitve> {


  String radius = "30";
  double latitude = 31.5111093;
  double longitude = 74.279664;
  var lat = "0.000";
  var long = "0.000";
  var latt;
  var longg;

  Completer<GoogleMapController> _controller = Completer();
  String _draggedAddress = "";
  CameraPosition? _cameraPosition;
  late LatLng _defaultLatLng;
  late LatLng _draggedLatlng;
  _init() {
    _defaultLatLng = const LatLng(20.5937, 78.9629);
    _draggedLatlng = _defaultLatLng;
    _cameraPosition = CameraPosition(target: _defaultLatLng, zoom: 10.5);
    _gotoUserCurrentPosition();
  }

  Uint8List? marketimages;
  final List<Marker> _markers = [];
  Future<Uint8List> getImages(String path, int width) async {
    ByteData data = await rootBundle.load(path);
    ui.Codec codec = await ui.instantiateImageCodec(data.buffer.asUint8List(),
        targetHeight: width);
    ui.FrameInfo fi = await codec.getNextFrame();
    return (await fi.image.toByteData(format: ui.ImageByteFormat.png))!
        .buffer
        .asUint8List();
  }

  Future<Uint8List?> loadNetWorkImage(String path) async {
    final completer = Completer<ImageInfo>();
    var image = NetworkImage(path);
    image.resolve(const ImageConfiguration()).addListener(
        ImageStreamListener((info, _) => completer.complete(info)));
    final imageInfo = await completer.future;
    final byteData =
    await imageInfo.image.toByteData(format: ui.ImageByteFormat.png);
    return byteData!.buffer.asUint8List();
  }

  var totallen;
  Widget _getMap() {
    return GoogleMap(
        myLocationEnabled: true,
        zoomControlsEnabled: false,
        zoomGesturesEnabled: true,
        myLocationButtonEnabled: true,
        markers: Set<Marker>.of(_markers),
        initialCameraPosition: _cameraPosition!,
        mapType: MapType.terrain,
        onCameraIdle: () {
          _getAddress(_draggedLatlng);
        },
        onCameraMove: (cameraPosition) {
          _draggedLatlng = cameraPosition.target;
        },
        onMapCreated: (GoogleMapController controller) {
          if (!_controller.isCompleted) {
            _controller.complete(controller);
          }
        });
  }

  Future _gotoUserCurrentPosition() async {
    Position currentPosition = await _determineUserCurrentPosition();
    _gotoSpecificPosition(
        LatLng(currentPosition.latitude, currentPosition.longitude));
    final Uint8List locationIcon = await getImages('assets/googleicon.png', 70);
    setState(() async {
      lat = currentPosition.latitude.toString();
      long = currentPosition.longitude.toString();
      var lats = double.parse(lat);
      var longs = double.parse(long);
      _markers.add(Marker(
        markerId: const MarkerId('0'),
        icon: BitmapDescriptor.fromBytes(locationIcon),
        position: LatLng(lats, longs),
        infoWindow: const InfoWindow(
          title: "userName",
        ),
        draggable: true,
        onDragEnd: ((newPosition) {
          print('rrrrrrrrrrrr');
          print(newPosition.latitude);
          print(newPosition.longitude);
        }),
      ));
    });
  }

  Future _gotoSpecificPosition(LatLng position) async {
    GoogleMapController mapController = await _controller.future;
    mapController.animateCamera(CameraUpdate.newCameraPosition(
        CameraPosition(target: position, zoom: 13.5)));
    await _getAddress(position);
  }

  Future _getAddress(LatLng position) async {
    // _suggestions.clear();
    List<Placemark> placemarks =
    await placemarkFromCoordinates(position.latitude, position.longitude);
    Placemark address = placemarks[0];
    String addresStr =
        "${address.street}, ${address.locality}, ${address.administrativeArea}, ${address.country}";
    setState(() {
      latt = position.latitude;
      longg = position.longitude;
      _draggedAddress = addresStr;
    });
  }

  Future _determineUserCurrentPosition() async {
    LocationPermission locationPermission;
    bool isLocationServiceEnabled = await Geolocator.isLocationServiceEnabled();
    //check if user enable service for location permission
    if (!isLocationServiceEnabled) {
      print("user don't enable location permission");
    }
    locationPermission = await Geolocator.checkPermission();
    if (locationPermission == LocationPermission.denied) {
      locationPermission = await Geolocator.requestPermission();
      if (locationPermission == LocationPermission.denied) {
        print("user denied location permission");
      }
    }

    if (locationPermission == LocationPermission.deniedForever) {
      print("user denied permission forever");
    }
    return await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.best);
  }

// fetch live location from the map
  final TextEditingController _searchController = TextEditingController();
  List<dynamic> _suggestions = [];

  Future<void> _getSuggestions(String input) async {
    const apiKey = Apiconst.mapkey; // Replace with your API key
    final endpoint = Uri.parse(
      Apiconst.mapSuggetion+'$input&key=$apiKey',
      // 'https://maps.googleapis.com/maps/api/place/autocomplete/json?input=$input&key=$apiKey',
    );

    final response = await http.get(endpoint);

    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      print(data);
      print("data");
      final predictions = data['predictions'];
      if (kDebugMode) {
        print("saaaaaaaaaaaaaaaaaa");
      }
      if (kDebugMode) {
        print(predictions);
      }
      setState(() {
        _suggestions = predictions.map((prediction) {
          final description = prediction['description'] as String;
          final placeId = prediction['place_id'] as String;
          return {'description': description, 'place_id': placeId};
        }).toList();
      });
    }
  }

  Future<Map<String, double>> getLatLngFromPlaceId(
      String placeId, String address) async {
    const apiKey = Apiconst.mapkey;
    final response = await http.get(Uri.parse(
        Apiconst.map_get_lat_long+'$placeId&key=$apiKey'));
    // 'https://maps.googleapis.com/maps/api/place/details/json?placeid=$placeId&key=$apiKey'));
    final decodedResponse = json.decode(response.body);

    print(response);
    print('MMMMMMMMMMMMMMMMMMMMMMMMMMMMM');
    print(decodedResponse);
    if (response.statusCode == 200) {
      final decodedResponse = json.decode(response.body);

      if (decodedResponse['status'] == 'OK') {
        final location = decodedResponse['result']['geometry']['location'];
        searchedLocationLatitude = location['lat'];
        searchedLocationLongitude = location['lng'];
        if (searchedLocationLongitude != null &&
            searchedLocationLatitude != null) {
          print("aaaaaaaaaaaaaa");
          print("TTTTTTTTTTTTTTTTTTTTTTTTTTT");
          print(address);
          print(searchedLocationLatitude);
          print(searchedLocationLongitude);
          _suggestions.clear();
          final searchlatlan =
          LatLng(searchedLocationLatitude, searchedLocationLongitude);
          // showDialog(context: context, builder: (BuildContext, context))
          // Navigator.pop(
          //   context,
          //   {
          //     'locationName': address,
          //     'latitude': searchedLocationLatitude,
          //     'longitude': searchedLocationLongitude,
          //   },
          // );
          _gotoSpecificPosition(searchlatlan);
        }

        return {
          'latitude': searchedLocationLatitude,
          'longitude': searchedLocationLongitude
        };
      } else {
        throw Exception(
            'Failed to fetch location details: ${decodedResponse['error_message']}');
      }
    } else {
      throw Exception(
          'Failed to fetch location details: ${response.statusCode}');
    }
  }

  Widget _getLoctionButton() {
    return Positioned(
      bottom: 20,
      right: 20,
      child: InkWell(
        onTap: () {
          _gotoUserCurrentPosition();
        },
        child: Container(
          width: 45,
          height: 45,
          decoration: BoxDecoration(
            color: Colors.green.withOpacity(0.7),
            borderRadius: BorderRadius.circular(8.0),
            // border: Border.all(
            //   width: 1.2, color: Colors.black
            // ),
            boxShadow: [
              const BoxShadow(color: Color.fromRGBO(0, 0, 0, .25), blurRadius: 16.0)
            ],
          ),
          child: const Icon(Icons.my_location),
        ),
      ),
    );
  }

  Widget _getCustomPin() {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Positioned(
      top: height / 2.8,
      left: width / 2.3,
      child: InkWell(
        onTap: () async {
          showDialog(
            context: context,
            builder: (ctx) => AlertDialog(
                title: Text(
                  _draggedAddress,
                ),
                content: SizedBox(
                  height: 200,
                  width: 400,
                  child: Column(
                    children: [
                      Text(
                        'Latitude ' + latt.toString(),
                      ),
                      Text(
                        'longitude ' + longg.toString(),
                      ),
                      Text(
                        'Adress ' + _draggedAddress,
                      ),
                    ],
                  ),
                  // child:Alerts(
                  //     lats:latt.toString(),
                  //     longs:longg.toString(),
                  //     address:_draggedAddress
                  // )
                )),
          );
        },
        child: const SizedBox(
          width: 50,
          height: 50,
          child: Icon(Icons.location_on_outlined),
        ),
      ),
    );
  }
  Widget Drawer() {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Positioned(
      top: 50,
      left: 20,
      child: Container(
        height: height*0.09,
        width: width*0.9,
        child: AnotherStepper(
          stepperList: Bookdata.getStepperListthree(context),
          stepperDirection: Axis.horizontal,
          iconWidth: 15,
          iconHeight: 15,
          activeBarColor: ColorConstant.Green_BACKGROUND,
          inActiveBarColor: ColorConstant.WHITE_COL0R,
          inverted: true,
          verticalGap: 25,
          activeIndex: 2,
          barThickness: 4,
        ),
      ),
    );
  }

  Widget _buildBody() {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Stack(children: [

      _getMap(),
      Drawer(),
      _getCustomPin(),
      _getLoctionButton(),
      _suggestions.isNotEmpty
          ? Container(
        color: Colors.white,
        height: height / 3,
        child: ListView.builder(
          physics: const BouncingScrollPhysics(),
          itemCount: _suggestions.length,
          itemBuilder: (context, index) {
            location = _suggestions[index]['description'];
            final placeId = _suggestions[index]['place_id'];
            print(placeId);
            return ListTile(
              contentPadding: const EdgeInsets.all(0),
              leading: const Icon(Icons.location_on_outlined),
              title: Text(
                location.toString(),
              ),
              onTap: () {
                print(location);
                FocusScope.of(context).requestFocus(FocusNode());
                getLatLngFromPlaceId(placeId, location.toString());
                print('aaaaaaaaaaaaaaa');
                // print(latt.toString()+long.toString()+_draggedAddress);
              },
            );
          },
        ),
      )
          : const SizedBox(),
    ]);
  }

  String SearchAddress = "";

  String? location;
  var liveLocation;
  var searchedLocationLatitude;
  var searchedLocationLongitude;

  void initState() {
    // DateTime selectedDate = DateTime.now();
    super.initState();
    _init();
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    //_incrementCounter();
    var main_add = _suggestions.isNotEmpty
        ? location.toString()
        : _draggedAddress.toString();

    var main_latt = _suggestions.isNotEmpty
        ? searchedLocationLatitude.toString()
        : latt.toString();
    var main_longg = _suggestions.isNotEmpty
        ? searchedLocationLongitude.toString()
        : longg.toString();
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,

        body: Stack(
          children: [
            _buildBody(),
            DraggableScrollableSheet(
              initialChildSize: 0.5,
              // Initial percentage of screen occupied by the bottom sheet
              minChildSize: 0.5,
              // Minimum percentage of screen occupied by the bottom sheet
              maxChildSize: 0.75,
              // Maximum percentage of screen occupied by the bottom sheet
              builder: (BuildContext context,
                  ScrollController scrollController) {
                return Container(
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10.0),
                      topRight: Radius.circular(10.0),
                    ),
                  ),
                  child: ListView(
                    controller: scrollController,
                    children: [
                      SizedBox(
                        height:height*0.8,
                        child: Column(
                          children: [
                            Center(
                              child: Container(
                                height:height*0.005,
                                width:width*0.65,
                                decoration: const BoxDecoration(
                                  color: ColorConstant.WHITE_BACKGROUND,
                                  borderRadius: BorderRadius.all(Radius.circular(50)),
                                ),
                              ),
                            ),
                            SizedBox(height:height*0.02),
                            SizedBox(
                              height:height*0.035,
                              child: Center(child: Text('Ride is active',style: robotoBlackProfile,)),
                            ),
                            SizedBox(height:height*0.01),
                            Card(
                              margin: const EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 15),
                              child: Padding(
                                  padding: const EdgeInsets.all(10),
                                  child: Column(
                                    children: [
                                      SizedBox(
                                        height:height*0.13,
                                        child: Row(
                                          children: [
                                            SizedBox(
                                              width:width*0.4,
                                              child: Column(
                                                children: [
                                                  const Padding(
                                                    padding: EdgeInsets.only(
                                                        right: 30),
                                                    child: Text('Edrin Rodger',
                                                      style: robotoMediumBlack,),
                                                  ),
                                                  SizedBox(height:height*0.005),
                                                  const Padding(
                                                    padding: EdgeInsets.only(right: 50),
                                                    child: Text('9846278910',
                                                      style: robotoBlack,),
                                                  ),
                                                  SizedBox(height:height*0.005),
                                                  const Padding(
                                                      padding: EdgeInsets.only(right: 10),
                                                      child:Row(
                                                        children: [
                                                          SizedBox(
                                                            child: Text("Driver",style: robotoBlack,),
                                                          ),
                                                          SizedBox(
                                                            child: Icon(Icons.star,color: Colors.amberAccent,),
                                                          ),
                                                          SizedBox(
                                                            child: Text("4.3",style: robotoBlack,),
                                                          ),
                                                        ],
                                                      )
                                                  ),
                                                ],
                                              ),
                                            ),
                                            SizedBox(width:width*0.1),
                                            const CircleAvatar(
                                              radius: 35,
                                              backgroundImage: const AssetImage(Images.girl),
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        height:height*0.07,
                                        child: Row(
                                          children: [
                                            Container(
                                              height: height*0.06,
                                              width:width*0.12,
                                              decoration: const BoxDecoration(
                                                  color: ColorConstant.Black_COLOR,
                                                  borderRadius: BorderRadius.all(
                                                      Radius.circular(13))
                                              ),
                                              child: const Icon(Icons.call,
                                                color: ColorConstant
                                                    .WHITE_BACKGROUND,),
                                            ),
                                            SizedBox(width:width*0.04),
                                            Padding(
                                              padding: const EdgeInsets.only(top: 5),
                                              child: Constant_text_field(
                                                controller: null,
                                                keyboardType: TextInputType.name,
                                                hintText: 'Message...',
                                                filled: true,
                                                validator: Validate_Name,
                                                height: height*0.06,
                                                width: width*0.67,
                                                fillColor: Colors.grey[300],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  )
                              ),
                            ),
                            SizedBox(height:height*0.01),
                            SizedBox(
                              height:height*0.15,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Card(
                                    color: ColorConstant.WHITE_COL0R,
                                    child:SizedBox(
                                      height: height*0.14,
                                      width: width*0.44,
                                      child: Center(
                                        child: RichText(
                                          text: TextSpan(
                                            text: "  273 Km",
                                            style:   robotoBlackProfile,
                                            children: const <TextSpan>[
                                              TextSpan(
                                                text:"\n\nDistance Covered",
                                                style:robotoBlack,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Card(
                                    color: ColorConstant.WHITE_COL0R,
                                    child:SizedBox(
                                      height: height*0.14,
                                      width: width*0.44,
                                      child: Center(
                                        child: RichText(
                                          text: TextSpan(
                                            text: "18:58:12\n",
                                            style:   robotoBlackProfile,
                                            children: const <TextSpan>[
                                              TextSpan(
                                                text:"\n        Time",
                                                style:robotoBlack,

                                              ),

                                            ],
                                          ),

                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height:height*0.01),
                            Card(
                              margin: const EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 20),
                              child: Padding(
                                padding: const EdgeInsets.all(20),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    InkWell(
                                      onTap: (){
                                        Navigator.pushNamed(context, RoutesName.Finalotp);
                                      },
                                      child: Container(
                                          height:height*0.055,
                                          width:width*0.23,
                                          decoration: const BoxDecoration(
                                            borderRadius: BorderRadius.all(Radius.circular(10)),
                                            color: ColorConstant.Black_COLOR,
                                          ),
                                          child: const Center(child: Text('Cancel',style: robotoMediumExtraWhite,))
                                      ),
                                    ),
                                    Container(
                                        height:height*0.055,
                                        width:width*0.23,
                                        decoration: const BoxDecoration(
                                          borderRadius: BorderRadius.all(Radius.circular(10)),
                                          color: ColorConstant.Black_COLOR,
                                        ),
                                        child: const Center(child: Text('Support',style: robotoMediumExtraWhite,))
                                    ),
                                    Container(
                                        height:height*0.055,
                                        width:width*0.23,
                                        decoration: const BoxDecoration(
                                          borderRadius: BorderRadius.all(Radius.circular(10)),
                                          color: ColorConstant.Black_COLOR,
                                        ),
                                        child: const Center(child: Text('Share',style: robotoMediumExtraWhite,))
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(height: height*0.02,),
                            Container(
                              height: height*0.07,
                              width: width*0.5,
                              decoration: const BoxDecoration(
                                color: Color(0xfff1e6ac),
                                borderRadius: BorderRadius.all(Radius.circular(15)),
                              ),
                              child: const Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  CircleAvatar(
                                    radius: 20,
                                    backgroundColor: ColorConstant.Black_COLOR,
                                    child: Icon(Icons.warning_amber,color:Color(0xfff1e6ac)),
                                  ),
                                  Text('Emegency SOS',style: robotoBold,)
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }}
String? Validate_Name(String? value) {
  if (value!.length < 3) {
    return 'Name must be more than 2 character';
  } else {
    return null;
  }
}
String? Validate_Distance(String? value) {
  if (value!.length < 3) {
    return 'Name must be more than 2 character';
  } else {
    return null;
  }
}
