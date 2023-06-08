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
  /**
   * Reference to the 'churchManagement' collection in the Firestore database.
   *
   * The variable represents a reference to the 'churchManagement' collection in the Firestore database.
   * It is used to perform operations on the 'churchManagement' collection, such as querying, adding, or updating documents.
   * The reference is configured with a custom [User] converter that handles the serialization and deserialization of [User] objects.
   *
   * @see User
   */
  final usersRef = FirebaseFirestore.instance
      .collection('churchManagement')
      .withConverter<User>(
        // Configure the converter to handle serialization and deserialization of User objects
        fromFirestore: (snapshot, _) => User.fromJson(snapshot.data()!),
        toFirestore: (user, _) => user.toJson(),
      );

  /**
   * Retrieves user data from the database based on the provided email.
   *
   * The function queries the database to find a user document with the specified email.
   * If a matching user document is found, it retrieves the data and returns it as a [QueryResult<User>] object with a [QueryStatus.Successful] status.
   * If no user document is found, it returns a [QueryResult<User>] object with a [QueryStatus.Successful] status and null data.
   * If an error occurs during the query, it returns a [QueryResult<User>] object with a [QueryStatus.Failed] status and the error message.
   *
   * @param email The email of the user to retrieve.
   * @return A [QueryResult<User>] object with the result of the query.
   */
  Future<QueryResult<User>?> getUser({required String email}) async {
    QueryResult<User>? result;

    // Perform a query to find a user document with the provided email
    return await usersRef
        .where("email", isEqualTo: email)
        .get()
        .then((snapshot) {
      var userSnapShot = snapshot.docs;

      User? data;
      if (userSnapShot.isNotEmpty) {
        // Retrieve the user data from the first matching document
        data = userSnapShot.first.data();
        data.id = userSnapShot.first.id;
      }

      var status = QueryStatus.Successful;

      // Create a QueryResult object with the successful status and retrieved data
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

      // Create a QueryResult object with the failed status and error message
      result = QueryResult(status: status, error: errorMsg);

      return result;
    });
  }

  /**
   * Adds a financial management record to the specified collection in the Firestore database.
   *
   * The function creates a map containing the member's name, amount, and date.
   * It then uses the Firestore instance to access the 'churchManagement' collection, where it retrieves a document with the provided ID.
   * Next, it accesses the specified collection within that document and creates a new document with an automatically generated ID.
   * Finally, it sets the created document with the map containing the financial management record.
   *
   * @param name The name of the member associated with the financial management record.
   * @param amount The amount of the financial management record.
   * @param date The date of the financial management record.
   * @param collectionName The name of the collection where the financial management record will be added.
   * @param id The ID of the document within the 'churchManagement' collection.
   */
  Future<void> addFinancialManagement(
    String name,
    double amount,
    String date,
    String collectionName,
    String? id,
  ) async {
    var user = <String, dynamic>{
      "memberName": name,
      "amount": amount,
      "date": date,
    };

    await FirebaseFirestore.instance
        .collection("churchManagement")
        .doc(id)
        .collection(collectionName)
        .doc()
        .set(user);
  }

  Future<void> addEventManagement(
      String projectName,
      int amount,
      String startDate,
      String endingDate,
      String projectLeaders,
      String objectives,
      String collectionName,
      String? id) async {
    var user = <String, dynamic>{
      "projectName": projectName,
      "amount": amount,
      "startDate": startDate,
      "endingDate": endingDate,
      "projectLeaders": projectLeaders,
      "objectives": objectives,
    };
    await FirebaseFirestore.instance
        .collection("churchManagement")
        .doc(id)
        .collection(collectionName)
        .doc()
        .set(user);
  }

  Future<void> addEventManagementChildrenParty(
      int amount,
      String startDate,
      String description,
      String activity,
      String collectionName,
      String? id) async {
    var user = <String, dynamic>{
      "amount": amount,
      "startDate": startDate,
      "description": description,
      "activity": activity,
    };
    await FirebaseFirestore.instance
        .collection("churchManagement")
        .doc(id)
        .collection(collectionName)
        .doc()
        .set(user);
  }

  Future<void> addMembership(
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

  /**
   * Saves a user document to the 'churchManagement' collection in the Firestore database.
   *
   * The function takes a [User] object as a parameter and adds it to the 'churchManagement' collection in the Firestore database using the [usersRef] reference.
   * It returns a [QueryResult<User>?] object indicating the result of the operation.
   * If the user document is successfully added, a [QueryResult] object with a [QueryStatus.Successful] status is returned.
   * If an error occurs during the operation, a [QueryResult] object with a [QueryStatus.Failed] status and the error message is returned.
   *
   * @param user The user object to be saved.
   * @return A [QueryResult<User>?] object indicating the result of the operation.
   */
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

  /**
   * Updates a user document in the 'churchManagement' collection in the Firestore database.
   *
   * The function takes a [User] object as a parameter and updates the corresponding document in the 'churchManagement' collection using the [usersRef] reference.
   * It returns a [QueryResult<User>?] object indicating the result of the operation.
   * If the user document is successfully updated, a [QueryResult] object with a [QueryStatus.Successful] status is returned.
   * If an error occurs during the operation, a [QueryResult] object with a [QueryStatus.Failed] status and the error message is returned.
   *
   * @param user The user object containing the updated data.
   * @return A [QueryResult<User>?] object indicating the result of the operation.
   */
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
