import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:random_quote_generator/application/presentation/random_quote/widgets/error_message.dart';

void main() {
  Widget widgetUnderTest({required String errorMessage}) {
    return MaterialApp(
      home: ErrorMessage(
        errorMessage: errorMessage,
      ),
    );
  }

  group('ErrorMessage', () {
    group('should be displayed correctly', () {
      testWidgets('when a short error message is given', (widgetTester) async {
        await widgetTester.pumpWidget(widgetUnderTest(errorMessage: 's'));
        await widgetTester.pumpAndSettle();

        final errorMessageFinder = find.byType(ErrorMessage);

        expect(errorMessageFinder, findsOneWidget);
      });

      testWidgets('when a long error message is given', (widgetTester) async {
        await widgetTester.pumpWidget(widgetUnderTest(
            errorMessage:
                'A very long text about nothing and also I do not think these widget tests are necessary but it is what it is'));
        await widgetTester.pumpAndSettle();

        final errorMessageFinder = find.byType(ErrorMessage);

        expect(errorMessageFinder, findsOneWidget);
      });
    });
  });
}
