import 'package:get/get.dart';
import 'package:glorycity/social/application/ApplicationService.dart';
import 'package:glorycity/social/media/UrlState.dart';
// import 'package:glorycity/social/media/UrlState.dart';
import 'package:http/http.dart' as http;


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

  Future<void> MemberRegistration(String firstName,String lastName,String age, String email,String phone,String address,String city) async{
    Uri url  = Uri.parse("https://web.facebook.com");

      var memberDetails = await http.post(
          url,
        body: {
            "firstName":firstName,
            "lastName":firstName,
            "firstName":firstName,
            "Age":firstName,
            "Email":firstName,
            "Phone":phone,
            "Address":address,
            "City":city,

        }
      );

      print(memberDetails.body);


  }


}