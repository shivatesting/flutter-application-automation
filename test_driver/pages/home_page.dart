
import 'package:flutter_driver/flutter_driver.dart';

class HomePage {
  // Define a finder for the counter text widget using a value key
  final txtCounter = find.byValueKey('counter');
  
  // Define a finder for the increment button using its tooltip
  final btnIncrement = find.byTooltip('Increment');

  final btnAdd = find.byValueKey("add");
  final btnSubtract = find.byValueKey("subtract");
  final txtAlert = find.byValueKey("alert_text");
  final btnClose = find.byValueKey("close_button");

  // Instance of FlutterDriver to interact with the app
  FlutterDriver driver;

  // Constructor to initialize the HomePage with a FlutterDriver instance
  HomePage(this.driver);

  // Method to get the current value of the counter as a String
  Future<String> getCounterValue() async {
    return await driver.getText(txtCounter);
  }

  // Method to simulate a tap on the increment button
  Future<void> clickBtnPlus() async {
    return await driver.tap(btnIncrement);
  }

   Future<void> clickSubtractButton() async {
    return driver.tap(btnSubtract);
  }

  Future<void> addbutton() async {
    return driver.tap(btnAdd);
  }

   Future<String> getAlertText() async {
    return await driver.getText(txtAlert);
  }

    Future<void> closeButton() async {
    return driver.tap(btnClose);
  }

}