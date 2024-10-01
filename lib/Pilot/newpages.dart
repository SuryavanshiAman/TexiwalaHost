import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:provider/provider.dart';
import 'package:taxiwalahost/Constant/ConstantButton/SmallButton.dart';
import 'package:taxiwalahost/Constant/ConstantTextfield/ConstantImagepicker.dart';
import 'package:taxiwalahost/Constant/ConstantTextfield/CustomTextfield.dart';
import 'package:taxiwalahost/Provider/send_pilot_document_provider.dart';
import 'package:taxiwalahost/Route/RouteNames.dart';
import 'package:taxiwalahost/Theme/ConstantColor.dart';
import 'package:taxiwalahost/Theme/fontStyle.dart';

class Pilot extends StatefulWidget {
  const Pilot({super.key});

  @override
  State<Pilot> createState() => _PilotState();
}

class _PilotState extends State<Pilot> {
  String myData = '0';
  void _updateImage(ImageSource imageSource) async {
    String? imageData =
        await ChooseImage.chooseImageAndConvertToString(imageSource);
    if (imageData != null) {
      setState(() {
        myData = imageData;
      });
    }
  }

  TextEditingController firstName = TextEditingController();
  TextEditingController lastName = TextEditingController();
  TextEditingController phone = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController vehicleModel = TextEditingController();
  TextEditingController vehicleNumber = TextEditingController();
  TextEditingController vehicleDesc = TextEditingController();
  TextEditingController contectOne = TextEditingController();
  TextEditingController contectTwo = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final pilot = Provider.of<PilotDocumentProvider>(context);
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        automaticallyImplyLeading: false,
        backgroundColor: Color(0xFFFFFFFF),
        title: Text('Verification', style: robotoBlackProfile),
      ),
      backgroundColor: Color(0xFFF6F8FA),
      body: ListView(
        shrinkWrap: true,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                SizedBox(
                  height: height * 0.02,
                ),
                Card(
                    margin: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 15),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Color(0xFFFFFFFF),
                          borderRadius: BorderRadius.all(Radius.circular(12))),
                      child: Padding(
                        padding: const EdgeInsets.all(5),
                        child: Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(
                                  top: height * 0.02, right: width * 0.45),
                              child: Text(
                                'Driver details',
                                style: robotoMediumBlack,
                              ),
                            ),
                            SizedBox(
                              height: height * 0.02,
                              width: width * 0.99,
                            ),
                            Constant_text_field(
                              controller: firstName,
                              keyboardType: TextInputType.name,
                              hintText: 'First Name',
                              filled: true,
                              height: height * 0.07,
                              width: width * 0.8,
                              fillColor: ColorConstant.WHITE_BACKGROUND,
                              validator: Validate_Name,
                              borderColor: Colors.white,
                            ),
                            Constant_text_field(
                              controller: lastName,
                              keyboardType: TextInputType.name,
                              hintText: 'Last Name',
                              filled: true,
                              height: height * 0.07,
                              width: width * 0.8,
                              fillColor: ColorConstant.WHITE_BACKGROUND,
                              validator: Validate_Last_Name,
                              borderColor: Colors.white,
                            ),
                            Constant_text_field(
                              controller: phone,
                              hintText: 'Phone',
                              keyboardType: TextInputType.number,
                              maxLength: 10,
                              filled: true,
                              height: height * 0.07,
                              width: width * 0.8,
                              fillColor: ColorConstant.WHITE_BACKGROUND,
                              validator: Validate_Login,
                              borderColor: Colors.white,
                            ),
                            Constant_text_field(
                              controller: email,
                              keyboardType: TextInputType.name,
                              hintText: 'Email',
                              filled: true,
                              height: height * 0.07,
                              width: width * 0.8,
                              fillColor: ColorConstant.WHITE_BACKGROUND,
                              validator: Validate_Email,
                              borderColor: Colors.white,
                            ),
                          ],
                        ),
                      ),
                    )),
                Card(
                    margin: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 15),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Color(0xFFFFFFFF),
                          borderRadius: BorderRadius.all(Radius.circular(12))),
                      child: Padding(
                        padding: const EdgeInsets.all(5),
                        child: Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(
                                  top: height * 0.02, right: width * 0.45),
                              child: Text(
                                'Vehicle details',
                                style: robotoMediumBlack,
                              ),
                            ),
                            SizedBox(
                              height: height * 0.02,
                              width: width * 0.99,
                            ),
                            Constant_text_field(
                              controller: vehicleModel,
                              keyboardType: TextInputType.name,
                              hintText: 'Vehicle model',
                              filled: true,
                              height: height * 0.07,
                              width: width * 0.8,
                              fillColor: ColorConstant.WHITE_BACKGROUND,
                              validator: Validate_Model,
                              borderColor: Colors.white,
                            ),
                            Constant_text_field(
                              controller: vehicleNumber,
                              keyboardType: TextInputType.name,
                              hintText: 'Vehicle number',
                              filled: true,
                              height: height * 0.07,
                              width: width * 0.8,
                              fillColor: ColorConstant.WHITE_BACKGROUND,
                              validator: Validate_Vehiclenumber,
                              borderColor: Colors.white,
                            ),
                            Constant_text_field(
                              contentPadding: EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 8),
                              controller: vehicleDesc,
                              hintText: 'Vehicle description',
                              filled: true,
                              // height: height*0.3,
                              minLines: 6,
                              width: width * 0.8,
                              fillColor: ColorConstant.WHITE_BACKGROUND,
                              validator: Validate_Descrtiption,
                              borderColor: Colors.white,
                            ),
                          ],
                        ),
                      ),
                    )),
                Card(
                    margin: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 15),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Color(0xFFFFFFFF),
                          borderRadius: BorderRadius.all(Radius.circular(12))),
                      child: Padding(
                        padding: const EdgeInsets.all(5),
                        child: Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(
                                  top: height * 0.02, right: width * 0.35),
                              child: Text(
                                'Emergency contact',
                                style: robotoMediumBlack,
                              ),
                            ),
                            SizedBox(
                              height: height * 0.02,
                              width: width * 0.99,
                            ),
                            Constant_text_field(
                              controller: contectOne,
                              hintText: 'Contact 1',
                              keyboardType: TextInputType.number,
                              maxLength: 10,
                              filled: true,
                              height: height * 0.07,
                              width: width * 0.8,
                              fillColor: ColorConstant.WHITE_BACKGROUND,
                              validator: Validate_contact1,
                              borderColor: Colors.white,
                            ),
                            Constant_text_field(
                              controller: contectTwo,
                              hintText: 'Contact 2',
                              keyboardType: TextInputType.number,
                              maxLength: 10,
                              filled: true,
                              height: height * 0.07,
                              width: width * 0.8,
                              fillColor: ColorConstant.WHITE_BACKGROUND,
                              validator: Validate_contact2,
                              borderColor: Colors.white,
                            ),
                          ],
                        ),
                      ),
                    )),

                _buildImageSection('Vehicle', _vehicleImages),
                _buildImageSection('Vehicle Rc', _RcImages),
                _buildImageSection('Vehicle Insurance', _InsuranceImages),
                _buildImageSection('Passbook', _licenceImages),

                SizedBox(
                  height: height * 0.01,
                ),
                ColorButton(
                  onTap: () {
                    pilot.PilotDocument(
                        context,
                        firstName.text,
                        lastName.text,
                        phone.text,
                        email.text,
                        vehicleModel.text,
                        vehicleNumber.text,
                        vehicleDesc.text,
                        _vehicleImages.toString(),
                        _RcImages.toString(),
                        _InsuranceImages.toString(),
                        _licenceImages.toString(),
                        contectOne.text,
                        contectTwo.text);
                    // Navigator.pushNamed(
                    //     context, RoutesName.Vehiclevarification);
                  },
                  text: 'Submit',
                  btnColor: ColorConstant.Black_COLOR,
                  textColor: ColorConstant.WHITE_COL0R,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  String? Validate_Name(String? value) {
    if (value!.length < 3) {
      return 'Name must be more than 2 character';
    } else {
      return null;
    }
  }

  String? Validate_Last_Name(String? value) {
    if (value!.length < 3) {
      return 'Name must be more than 2 character';
    } else {
      return null;
    }
  }

  String? Validate_Login(String? value) {
    if (value!.length < 3) {
      return 'Name must be more than 2 character';
    } else {
      return null;
    }
  }

  String? Validate_Email(String? value) {
    if (value!.length < 3) {
      return 'Name must be more than 2 character';
    } else {
      return null;
    }
  }

  String? Validate_Model(String? value) {
    if (value!.length < 3) {
      return 'Name must be more than 2 character';
    } else {
      return null;
    }
  }

  String? Validate_Vehiclenumber(String? value) {
    if (value!.length < 3) {
      return 'Name must be more than 2 character';
    } else {
      return null;
    }
  }

  String? Validate_Descrtiption(String? value) {
    if (value!.length < 3) {
      return 'Name must be more than 2 character';
    } else {
      return null;
    }
  }

  String? Validate_contact1(String? value) {
    if (value!.length < 3) {
      return 'Name must be more than 2 character';
    } else {
      return null;
    }
  }

  String? Validate_contact2(String? value) {
    if (value!.length < 3) {
      return 'Name must be more than 2 character';
    } else {
      return null;
    }
  }

  List<String> _vehicleImages = [];
  List<String> _RcImages = [];
  List<String> _InsuranceImages = [];
  List<String> _licenceImages = [];
  Future<void> _pickImages(String category) async {
    print("my cat");
    print(category);
    XFile? pickedImage =
        await ImagePicker().pickImage(source: ImageSource.gallery);
    if (pickedImage != null) {
      String selectedImage = base64Encode(await pickedImage.readAsBytes());
      print(selectedImage);
      setState(() {
        if (category == 'Vehicle') {
          print("aadhar image selected");
          _vehicleImages.clear(); // Clear the list before adding a new image
          _vehicleImages.add(selectedImage);
        } else if (category == 'Vehicle Rc') {
          print("vehicle rc here");
          _RcImages.clear();
          _RcImages.add(selectedImage);
        } else if (category == 'Vehicle Insurance') {
          print("vehicle inc here");
          _InsuranceImages.clear();
          _InsuranceImages.add(selectedImage);
        } else if (category == 'Licence') {
          print("pass here");
          _licenceImages.clear();
          _licenceImages.add(selectedImage);
        }
      });
    }
  }

  // void _settingModalBottomSheet(context) {
  //   final heights = MediaQuery.of(context).size.height;
  //   final widths = MediaQuery.of(context).size.width;
  //   showModalBottomSheet(
  //       shape: const RoundedRectangleBorder(
  //         borderRadius: BorderRadius.only(
  //             topLeft: Radius.circular(15), topRight: Radius.circular(15)),
  //       ),
  //       context: context,
  //       builder: (BuildContext bc) {
  //         return SizedBox(
  //           height: heights / 7,
  //           child: Padding(
  //             padding: EdgeInsets.fromLTRB(
  //                 widths / 12, 0, widths / 12, heights / 60),
  //             child: Row(
  //               crossAxisAlignment: CrossAxisAlignment.center,
  //               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  //               children: [
  //                 InkWell(
  //                   onTap: () {
  //                     _pickImages(ImageSource.camera.toString());
  //                   },
  //                   child: Container(
  //                     height: heights / 20,
  //                     width: widths / 2.7,
  //                     decoration: BoxDecoration(
  //                       // color: Colors.blue,
  //                         border: Border.all(color: ColorConstant.Green_BACKGROUND, width: 2),
  //                         borderRadius: BorderRadius.circular(10)),
  //                     child: const Center(
  //                         child: Text(
  //                           "Camera",
  //                           style: TextStyle(color: ColorConstant.Green_BACKGROUND),
  //                         )),
  //                   ),
  //                 ),
  //                 InkWell(
  //                   onTap: () {
  //                     _pickImages(ImageSource.gallery.toString());
  //                   },
  //                   child: Container(
  //                     height: heights / 20,
  //                     width: widths / 2.7,
  //                     decoration: BoxDecoration(
  //                         color: ColorConstant.Green_BACKGROUND,
  //                         borderRadius: BorderRadius.circular(10)),
  //                     child: const Center(
  //                         child: Text(
  //                           "Gallery",
  //                           style: TextStyle(color:ColorConstant.WHITE_COL0R),
  //                         )),
  //                   ),
  //                 ),
  //               ],
  //             ),
  //           ),
  //         );
  //       });
  // }
  Widget _buildImageSection(String category, List<String> images) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0, right: 8),
      child: Column(
        children: [
          // Text(category),
          // SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '$category Photo',
                style: robotoMediumBlack,
              ),
              IconButton(
                  onPressed: () => _pickImages(category),
                  icon: Icon(
                    Icons.add_circle,
                    color: ColorConstant.Black_COLOR,
                    size: 25,
                  )),
            ],
          ),
          Divider(
            height: 1,
          )
        ],
      ),
    );
  }
}
