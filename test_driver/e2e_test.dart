import 'package:flutter_driver/flutter_driver.dart';
import 'package:test/test.dart';
import '../test_driver/pages/home_page.dart';

void main() {
  group('Counter App', () {
    late FlutterDriver driver;
    late HomePage homePage;

    // Connect to the BrowserStack Appium server before running any tests.
      setUpAll(() async {
      driver = await FlutterDriver.connect();
      homePage = HomePage(driver); // Initialize HomePage with the driver.
    });

    tearDownAll(() async {
      await driver.close();
    });

    test('Increment the counter', () async {
      expect(homePage, isNotNull);

      await homePage.clickBtnPlus();
      expect(await homePage.getCounterValue(), "1");

      await homePage.clickBtnPlus();
      expect(await homePage.getCounterValue(), "2");

      await homePage.clickBtnPlus();
      expect(await homePage.getCounterValue(), "3");
    });

    test("Test with alert window", () async {
      await homePage.addbutton();

      String alertText = await homePage.getAlertText();
      expect(alertText, "Welcome to ExecuteAutomation 3");

      await homePage.closeButton();
      await homePage.clickSubtractButton();
      expect(await homePage.getCounterValue(), "2");
    });
  });
}