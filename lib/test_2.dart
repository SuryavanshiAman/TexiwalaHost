import 'dart:io';

import 'package:flutter/material.dart';

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
//     print(adharImages);
//     print("adharImages");
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
//
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
//
//
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

/// latest
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
/// ff


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