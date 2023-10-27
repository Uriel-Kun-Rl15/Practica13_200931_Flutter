import 'package:flutter/material.dart';
import 'package:movieapp_20091/common/MediaProvider.dart';
import 'package:movieapp_20091/model/Cast.dart';

class CastController extends StatefulWidget{
  final MediaProvider provider;
  final int mediaId;
  
  CastController(this.provider, this.mediaId);
  @override
  _CastControllerState createState ()=> new _CastControllerState();
}

class _CastControllerState extends State<CastController>{
  final List<Cast> _casts = [];
  void loadCast() async{
    var results = await widget.provider.fetchCast(widget.mediaId);

    setState(() {
      _casts.addAll(results);
    });
  }

  @override               
  Widget build (BuildContext context){
    return new Container(

    );
  }
}