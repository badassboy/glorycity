import 'package:get/get.dart';
import 'package:glorycity/social/application/ApplicationService.dart';
import 'package:glorycity/social/application/BaseController.dart';
import 'package:glorycity/website/webstate.dart';

class WebController extends GetxController{
  final BaseController _baseController = Get.find();
  final _webStateStream = WebState().obs;
  WebState get state => _webStateStream.value;

  void visitWebsite(String url) async{
    try{
      await _baseController.visitWebsite(url);
      _webStateStream.value = WebState();
    }on UrlException catch(e){
      _webStateStream.value = nonVisited(e.message);
    }

  }
}