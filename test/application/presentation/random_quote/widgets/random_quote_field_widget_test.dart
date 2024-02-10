import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:random_quote_generator/application/presentation/random_quote/widgets/random_quote_field.dart';

void main() {
  Widget widgetUnderTest(
      {required String randomQuoteText, required String authorText}) {
    return MaterialApp(
      home: RandomQuoteField(
        randomQuote: randomQuoteText,
        author: authorText,
      ),
    );
  }

  group("Random quote field", () {
    group("should be displayed correctly", () {
      testWidgets("when short text is given", (widgetTester) async {
        const quoteText = 'NS';
        const authorText = "S";

        await widgetTester.pumpWidget(widgetUnderTest(
            randomQuoteText: quoteText, authorText: authorText));
        await widgetTester.pumpAndSettle();

        final quoteFinder = find.textContaining('NS');
        final authorFinder = find.textContaining("S");

        expect(quoteFinder, findsWidgets);
        expect(authorFinder, findsWidgets);
      });

      testWidgets("when a long text is given", (widgetTester) async {
        const quoteText =
            "Can miles trulty seperate you from friends... If you want to be with someone you love, aren't you already there?";
        const authorText = "Richard Bach";

        await widgetTester.pumpWidget(widgetUnderTest(
            randomQuoteText: quoteText, authorText: authorText));
        await widgetTester.pumpAndSettle();

        final quoteFinder = find.byType(RandomQuoteField);

        expect(quoteFinder, findsOneWidget);
      });
    });
  });
}
