import 'package:movieapp_20091/model/Media.dart';
import 'package:movieapp_20091/common/HttpHandler.dart';
import 'dart:async';

abstract class MediaProvider {
  Future<List<Media>> fetchMedia(String category);
  Future<List<Media>> fetchCast(int mediaId);
}

class MediaPrvider extends MediaProvider {
  HttpHandler _client = HttpHandler.get();
  @override
  Future<List<Media>> fetchMedia(String category) {
    return _client.fetchMovies(category: category);
  }
  
  @override
  Future<List<Media>> fetchCast(int mediaId) {
    return _client.fetchCreditMovies(mediaId);
  }
}

class ShowProvider extends MediaProvider {
  HttpHandler _client = HttpHandler.get();
  @override
  Future<List<Media>> fetchMedia(String category) {
    return _client.fetchShow(category: category);
  }
  
  @override
  Future<List<Media>> fetchCast(int mediaId) {
    return _client.fetchCreditShows(mediaId);
    }
}
