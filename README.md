# Name

This is an iOS sample application, demonstrating a way how a UI test can be launched from the Terminal together with custom environment variables, which then can be retrieved inside the UI test case and also passed into the iOS application itself.

## Requirements

* Xcode 13

## Launch test from command line

```
env TEST_RUNNER_name="Tony Stark" \
xcodebuild clean test \
-project Name.xcodeproj \
-scheme Name \
-destination 'platform=iOS Simulator,name=iPhone 13 Pro Max'
```

Create an environment variable `TEST_RUNNER_name`, and then inside in the code just retrieve it through `name` parameter.

## Xcode Release Notes

```
xcodebuild now supports passing certain environment variables to test runner processes. In the environment where xcodebuild is invoked, prefix any variable with TEST_RUNNER_ to pass that variable (with the prefix stripped) to XCTest test runner processes. For example, running env TEST_RUNNER_Foo=Bar xcodebuild test ... causes the environment variable Foo=Bar to be set in the test runner’s environment. (74104870)
Additionally, existing variables may be modified using the special token __CURRENT_VALUE__ to represent their current value. For example, TEST_RUNNER_Foo=__CURRENT_VALUE__:Bar appends the string :Bar to any existing value of Foo. Note that only test runner processes receive these environment variables. To set them in apps targeted by UI tests, customize the XCUIApplication.launchEnvironment dictionary prior to launching the app.
```

[Xcode 13 Release Notes](https://developer.apple.com/documentation/xcode-release-notes/xcode-13-release-notes).
