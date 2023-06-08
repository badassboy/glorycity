import 'package:flutter/foundation.dart';
import 'package:glorycity/firebase_service.dart';
import 'package:glorycity/user.dart';
import 'package:shared_preferences/shared_preferences.dart';

class UserProvider extends ChangeNotifier {
  final SharedPreferences? preferences;
  final firebaseService = FirebaseServices();

  /**
   * UserProvider is a class responsible for providing user-related data and functionality.
   *
   * The constructor of the UserProvider class takes a [preferences] object as a parameter.
   * The [preferences] object is used to retrieve the stored user data from shared preferences.
   * If the stored user data exists, it is deserialized into a [User] object and assigned to the [_appUser] private variable.
   * If the stored user data is empty or doesn't exist, the [_appUser] private variable is set to null.
   */
  UserProvider({required this.preferences}) {
    var appUserString = preferences?.getString("app_user") ?? '';
    _appUser = appUserString.isNotEmpty ? User.fromString(appUserString) : null;
  }

  User? _appUser;
  User? get appUser => _appUser;

  /**
   * Sets the current app user and updates the stored user data in shared preferences.
   *
   * The `appUser` setter takes a [User?] object as a parameter and assigns it to the [_appUser] private variable.
   * After updating the `_appUser`, it notifies the listeners by calling `notifyListeners()`.
   * It also updates the stored user data in shared preferences using the `setString()` method on the [preferences] object.
   * The user data is stored with the key "app_user".
   * If the provided [User?] object is not null, it is converted to a string using the `toString()` method.
   * If the provided [User?] object is null, an empty string is used as the value.
   */
  set appUser(User? a) {
    _appUser = a;
    notifyListeners();

    preferences?.setString(
      "app_user",
      a?.toString() ?? '',
    );
  }

  /**
   * Retrieves a user document from the Firestore database based on the provided email.
   *
   * The function takes a [String] parameter [email] representing the email of the user to retrieve.
   * It calls the [getUser] method on the [firebaseService] instance, passing the [email] parameter.
   * The [getUser] method returns a [QueryResult<User>?] object indicating the result of the operation.
   *
   * If the [QueryResult] object has a [QueryStatus.Successful] status and the [data] property is not null,
   * the app user is updated by assigning the [data] property to the [appUser] setter.
   *
   * The function returns the [QueryResult<User>?] object received from the [getUser] method.
   */
  Future<QueryResult<User>?>? getUser({required String email}) async {
    var result = await firebaseService.getUser(email: email);

    if (result?.status == QueryStatus.Successful && result?.data != null) {
      appUser = result?.data;
    }

    return result;
  }

  /**
   * Updates a user document in the Firestore database with the provided user data.
   *
   * The function takes a [User] parameter [user] representing the updated user data.
   * It calls the [updateUser] method on the [firebaseService] instance, passing the [user] parameter.
   * The [updateUser] method returns a [QueryResult<User>?] object indicating the result of the operation.
   *
   * If the [QueryResult] object has a [QueryStatus.Successful] status, the app user is refreshed by calling the [getUser] function
   * with the email of the updated user as a parameter. This ensures that the app user's data is up to date.
   *
   * The function returns the [QueryResult<User>?] object received from the [updateUser] method.
   */
  Future<QueryResult<User>?>? updateUser({required User user}) async {
    var result = await firebaseService.updateUser(user: user);
    if (result?.status == QueryStatus.Successful) {
      await getUser(email: user.email ?? "");
    }
    return result;
  }
}
