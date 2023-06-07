import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:glorycity/user.dart';

enum QueryStatus { Successful, Failed }

class QueryResult<T> {
  QueryStatus? status;
  T? data;
  dynamic error;

  QueryResult({this.status, this.data, this.error});
}

abstract class Serializable {
  Map<String, dynamic> toJson();
}

class FirebaseServices {
  final usersRef = FirebaseFirestore.instance
      .collection('churchManagement')
      .withConverter<User>(
        fromFirestore: (snapshot, _) => User.fromJson(snapshot.data()!),
        toFirestore: (user, _) => user.toJson(),
      );

  Future<QueryResult<User>?> getUser({required String email}) async {
    QueryResult<User>? result;

    //
    return await usersRef
        .where("email", isEqualTo: email)
        .get()
        .then((snapshot) {
      var userSnapShot = snapshot.docs;

      User? data;
      if (userSnapShot.isNotEmpty) {
        data = userSnapShot.first.data();
        data.id = userSnapShot.first.id;
      }

      var status = QueryStatus.Successful;

      result = QueryResult(
        status: status,
        data: data,
      );
      return result;
    }).catchError((error) {
      if (kDebugMode) {
        print("Failed to get user: $error");
      }
      var status = QueryStatus.Failed;
      var errorMsg = error;

      result = QueryResult(status: status, error: errorMsg);

      return result;
    });

    // User? user = userSnapShot.first.data();

    // return result;
  }

  Future<void> addFinancialManagement(String name, double amount, String date,
      String collectionName, String? id) async {
    var user = <String, dynamic>{
      "memberName": name,
      "amount": amount,
      "date": date
    };
    await FirebaseFirestore.instance
        .collection("churchManagement")
        .doc(id)
        .collection(collectionName)
        .doc()
        .set(user);
  }

  Future<void> addMember(
      String name,
      int number,
      int age,
      String occupation,
      String location,
      String hometown,
      int referralNumber,
      String collectionName,
      String? id) async {
    var user = <String, dynamic>{
      "memberName": name,
      "number": number,
      "age": age,
      "occupation": occupation,
      "location": location,
      "hometown": hometown,
      "referralNumber": referralNumber,
    };
    await FirebaseFirestore.instance
        .collection("churchManagement")
        .doc(id)
        .collection(collectionName)
        .doc()
        .set(user);
  }

  Future<void> addFinancialManagement_2(
      double amount, String date, String collectionName, String? id) async {
    var user = <String, dynamic>{"amount": amount, "date": date};
    await FirebaseFirestore.instance
        .collection("churchManagement")
        .doc(id)
        .collection(collectionName)
        .doc()
        .set(user);
  }

  Future<QueryResult<User>?>? saveUser({required User user}) async {
    QueryResult<User>? result;

    await usersRef.add(user).then((value) {
      result = QueryResult(status: QueryStatus.Successful);
    }).catchError((error) {
      if (kDebugMode) {
        print("Failed to add user: $error");
      }
      result?.status = QueryStatus.Failed;
      result?.error = error;
    });

    return result;
  }

  Future<QueryResult<User>?> updateUser({required User user}) async {
    QueryResult<User>? result;
    await usersRef.doc(user.id).update(user.toJson()).then((value) {
      result = QueryResult(status: QueryStatus.Successful);
    }).then((result) {
      result = QueryStatus.Successful;
    }).catchError((error) {
      if (kDebugMode) {
        print("Failed to update user: $error");
      }
      result?.status = QueryStatus.Failed;
      result?.error = error;
    });

    return result;
  }
}
