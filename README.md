# Name

This is an iOS sample application, demonstrating a way how a UI test can be launched from the Terminal together with custom environment variables, which then can be retrieved inside the UI test case and also passed into the iOS application itself.

## Launch test from command line

```
env TEST_RUNNER_name="Tony Stark" \
xcodebuild clean test \
-project Name.xcodeproj \
-scheme Name \
-destination 'platform=iOS Simulator,name=iPhone 13 Pro Max'
```

Create an environment variable `TEST_RUNNER_name`, and then inside in the code just retrieve it through `name` parameter.
