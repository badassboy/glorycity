// import 'package:get/get.dart';
// import 'package:glorycity/membership/MemberState.dart';
// import 'package:glorycity/social/application/ApplicationService.dart';
// import 'package:glorycity/social/application/BaseController.dart';
//
// class MembershipController  extends GetxController{
//   final BaseController _baseController = Get.find();
//   final _membershipStream = MemberState().obs;
//   MemberState get state => _membershipStream.value;
//
//   void MembershipRegistration(String firstName,String lastName,String age,String email,String phone,String address,String city) async{
//     try{
//       await _baseController.MemberRegistration(firstName, lastName, age, email, phone, address, city);
//       _membershipStream.value = MemberState();
//     }on UrlException catch(e){
//       _membershipStream.value = MembershipFailure(e.message);
//     }
//   }
//
// }
