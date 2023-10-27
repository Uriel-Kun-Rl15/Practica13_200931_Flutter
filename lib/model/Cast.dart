import 'package:movieapp_20091/model/Media.dart';
import 'package:movieapp_20091/common/Util.dart';
import 'package:movieapp_20091/common/MediaProvider.dart';

class Cast{
  int id;
  String name;
  String profilePath;

  String getCastUrl()=> getMediumPictureUrl(profilePath);
  factory Cast(Map jsonMap, MediaType mediaType) {
    try {
      return new Cast.deserialize(jsonMap, mediaType);
    } catch (ex) {
      throw ex;
    }
  }

  Cast.deserialize(Map jsonMap, MediaType mediaType) :
  id =jsonMap["cast_id"].toInt(),
  name = jsonMap["cast_id"],
  profilePath = jsonMap["profile_path"];

  
}