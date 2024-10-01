import 'dart:convert';
import 'dart:developer';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:taxiwalahost/Provider/send_host_document_provider.dart';
import 'package:taxiwalahost/Route/RouteNames.dart';
import 'package:taxiwalahost/Theme/ConstantColor.dart';
import 'package:taxiwalahost/Theme/assetsConstant.dart';
import 'package:taxiwalahost/Theme/fontStyle.dart';

class Afteruploaded extends StatefulWidget {
  final List<String>? adharImages;
  final List<String>? VehicalRc;
  final List<String>? Insurance;
  final List<String>? Passbook;
  final List<String>? SixPhoto;

  const Afteruploaded({
    super.key,
    this.adharImages,
    this.VehicalRc,
    this.Insurance,
    this.Passbook,
    this.SixPhoto,
  });

  @override
  State<Afteruploaded> createState() => _AfteruploadedState();
}

class _AfteruploadedState extends State<Afteruploaded> {
  bool change = false;
  @override
  // Widget build(BuildContext context) {
  //   print(widget.adharImages!);
  //   print("widget.adharImages!");
  //   final height = MediaQuery.of(context).size.height;
  //   final width = MediaQuery.of(context).size.width;
  //   return Scaffold(
  //     body: widget.adharImages != null && widget.SixPhoto != null && widget.Passbook != null && widget.Insurance != null?
  //     ListView(shrinkWrap: true, physics: ScrollPhysics(), children: [
  //       Column(
  //         children: [
  //           SizedBox(
  //             height: height * 0.08,
  //             child: Row(
  //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //               crossAxisAlignment: CrossAxisAlignment.start,
  //               children: [
  //                 InkWell(
  //                   onTap: () {
  //                     Navigator.pop(context, RoutesName.Verification_page);
  //                   },
  //                   child: Container(
  //                     height: height * 0.15,
  //                     width: width * 0.15,
  //                     decoration: const BoxDecoration(
  //                       shape: BoxShape.circle,
  //                     ),
  //                     child: Icon(
  //                       Icons.arrow_back,
  //                       size: width * 0.08,
  //                     ),
  //                   ),
  //                 ),
  //                 SizedBox(
  //                   height: height * 0.08,
  //                   width: width * 0.38,
  //                   child: Center(
  //                       child: Text(
  //                     'Step 2/3',
  //                     style: robotoGrey,
  //                   )),
  //                 ),
  //               ],
  //             ),
  //           ),
  //           SizedBox(
  //             height: height * 0.09,
  //             child: Text(
  //               'Verification',
  //               style: robotoBlackProfile,
  //             ),
  //           ),
  //           ListView(
  //             shrinkWrap: true,
  //             children: [
  //               _buildImageSection('Adhar', widget.adharImages!),
  //               _buildImageSection('VehicalRc', widget.VehicalRc!),
  //               _buildImageSection('Insurance', widget.Insurance!),
  //               _buildImageSection('Passbook', widget.Passbook!),
  //               _buildImageSection('SixPhoto', widget.SixPhoto!),
  //             ],
  //           ),
  //
  //           // ListView.builder(
  //           //     shrinkWrap: true,
  //           //     physics: NeverScrollableScrollPhysics(),
  //           //     itemCount: items.length,
  //           //     itemBuilder: (context, index) {
  //           //       return Column(
  //           //         children: [
  //           //           Container(
  //           //             height: height * 0.07,
  //           //             width: width * 0.9,
  //           //             child: Row(
  //           //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //           //               children: [
  //           //                 Container(
  //           //                   height: height * 0.05,
  //           //                   width: width * 0.7,
  //           //                   child: Text(
  //           //                     items[index],
  //           //                     style: robotoMediumBlack,
  //           //                   ),
  //           //                 ),
  //           //                 IconButton(
  //           //                   onPressed: () {
  //           //                     setState(() {
  //           //                       items.removeAt(index);
  //           //                     });
  //           //                   },
  //           //                   icon: Icon(
  //           //                     Icons.delete_forever,
  //           //                     color: ColorConstant.RED_COLOR,
  //           //                     size: 25,
  //           //                   ),
  //           //                 )
  //           //               ],
  //           //             ),
  //           //           ),
  //           //           Container(
  //           //             height: height * 0.23,
  //           //             width: width * 0.9,
  //           //             decoration: BoxDecoration(
  //           //                 border: Border.all(
  //           //                     width: width * 0.001,
  //           //                     color: ColorConstant.Black_COLOR),
  //           //                 borderRadius: BorderRadius.all(Radius.circular(20)),
  //           //                 image: DecorationImage(
  //           //                   fit: BoxFit.fill,
  //           //                   image: AssetImage(Images.document),
  //           //                 )),
  //           //           ),
  //           //         ],
  //           //       );
  //           //     }),
  //           SizedBox(
  //             height: height * 0.12,
  //           )
  //         ],
  //       ),
  //     ])
  //       :Center(
  //   child: Column(
  //   children: [
  //   Text("Press Back Button"),
  //   const CircularProgressIndicator(),
  //   ],
  //   ),
  //   ),
  //     floatingActionButton: change == false
  //         ? FloatingActionButton.extended(
  //             backgroundColor: ColorConstant.Green_BACKGROUND,
  //             onPressed: () {
  //               Navigator.pushNamed(context, RoutesName.Verificationstep);
  //               setState(() {
  //                 change = false;
  //               });
  //             },
  //             label: SizedBox(
  //                 width: width * 0.7,
  //                 child: const Center(
  //                     child: Text(
  //                   'Book now',
  //                   style: robotoMediumExtraWhite,
  //                 ))),
  //           )
  //         : Container(),
  //     floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
  //   );
  // }
  Widget build(BuildContext context) {
    final documentProvider = Provider.of<DocumentProvider>(context);
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    print(widget.adharImages);
    print("adharImagessssssssss");
    return Scaffold(
      appBar: AppBar(
        actions: [
          Text("Step 2/3",style: robotoGrey,)
        ],
      ),
      body: widget.adharImages != null &&
              widget.SixPhoto != null &&
              widget.Passbook != null &&
              widget.Insurance != null
          ? ListView(
              children: [
                // SizedBox(
                //   height: height * 0.08,
                //   child: Row(
                //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //     // crossAxisAlignment: CrossAxisAlignment.start,
                //     children: [
                //       InkWell(
                //         onTap: () {
                //           Navigator.pop(context, RoutesName.Verification_page);
                //         },
                //         child: Container(
                //           height: height * 0.15,
                //           width: width * 0.15,
                //           decoration: const BoxDecoration(
                //             shape: BoxShape.circle,
                //           ),
                //           child: Icon(
                //             Icons.arrow_back,
                //             size: width * 0.08,
                //           ),
                //         ),
                //       ),
                //       Center(
                //           child: Text(
                //         'Step 2/3',
                //         style: robotoGrey,
                //       )),
                //     ],
                //   ),
                // ),
                Center(
                  child: Text(
                    'Verification',
                    style: robotoBlackProfile,
                  ),
                ),
                _buildImageSection('Aadhar', widget.adharImages!),
                _buildImageSection('Vehicle Rc', widget.VehicalRc!),
                _buildImageSection('Vehicle Insurance', widget.Insurance!),
                _buildImageSection('Passbook', widget.Passbook!),
                _buildImageSection(
                    'Upload 6 photo of the vehicle', widget.SixPhoto!)
              ],
            )
          : Center(
              child: Column(
                children: [
                  SizedBox(
                    height: height * 0.5,
                  ),
                  Text("Press Back Button"),
                  const CircularProgressIndicator(),
                ],
              ),
            ),
      floatingActionButton: change == false
          ? FloatingActionButton.extended(
              backgroundColor: ColorConstant.Green_BACKGROUND,
              onPressed: () {
                print("dddddd");
                // log(widget.adharImages as String);
                documentProvider.Document(context, widget.adharImages, widget.VehicalRc, widget.Insurance, widget.Passbook, widget.SixPhoto);

                setState(() {
                  change = false;
                });
              },
              label: SizedBox(
                  width: width * 0.7,
                  child: const Center(
                      child: Text(
                    'Book now',
                    style: robotoMediumExtraWhite,
                  ))),
            )
          : Container(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }

  Widget _buildImageSection(String category, List<String> images) {
    return ListTile(
      title: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          "${category}",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
      ),
      subtitle: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: images
              .map((image) => Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.memory(
                      base64Decode(image.toString()),
                      width: 100,
                      height: 100,
                      fit: BoxFit.cover,
                    ),
                  ))
              .toList(),
        ),
      ),
    );
  }
}
