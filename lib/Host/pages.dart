

// import 'dart:io';
//
//
// import 'package:flutter/material.dart';
// import 'package:image_picker/image_picker.dart';
// import 'package:taxiwalahost/Constant/ConstantButton/BaseButton.dart';
// import 'package:taxiwalahost/Host/Afteruoloaded.dart';
// import 'package:taxiwalahost/Route/RouteNames.dart';
// import 'package:taxiwalahost/Theme/ConstantColor.dart';
// import 'package:taxiwalahost/Theme/fontStyle.dart';
//
// class host extends StatefulWidget {
//   const host({super.key});
//
//   @override
//   State<host> createState() => _hostState();
// }
//
// class _hostState extends State<host> {
//
//   @override
//   Widget build(BuildContext context) {
//     final height = MediaQuery.of(context).size.height;
//     final width = MediaQuery.of(context).size.width;
//     return Scaffold(
//       body: Column(
//         children: [
//           SizedBox(height: height*0.04,),
//           Container(
//             height: height*0.08,
//             child:Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 InkWell(
//                   onTap: (){
//                     Navigator.pop(context, RoutesName.Verification_page);
//                   },
//                   child: Container(
//                     height: height*0.15,
//                     width: width*0.15,
//                     decoration: BoxDecoration(
//                       shape: BoxShape.circle,
//                     ),
//                     child: Icon(Icons.arrow_back,size: width*0.08,),
//                   ),
//                 ),
//                 Container(
//                   height: height*0.08,
//                   width: width*0.38,
//                   child: Center(child: Text('Step 2/3',style: robotoGrey,)),
//                 ),
//               ],
//             ),
//           ),
//           Container(
//             height: height*0.07,
//             child: Text('Verification',style: robotoBlackProfile,),
//           ),
//           Container(
//             height: height*0.4,
//             width: width*0.9,
//             child: Column(
//               children: [
//                 Container(
//                   height: height*0.04,
//                   width: width*0.9,
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.start,
//                     children: [
//
//                       Container(
//                         height: height*0.03,
//                         width: width*0.7,
//                         child: Text('Aadhar card',style: robotoMediumBlack,),
//                       ),
//                       InkWell(
//                         onTap: (){
//
//                           _settingModalBottomSheet(context);
//                         },
//                         child: Container(
//                           height: height*0.03,
//                           width: width*0.2,
//                           child:Center(child: Icon(Icons.add_circle,color: ColorConstant.Black_COLOR,size: 25,))
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//                 Divider(),
//                 Container(
//                   height: height*0.04,
//                   width: width*0.9,
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.start,
//                     children: [
//                       Container(
//                         height: height*0.03,
//                         width: width*0.7,
//                         child: Text('Vehicle Rc',style: robotoMediumBlack,),
//                       ),
//                       InkWell(
//                         onTap: (){
//
//                           _settingModalBottomSheet(context);
//                         },
//                         child: Container(
//                             height: height*0.03,
//                             width: width*0.2,
//                             child:Center(child: Icon(Icons.add_circle,color: ColorConstant.Black_COLOR,size: 25,))
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//                 Divider(),
//                 Container(
//                   height: height*0.04,
//                   width: width*0.9,
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.start,
//                     children: [
//                       Container(
//                         height: height*0.03,
//                         width: width*0.7,
//                         child: Text('Vehicle Insurance',style: robotoMediumBlack,),
//                       ),
//                       InkWell(
//                         onTap: (){
//                           _settingModalBottomSheet(context);
//                         },
//                         child: Container(
//                             height: height*0.03,
//                             width: width*0.2,
//                             child:Center(child: Icon(Icons.add_circle,color: ColorConstant.Black_COLOR,size: 25,))
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//                 Divider(),
//                 Container(
//                   height: height*0.07,
//                   width: width*0.9,
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.start,
//                     children: [
//                       Container(
//                         height: height*0.03,
//                         width: width*0.7,
//                         child: Text('Passbook',style: robotoMediumBlack,),
//                       ),
//                       InkWell(
//                         onTap: (){
//                           _settingModalBottomSheet(context);
//                         },
//                         child: Container(
//                             height: height*0.03,
//                             width: width*0.2,
//                             child:Center(child: Icon(Icons.add_circle,color: ColorConstant.Black_COLOR,size: 25,))
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//                 Container(
//                   height: height*0.03,
//                   width: width*0.9,
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.start,
//                     children: [
//                       Container(
//                         height: height*0.03,
//                         width: width*0.7,
//                         child: Text('Upload 6 photo of the vehicle',style: robotoMediumBlack,),
//                       ),
//                       InkWell(
//                         onTap: (){
//                           _settingModalBottomSheet(context);
//                         },
//                         child: Container(
//                             height: height*0.03,
//                             width: width*0.2,
//                             child:Center(child: Icon(Icons.add_circle,color: ColorConstant.Black_COLOR,size: 25,))
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//            ],
//             ),
//           ),
//           // Spacer(),
//
//           CustomButton(onTap: () {Navigator.push(
//             context,
//             MaterialPageRoute(
//               builder: (context) => Afteruploaded(
//                 adharImages: _adharImages,
//                 VehicalRc: VehicalRc,
//                 Insurance: Insurance,
//                 Passbook: Passbook,
//                 SixPhoto: SixPhoto,
//               ),
//             ),
//           );
//
//             Navigator.pushNamed(context, RoutesName.Afteruploaded);
//           }, text: 'Continue', btnColor:ColorConstant.Green_BACKGROUND, textColor: ColorConstant.WHITE_COL0R,),
//           SizedBox(height: height*0.03,),
//
//         ],
//
//       ),
//     );
//   }
//
//   List<File> _adharImages = [];
//   List<File> VehicalRc = [];
//   List<File> Insurance = [];
//   List<File> Passbook = [];
//   List<File> SixPhoto = [];
//   Future<void> _pickImages(String category) async {
//     List<XFile>? pickedImages = await ImagePicker().pickMultiImage();
//     if (pickedImages != null) {
//       List<File> selectedImages = pickedImages.map((e) => File(e.path)).toList();
//       setState(() {
//         if (category == 'Adhar') {
//           _adharImages.addAll(selectedImages);
//
//         } else if (category == 'VehicalRc') {
//           VehicalRc.addAll(selectedImages);
//         } else if (category == 'Insurance') {
//           Insurance.addAll(selectedImages);
//         } else if (category == 'Passbook') {
//           Passbook.addAll(selectedImages);
//         }
//         else if (category == 'SixPhoto') {
//           SixPhoto.addAll(selectedImages);
//         }
//       });
//     }
//   }
//
//
//   void _settingModalBottomSheet(context) {
//     final heights = MediaQuery.of(context).size.height;
//     final widths = MediaQuery.of(context).size.width;
//     showModalBottomSheet(
//         shape: const RoundedRectangleBorder(
//           borderRadius: BorderRadius.only(
//               topLeft: Radius.circular(15), topRight: Radius.circular(15)),
//         ),
//         context: context,
//         builder: (BuildContext bc) {
//           return SizedBox(
//             height: heights / 7,
//             child: Padding(
//               padding: EdgeInsets.fromLTRB(
//                   widths / 12, 0, widths / 12, heights / 60),
//               child: Row(
//                 crossAxisAlignment: CrossAxisAlignment.center,
//                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                 children: [
//                   InkWell(
//                     onTap: () {
//                       _pickImages(ImageSource.camera.toString());
//                     },
//                     child: Container(
//                       height: heights / 20,
//                       width: widths / 2.7,
//                       decoration: BoxDecoration(
//                         // color: Colors.blue,
//                           border: Border.all(color: ColorConstant.Green_BACKGROUND, width: 2),
//                           borderRadius: BorderRadius.circular(10)),
//                       child: const Center(
//                           child: Text(
//                             "Camera",
//                             style: TextStyle(color: ColorConstant.Green_BACKGROUND),
//                           )),
//                     ),
//                   ),
//                   InkWell(
//                     onTap: () {
//                       _pickImages(ImageSource.gallery.toString());
//                     },
//                     child: Container(
//                       height: heights / 20,
//                       width: widths / 2.7,
//                       decoration: BoxDecoration(
//                           color: ColorConstant.Green_BACKGROUND,
//                           borderRadius: BorderRadius.circular(10)),
//                       child: const Center(
//                           child: Text(
//                             "Gallery",
//                             style: TextStyle(color:ColorConstant.WHITE_COL0R),
//                           )),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           );
//         });
//   }
// }


import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:taxiwalahost/Constant/ConstantButton/BaseButton.dart';
import 'package:taxiwalahost/Host/Afteruoloaded.dart';
import 'package:taxiwalahost/Route/RouteNames.dart';
import 'package:taxiwalahost/Theme/ConstantColor.dart';
import 'package:taxiwalahost/Theme/fontStyle.dart';




class host extends StatefulWidget {
  @override
  _hostState createState() => _hostState();
}

class _hostState extends State<host> {
  List<String> _adharImages = [];
  List<String> _RcImages = [];
  List<String> _InsuranceImages = [];
  List<String> _PassbookImages = [];
  List<String> _SixPhotoImages = [];

  Future<void> _pickImages(String category) async {
    print("my cat");
    print(category);
    List<XFile>? pickedImages = await ImagePicker().pickMultiImage();
    if (pickedImages != null) {
      // List<File> selectedImages = pickedImages.map((e) => File(e.path)).toList();
      List<String> selectedImages = pickedImages.map((e) {
        List<int> imageBytes = File(e.path).readAsBytesSync();
        return base64Encode(imageBytes); }).toList();
      print(selectedImages);
      setState(() {
        if (category == 'Aadhar') {
          print("aadhar image seleced");
          _adharImages.addAll(selectedImages);
        } else if (category == 'Vehicle Rc') {
          print("vehicle rc here");
          _RcImages.addAll(selectedImages);
        } else if (category == 'Vehicle Insurance') {
          print("vehicle inc here");

          _InsuranceImages.addAll(selectedImages);
        } else if (category == 'Passbook') {
          print("pass here");

          _PassbookImages.addAll(selectedImages);
        } else if (category == 'Upload 6 photo of the vehicle' && _SixPhotoImages.length + selectedImages.length <= 6) {
          _SixPhotoImages.addAll(selectedImages);
          ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text('You can select only up to six photos for each category.'),
              ));
        }

      });
    }
  }
 

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(

      body: Column(
        children: [
          SizedBox(height: height*0.04,),
          Container(
            height: height*0.08,
            child:Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                InkWell(
                  onTap: (){
                    Navigator.pop(context, RoutesName.Verification_page);
                  },
                  child: Container(
                    height: height*0.15,
                    width: width*0.15,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                    ),
                    child: Icon(Icons.arrow_back,size: width*0.08,),
                  ),
                ),
                Container(
                  height: height*0.08,
                  width: width*0.38,
                  child: Center(child: Text('Step 2/3',style: robotoGrey,)),
                ),
              ],
            ),
          ),
          Container(
            height: height*0.07,
            child: Text('Verification',style: robotoBlackProfile,),
          ),
          _buildImageSection('Aadhar', _adharImages),
          _buildImageSection('Vehicle Rc', _RcImages),
          _buildImageSection('Vehicle Insurance', _InsuranceImages),
          _buildImageSection('Passbook', _PassbookImages),
          _buildImageSection('Upload 6 photo of the vehicle', _SixPhotoImages),
          SizedBox(height: 20),
          // CustomButton(onTap: () {Navigator.push(
          //   context,
          //   MaterialPageRoute(
          //     builder: (context) => Afteruploaded(
          //       adharImages: _adharImages,
          //       VehicalRc: _RcImages,
          //       Insurance: _InsuranceImages,
          //       Passbook: _PassbookImages,
          //       SixPhoto: _SixPhotoImages,
          //     ),
          //   ),
          // );
          //
          // Navigator.pushNamed(context, RoutesName.Afteruploaded);
          // }, text: 'Continue', btnColor:ColorConstant.Green_BACKGROUND, textColor: ColorConstant.WHITE_COL0R,),
          CustomButton(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Afteruploaded(
                    adharImages: _adharImages,
                    VehicalRc: _RcImages,
                    Insurance: _InsuranceImages,
                    Passbook: _PassbookImages,
                    SixPhoto: _SixPhotoImages,

                  ),
                ),
              );
              // Navigator.pushNamed(context, RoutesName.Afteruploaded);
            },
            text: 'Continue',
            btnColor: ColorConstant.Green_BACKGROUND,
            textColor: ColorConstant.WHITE_COL0R,
          ),
        ],
      ),
    );
  }

  Widget _buildImageSection(String category, List<String> images) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0,right: 8),
      child: Column(
        children: [
          // Text(category),
          // SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('$category',style: robotoMediumBlack,),
              IconButton(onPressed: () => _pickImages(category), icon: Icon(Icons.add_circle,color: ColorConstant.Black_COLOR,size: 25,)),


            ],
          ),
          Divider()

        ],
      ),
    );
  }
}





