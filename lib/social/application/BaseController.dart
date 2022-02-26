import 'package:get/get.dart';
import 'package:glorycity/social/application/ApplicationService.dart';
import 'package:glorycity/social/media/UrlState.dart';
// import 'package:glorycity/social/media/UrlState.dart';

class BaseController extends GetxController{
late final ApplicationService _applicationService;
final _applicationStateStream = UrlState().obs;

UrlState get state => _applicationStateStream.value;

BaseController(this._applicationService);

  Future<void> socialFacebook(String url)async {
    final facebook = _applicationService.visitFacebook(url);
  }

  Future<void> socialYoutube(String url) async{
    final youtube = _applicationService.visitYoutube(url);
  }

  Future<void> visitWebsite(String url) async{
    final website = _applicationService.visitWebsite(url);
  }


}