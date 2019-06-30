import 'package:flutter/material.dart';
import 'package:player_app/home_page/home_page.dart';


void main(){
  runApp(MaterialApp(
      home: HomePage(),
      theme: ThemeData(
        primarySwatch: Colors.green
      ),
  ));
}