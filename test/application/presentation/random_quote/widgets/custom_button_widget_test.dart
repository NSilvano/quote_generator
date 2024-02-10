import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:random_quote_generator/application/presentation/random_quote/widgets/custom_button.dart';

import 'custom_button_widget_test.mocks.dart';

abstract class OnCustomButtonTap {
  void call();
}

@GenerateNiceMocks([MockSpec<OnCustomButtonTap>()])
void main() {
  Widget widgetUnderMethod({Function()? callback}) {
    return MaterialApp(
      home: Scaffold(
        body: CustomButton(
          onTap: () => callback,
        ),
      ),
    );
  }

  group('CustomButton', () {
    group('is the buttton rendered correctly', () {
      testWidgets('and has all the parts that it needs', (widgetTester) async {
        await widgetTester.pumpWidget(widgetUnderMethod());

        final buttonLabelFinder = find.text('Get Quote');

        expect(buttonLabelFinder, findsOneWidget);
      });
    });

    group('should handle tap', () {
      testWidgets('when a button has been pressed', (widgetTester) async {
        final mockOnCustomButtonTap = MockOnCustomButtonTap();

        await widgetTester
            .pumpWidget(widgetUnderMethod(callback: mockOnCustomButtonTap));

        final customButtonFinder = find.byType(CustomButton);

        await widgetTester.tap(customButtonFinder);

        verify(mockOnCustomButtonTap()).called(1);
      });
    });
  });
}
