// import 'dart:js';
// import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:toko_gitar_flutter/size_config.dart';
import 'package:toko_gitar_flutter/utils/constants.dart';

class RegisterScreen extends StatelessWidget {
static String routeName = "/halamanRegiter";
@override
Widget build(BuildContext context) {
  return Scaffold(
    body: Container(
      color: kPrimaryColor,
      padding: EdgeInsets.all(20.0),
      child: ListView(
        children: <Widget>[
          Center(
            child: Column(
              children: <Widget>[
                _titleDesc(),
                _textField(),
                _buildButton(context)
              ],
            ),
          )
        ],
      ),
    )
  );
}

Widget _titleDesc(){
  return Column(
    children: <Widget>[
      Padding(
        padding: EdgeInsets.only(top: 16.0),
       ),
      Text(
        "Registrasi",
        style: TextStyle(
          color: kPrimaryLightColor,
          fontSize: 19.0,
        ),
      ),
     Padding (
      padding:  EdgeInsets.only(top: 12.0),
     ),  
    ],
  );
}


Widget _textField() {
  return Column(
    children: <Widget>[
      Padding(
      padding: EdgeInsets.only(top: 12.0),
      ),
  TextFormField(
    decoration: const InputDecoration(
      border: UnderlineInputBorder(),
      enabledBorder: UnderlineInputBorder(
        borderSide: BorderSide(
          color: kPrimaryLightColor,
          width: 3.0,
        )
      ),
      hintText: "Masukan UserName Anda ",
      hintStyle: TextStyle(color: kPrimaryLightColor),
    ),
    style: TextStyle(color: kPrimaryLightColor),
    autofocus: false,
  ),
    Padding(
      padding: EdgeInsets.only(top: 12.0),
    ),
    TextFormField(
      decoration:  const InputDecoration(
        border: UnderlineInputBorder(),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: kPrimaryLightColor,
            width: 1.5,
          ),
        ),


focusedBorder: UnderlineInputBorder(
  borderSide: BorderSide(
    color: kPrimaryLightColor,
    width: 3.0,
  ),
),
  hintText: "Masukan Password Anda ",
  hintStyle: TextStyle(color: kPrimaryLightColor),
      ),
  style: TextStyle(color: kPrimaryLightColor),
  obscureText: true,
  autofocus: false,
    ),
    Padding(
      padding: EdgeInsets.only(top: 12.0)
    ),
    
    TextFormField(
      decoration: const InputDecoration(
        border: UnderlineInputBorder(),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: kPrimaryLightColor,
            width: 1.5,
          ),
        ),
      focusedBorder: UnderlineInputBorder(
        borderSide: BorderSide(
          color: kPrimaryLightColor,
          width: 3.0,
        ),
      ),
      hintText: "Masukan Nama Lengkap ",
      hintStyle: TextStyle(color: kPrimaryLightColor),
      ),
      style: TextStyle(color: kPrimaryLightColor),
      obscureText: true,
      autofocus: false,
      
    ),
    Padding(
      padding: EdgeInsets.only(top: 12.0) 
    ),
    TextFormField(
      decoration: const InputDecoration(
        border: UnderlineInputBorder(),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: kPrimaryLightColor,
            width: 1.5,
          ),
        ),
      focusedBorder: UnderlineInputBorder(
        borderSide: BorderSide(
          color: kPrimaryLightColor,
          width: 3.0,
        ),
      ),
      hintText: "Masukan Email Anda",
      hintStyle: TextStyle(color: kPrimaryLightColor),
      ),
      style: TextStyle(color: kPrimaryLightColor),
      obscureText: true,
      autofocus: false,
      
    ),
    
    ],
  );
}

Widget _buildButton(BuildContext){
  return Column(
    children: <Widget>[
      Padding(
        padding: EdgeInsets.only(top: 16.0),
      ),
    Card(
          color: kPrimaryColor,
          elevation: 10,
          child:  InkWell(
            splashColor: kPrimaryLightColor,
            onTap: () {},
            child: Center(
              child: Text("Daftar", style: TextStyle(fontSize: 20, color: kPrimaryLightColor),),
            )
          )
        ),
Padding(
  padding: EdgeInsets.only(top: 10.0), 
),
 Text(
  'atau',
  style: TextStyle(
    color: kPrimaryLightColor,
    fontSize: 18.0,

  ),
   ),
   TextButton(
    child: Text(
      'Sudah Punya Akun?',
      style: TextStyle(color: kPrimaryLightColor,
      fontSize: 17.0),
    ), 
   onPressed: () {
     
   },
   ),
],
);
}
}