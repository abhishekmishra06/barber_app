import 'package:flutter/material.dart';
import '../const/const.dart';

void showSnackBar(BuildContext context, {String message = ""}) {
  final snackBar = SnackBar(
    content: Text(
      message,
      style: const TextStyle(color: Colors.white, fontSize: 20),
    ),
    backgroundColor: yellow,
    behavior: SnackBarBehavior.floating,
    margin: EdgeInsets.only(
        bottom: MediaQuery.of(context).size.height - 100, left: 10, right: 10),
  );

  ScaffoldMessenger.of(context)
      .hideCurrentSnackBar(); // Hide any existing snack bars
  ScaffoldMessenger.of(context).showSnackBar(snackBar);
}

void showLogoutConfirmationDialog(BuildContext context, Function onLogout) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: const Text('Confirm Logout'),
        content: const Text("Are you sure you want to logout?"),
        actions: <Widget>[
          TextButton(
            onPressed: () {
              Navigator.of(context).pop(); // Close the dialog
            },
            child: const Text('Cancel'),
          ),
          TextButton(
            onPressed: () {
              onLogout();
              showSnackBar(message: "Logout Successful", context);
            },
            child: const Text('Logout'),
          ),
        ],
      );
    },
  );
}
