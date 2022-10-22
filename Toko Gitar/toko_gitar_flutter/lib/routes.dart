
import 'package:flutter/material.dart';
import 'package:toko_gitar_flutter/Components/Register/Registrasi.dart';
import 'package:toko_gitar_flutter/Screens/Login/LoginScreens.dart';

final Map<String, WidgetBuilder> routes = {
  LoginScreen.routeName: (context) => LoginScreen(),
  RegisterScreen.routeName: (context) => RegisterScreen()
};