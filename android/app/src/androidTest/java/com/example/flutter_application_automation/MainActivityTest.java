package com.example.flutter_application_automation;

import dev.flutter.plugins.integration_test.FlutterTestRunner;
import org.junit.Rule;
import org.junit.runner.RunWith;
import androidx.test.rule.ActivityTestRule; // Ensure this import is present
import com.example.flutter_application_automation.MainActivity; // Ensure this import is correct

@RunWith(FlutterTestRunner.class)
public class MainActivityTest {
    @Rule
    public ActivityTestRule<MainActivity> rule = new ActivityTestRule<>(MainActivity.class, true, false);
}