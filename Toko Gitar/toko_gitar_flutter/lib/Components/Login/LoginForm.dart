
import 'package:flutter/material.dart';
import 'package:toko_gitar_flutter/Components/Register/Registrasi.dart';
import 'package:toko_gitar_flutter/Components/custom_surfix_icons.dart';
import 'package:toko_gitar_flutter/Components/default_button_custome_color.dart';
import 'package:toko_gitar_flutter/size_config.dart';
import 'package:toko_gitar_flutter/utils/constants.dart';

class SignInform extends StatefulWidget {
@override
_SignInform createState() => _SignInform();
}

class _SignInform extends State<SignInform> {
  final _formkey = GlobalKey<FormState>();
  String? username;
  String? password;
  bool? remember = false;

  TextEditingController txtUsername = TextEditingController(),
       txtPassword = TextEditingController();

FocusNode focusNode = new FocusNode();

  @override
  Widget build(BuildContext context) {
  return Form
    (child: Column(
      children: [
        buildUserName(),
        SizedBox(height: getProportionateScreenWidth(30)),
        buildPassword(), 
        SizedBox(height: getProportionateScreenWidth(30)),
        Row(
          children: [
            Checkbox(
          value: remember,  
          onChanged: (value){
           setState(() {
          remember = value;
          });
          }),
          Text("Tetap Masuk"),
          Spacer(),
          GestureDetector(
            onTap: () {},
            child: Text("Lupa Password",
             style: TextStyle(decoration: TextDecoration.underline),
            ),
          )
          ],
        ),
       
        Card(
          color: kPrimaryColor,
          elevation: 10,
          child:  InkWell(
            splashColor: kPrimaryLightColor,
            onTap: () {},
            child: Center(
              child: Text("masuk", style: TextStyle(fontSize: 25, color: kPrimaryLightColor),),
            )
          )
        ),
     
      SizedBox(height: 20,
      ),
            GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, RegisterScreen.routeName);
            },
            child: Text(
              "Belum Punya Akun ? Daftar Disini",
               style: TextStyle(decoration: TextDecoration.underline),
          ),
         )
       ],
     ),
  );
}

TextFormField buildUserName () {
  return TextFormField(
    controller: txtUsername,
    keyboardType: TextInputType.text,
    style: mTitleStyle,
    decoration: InputDecoration(
      labelText: 'Username',
      hintText: 'Masukan Username Anda',
      labelStyle: TextStyle(
        color: focusNode.hasFocus ? mSubtitleColor : kPrimaryColor),
      floatingLabelBehavior: FloatingLabelBehavior.always,
      suffixIcon: CustomSurffixIcon(
        svgIcon: "assets/icons/User.svg",
       )), // CustomSurffixIcon
  );
}

TextFormField buildPassword() {
  return TextFormField(
    controller: txtPassword,
    obscureText: true,
    style: mTitleStyle,
    decoration: InputDecoration(
      labelText: 'Password',
      hintText: 'Masukan Password Anda',
      labelStyle: TextStyle(
        color: focusNode.hasFocus ? mSubtitleColor : kPrimaryColor),
      floatingLabelBehavior: FloatingLabelBehavior.always,
      suffixIcon: CustomSurffixIcon(
        svgIcon: "assets/icons/User.svg",
       )), // CustomSurffixIcon
  );
}
}