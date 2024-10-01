import 'package:flutter/material.dart';
import 'package:intl/intl.dart';



class Time extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _Time();
  }
}

class _Time extends State<Time>{
  TextEditingController timeinput = TextEditingController();
  //text editing controller for text field

  @override
  void initState() {
    timeinput.text = ""; //set the initial value of text field
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: timeinput, //editing controller of this TextField
      decoration: InputDecoration(
          hintText: "Time",
          contentPadding: EdgeInsets.all(10),
          border: InputBorder.none,
          suffixIcon: Icon(Icons.arrow_drop_down_sharp,size: 30,)
      ),

      readOnly: true,
      onTap: () async {
        TimeOfDay? pickedTime =  await showTimePicker(
          initialTime: TimeOfDay.now(),
          context: context,
        );

        if(pickedTime != null ){
          print(pickedTime.format(context));   //output 10:51 PM
          DateTime parsedTime = DateFormat.jm().parse(pickedTime.format(context).toString());
          print(parsedTime); //output 1970-01-01 22:53:00.000
          String formattedTime = DateFormat('HH:mm:ss').format(parsedTime);
          print(formattedTime); //output 14:59:00
          setState(() {
            timeinput.text = formattedTime;
          });
        }else{
          print("Time is not selected");
        }
      },
    );
  }
}