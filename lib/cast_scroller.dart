import 'package:flutter/material.dart';
import 'package:movieapp_20091/common/MediaProvider.dart';

class CastController extends StatefulWidget{
  final MediaProvider provider;
  final int mediaId;
  CastController(this.provider, this.mediaId);
  @override
  _CastControllerState createState ()=> new _CastControllerState();
}

class _CastControllerState extends State<CastController>{
  @override               
  Widget build (BuildContext context){
    return new Container(

    );
  }
}