import 'package:get/get.dart';
import 'package:glorycity/social/application/ApplicationService.dart';
import 'package:glorycity/social/application/BaseController.dart';
import 'package:glorycity/social/media/UrlState.dart';

class SocialController extends GetxController{
  final BaseController _baseController = Get.find();
  final _socialStateStream = UrlState().obs;
  UrlState get state => _socialStateStream.value;

  void visitYoutube(String url) async{
    try{
      await _baseController.socialFacebook(url);
      _socialStateStream.value= UrlState();
    }on UrlException catch(e){
      _socialStateStream.value = badNavigation(e.message);
    }
  }

  void visitFacebook(String url) async{
    try{
      await _baseController.socialFacebook(url);
      _socialStateStream.value= UrlState();
    }on UrlException catch(e){
      _socialStateStream.value = badNavigation(e.message);
    }
  }



}