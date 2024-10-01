// import 'dart:io';
//
// import 'package:flutter/material.dart';
// import 'package:image_picker/image_picker.dart';
// import 'package:taxiwalahost/Route/RouteNames.dart';
// import 'package:taxiwalahost/Theme/ConstantColor.dart';
// import 'package:taxiwalahost/Theme/fontStyle.dart';
// import 'package:taxiwalahost/test_2.dart';
//
//
//
// class ImageSelectionScreen extends StatefulWidget {
//   @override
//   _ImageSelectionScreenState createState() => _ImageSelectionScreenState();
// }
//
// class _ImageSelectionScreenState extends State<ImageSelectionScreen> {
//   List<File> _adharImages = [];
//   List<File> _RcImages = [];
//   List<File> _InsuranceImages = [];
//   List<File> _PassbookImages = [];
//   List<File> _SixPhotoImages = [];
//
//   Future<void> _pickImages(String category) async {
//     List<XFile>? pickedImages = await ImagePicker().pickMultiImage();
//     if (pickedImages != null) {
//       List<File> selectedImages = pickedImages.map((e) => File(e.path)).toList();
//       setState(() {
//         if (category == 'Aadhar card') {
//           _adharImages.addAll(selectedImages);
//         } else if (category == 'Vehicle Rc') {
//           _RcImages.addAll(selectedImages);
//         } else if (category == 'Vehicle Insurance') {
//           _InsuranceImages.addAll(selectedImages);
//         } else if (category == 'Passbook') {
//           _PassbookImages.addAll(selectedImages);
//         } else if (category == 'Upload 6 photo of the vehicle' && _SixPhotoImages.length + selectedImages.length <= 6) {
//           _SixPhotoImages.addAll(selectedImages);
//         }
//         else {
//           // If the limit exceeds, you can show a toast or a snackbar
//           ScaffoldMessenger.of(context).showSnackBar(
//             SnackBar(
//               content: Text('You can select only up to six photos for each category.'),
//             ),
//           );
//         }
//       });
//     }
//   }
//   // Future<void> _pickImages(String category) async {
//   //   List<XFile>? pickedImages = await ImagePicker().pickMultiImage();
//   //   if (pickedImages != null) {
//   //     List<File> selectedImages = pickedImages.map((e) => File(e.path)).toList();
//   //     setState(() {
//   //       // Check if the total number of selected images for this category
//   //       // and previously selected images is less than or equal to six
//   //       if (category == 'Aadhar card' && _adharImages.length + selectedImages.length <= 6) {
//   //         _adharImages.addAll(selectedImages);
//   //       } else if (category == 'Vehicle Rc' && _RcImages.length + selectedImages.length <= 6) {
//   //         _RcImages.addAll(selectedImages);
//   //       } else if (category == 'Vehicle Insurance' && _InsuranceImages.length + selectedImages.length <= 6) {
//   //         _InsuranceImages.addAll(selectedImages);
//   //       } else if (category == 'Passbook' && _PassbookImages.length + selectedImages.length <= 6) {
//   //         _PassbookImages.addAll(selectedImages);
//   //       } else if (category == 'Upload 6 photo of the vehicle' && _SixPhotoImages.length + selectedImages.length <= 6) {
//   //         _SixPhotoImages.addAll(selectedImages);
//   //       }
//   //       else {
//   //         // If the limit exceeds, you can show a toast or a snackbar
//   //         ScaffoldMessenger.of(context).showSnackBar(
//   //           SnackBar(
//   //             content: Text('You can select only up to six photos for each category.'),
//   //           ),
//   //         );
//   //       }
//   //     });
//   //   }
//   // }
//
//   @override
//   Widget build(BuildContext context) {
//     final height = MediaQuery.of(context).size.height;
//     final width = MediaQuery.of(context).size.width;
//     return Scaffold(
//
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
//           _buildImageSection('Adhar', _adharImages),
//           _buildImageSection('Vehical Rc', _RcImages),
//           _buildImageSection('Vehicle Insurance', _InsuranceImages),
//           _buildImageSection('Passbook', _PassbookImages),
//           _buildImageSection('Upload 6 photo of the vehicle', _SixPhotoImages),
//           SizedBox(height: 20),
//           ElevatedButton(
//             onPressed: () {
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(
//                   builder: (context) => ImageDetailScreen(
//                     adharImages: _adharImages,
//                     passbookImages: _InsuranceImages,
//                     pancardImages: _RcImages,
//                   ),
//                 ),
//               );
//             },
//             child: Text('Next Page'),
//           ),
//         ],
//       ),
//     );
//   }
//
//   Widget _buildImageSection(String category, List<File> images) {
//     return Padding(
//       padding: const EdgeInsets.only(left: 8.0,right: 8),
//       child: Column(
//         children: [
//           // Text(category),
//           // SizedBox(height: 8),
//           Row(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             // mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Text('$category',style: robotoMediumBlack,),
//               IconButton(onPressed: () => _pickImages(category), icon: Icon(Icons.add_circle,color: ColorConstant.Black_COLOR,size: 25,)),
//               // ElevatedButton(
//               //   onPressed: () => _pickImages(category),
//               //   child: Text('Select $category Images'),
//               // ),
//
//
//               // SizedBox(width: 20),
//               // Expanded(
//               //   child: SingleChildScrollView(
//               //     scrollDirection: Axis.horizontal,
//               //     child: Row(
//               //       children: images
//               //           .map(
//               //             (image) => Padding(
//               //           padding: const EdgeInsets.all(8.0),
//               //           child: Image.file(
//               //             image,
//               //             width: 100,
//               //             height: 100,
//               //             fit: BoxFit.cover,
//               //           ),
//               //         ),
//               //       )
//               //           .toList(),
//               //     ),
//               //   ),
//               // ),
//
//             ],
//           ),
//           Divider()
//           // SizedBox(height: 20),
//         ],
//       ),
//     );
//   }
// }

// class ImageDetailScreen extends StatelessWidget {
//   final List<File> adharImages;
//   final List<File> passbookImages;
//   final List<File> pancardImages;
//
//   ImageDetailScreen({
//     required this.adharImages,
//     required this.passbookImages,
//     required this.pancardImages,
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Selected Images'),
//       ),
//       body: ListView(
//         children: [
//           _buildImageSection('Adhar', adharImages),
//           _buildImageSection('Passbook', passbookImages),
//           _buildImageSection('Pancard', pancardImages),
//         ],
//       ),
//     );
//   }
//
//   Widget _buildImageSection(String category, List<File> images) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: Text(
//             category,
//             style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//           ),
//         ),
//         SingleChildScrollView(
//           scrollDirection: Axis.horizontal,
//           child: Row(
//             children: images
//                 .map(
//                   (image) => Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: Image.file(
//                   image,
//                   width: 100,
//                   height: 100,
//                   fit: BoxFit.cover,
//                 ),
//               ),
//             )
//                 .toList(),
//           ),
//         ),
//         SizedBox(height: 20),
//       ],
//     );
//   }
// }




import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';


class ImageSelectionScreen extends StatefulWidget {
  @override
  _ImageSelectionScreenState createState() => _ImageSelectionScreenState();
}

class _ImageSelectionScreenState extends State<ImageSelectionScreen> {
  List<File> _adharImages = [];
  List<File> _passbookImages = [];
  List<File> _pancardImages = [];

  Future<void> _pickImages(String category) async {
    List<XFile>? pickedImages = await ImagePicker().pickMultiImage();
    if (pickedImages != null) {
      List<File> selectedImages = pickedImages.map((e) => File(e.path)).toList();
      setState(() {
        if (category == 'Adhar') {
          _adharImages.addAll(selectedImages);
        } else if (category == 'Passbook') {
          _passbookImages.addAll(selectedImages);
        } else if (category == 'Pancard') {
          _pancardImages.addAll(selectedImages);
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Select Images'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          _buildImageSection('Adhar', _adharImages),
          _buildImageSection('Passbook', _passbookImages),
          _buildImageSection('Pancard', _pancardImages),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ImageDetailScreen(
                    adharImages: _adharImages,
                    passbookImages: _passbookImages,
                    pancardImages: _pancardImages,
                  ),
                ),
              );
            },
            child: Text('Next Page'),
          ),
        ],
      ),
    );
  }

  Widget _buildImageSection(String category, List<File> images) {
    return Column(
      children: [
        Text(category),
        SizedBox(height: 8),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () => _pickImages(category),
              child: Text('Select $category Images'),
            ),
            SizedBox(width: 20),
            Expanded(
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: images
                      .map(
                        (image) => Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.file(
                        image,
                        width: 100,
                        height: 100,
                        fit: BoxFit.cover,
                      ),
                    ),
                  )
                      .toList(),
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 20),
      ],
    );
  }
}

class ImageDetailScreen extends StatelessWidget {
  final List<File> adharImages;
  final List<File> passbookImages;
  final List<File> pancardImages;

  ImageDetailScreen({
    required this.adharImages,
    required this.passbookImages,
    required this.pancardImages,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Selected Images'),
      ),
      body: ListView(
        children: [
          _buildImageSection('Adhar', adharImages),
          _buildImageSection('Passbook', passbookImages),
          _buildImageSection('Pancard', pancardImages),
        ],
      ),
    );
  }

  Widget _buildImageSection(String category, List<File> images) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            category,
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: images
                .map(
                  (image) => Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.file(
                  image,
                  width: 100,
                  height: 100,
                  fit: BoxFit.cover,
                ),
              ),
            )
                .toList(),
          ),
        ),
        SizedBox(height: 20),
      ],
    );
  }
}
