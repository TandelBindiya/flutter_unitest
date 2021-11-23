# flutter_unitest
#unittest
Sample flutter app for unit testing. In this project, Simple unit testing is implemented using field validation for login page. 

How can you ensure that your app continues to work as you add more features or change existing functionality? By writing tests.

Unit tests are handy for verifying the behavior of a single function, method, or class. The test package provides the core framework for writing unit tests, and the flutter_test package provides additional utilities for testing widgets.

This project demonstrates the core features provided by the test package using the following steps:

1) Add the test or flutter_test dependency.
2) Create a test file.
3) Create a class to test.
4) Write a test for our class.
5) Run the tests.


1. Add the test dependency

The test package provides the core functionality for writing tests in Dart. This is the best approach when writing packages consumed by web, server, and Flutter apps.
dev_dependencies:
  test: <latest_version>

2. Create a test file

In this example, create two files: field_validator.dart and field_validator_test.dart.

The field_validator.dart file contains a class that you want to test and resides in the lib folder. The field_validator_test.dart file contains the tests themselves and lives inside the test folder.

In general, test files should reside inside a test folder located at the root of your Flutter application or package. Test files should always end with _test.dart, this is the convention used by the test runner when searching for tests.

3. Create a class to test

Next, you need a “unit” to test. Remember: “unit” is another name for a function, method, or class.
For this example, create a Counter class inside the lib/field_validator.dart file. It is responsible for validating email and password fields.

4. Write a test for our class

Inside the field_validator_test.dart file, write the first unit test.
Tests are defined using the top-level test function, and you can check if the results are correct by using the top-level expect function. Both of these functions come from the test package.

5. Run the tests


