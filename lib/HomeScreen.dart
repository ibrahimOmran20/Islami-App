import 'package:contact_screen/mytextField.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget{
  static const String routeName="Home Screen";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contacts Screen'),
        centerTitle: true,
        titleTextStyle: TextStyle(fontSize: 20),

      ),
      body: Column(
        children: [
         MyTextField(label: 'enter your name here',hint: 'your name',
           icono: Icon(Icons.drive_file_rename_outline ,color: Colors.blue)),
          MyTextField(label: 'enter your phone number', hint: 'your phone',
           icono:Icon(Icons.phone ,color: Colors.blue,) ),
          Row(
            children: [
              Expanded(
                child: ElevatedButton(onPressed: (){}, child:
                Text('Add',style: TextStyle(fontSize: 20,color:Colors.black)),
                  style: ButtonStyle() ),
              ),
              Expanded(
                child: ElevatedButton(onPressed: (){}, child:
                Text('Delete',style: TextStyle(fontSize: 20,color: Colors.black)),
                  style: ButtonStyle(
                      backgroundColor: MaterialStateColor.resolveWith((states) => Colors.red)),
                   
                ),
    )

            ],
          )
            ]
      ),

    );
  }

}