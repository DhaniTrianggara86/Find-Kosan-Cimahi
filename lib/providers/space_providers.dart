import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_basic/models/space.dart';
import 'package:http/http.dart' as http;

class SpaceProvider extends ChangeNotifier{


  getRecommendedSpaces() async{
    var result =
    await http.get(Uri.parse("http://bwa-cozy.herokuapp.com/recommended-spaces"));

    print(result.statusCode);
    print(result.body);


    if(result.statusCode == 200){
     final data = json.decode(result.body).cast<Map<String, dynamic>>();

     List<Space> spaces = data.map((item) => Space.fromJson(item)).toList();
      return spaces;

    }else{
      return  <Space> [];
    }
  }
}