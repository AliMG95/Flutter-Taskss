import 'package:flutter_test/flutter_test.dart';
import 'package:day1/main.dart'; // Ensure this import points to the correct file

void main() {
  testWidgets('MyApp widget test', (WidgetTester tester) async {
    // Build the app and trigger a frame.
    await tester.pumpWidget(const MyApp());

    // Verify that the app starts with the expected UI.
    expect(find.text('Hello, Ali'), findsOneWidget);
    expect(find.text('Welcome '), findsOneWidget);
  });
}
