import 'package:college/Screen/FirstScreen.dart';
import 'package:college/Screen/SecondScreen.dart';
import'package:flutter/material.dart';


void main(){
  runApp(College());

}
class College extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home:FirstScreen(),
    );
  }
}




