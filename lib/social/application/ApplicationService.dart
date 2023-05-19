import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

abstract class ApplicationService extends GetxService{
  Future<void> visitFacebook(String url);
  Future<void> visitYoutube(String url);
  Future<void> visitWebsite(String url);
}

class UserService extends ApplicationService{
  @override
  Future<void> visitFacebook(String url) async {
    if(!await launch(url)) throw "Could not launch {$url}";

  }

  @override
  Future<void> visitYoutube(String url) async {
    if(!await launch(url)) throw "Could not launch {$url}";
  }

  @override
  Future<void> visitWebsite(String url) async {
    if(!await launch(url)) throw "Could not launch {$url}";
  }

}

class UrlException implements Exception{
  final String message;

  UrlException({this.message = "Please check your url"});
}