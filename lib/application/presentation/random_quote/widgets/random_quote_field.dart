import 'package:flutter/material.dart';

class RandomQuoteField extends StatelessWidget {
  final String randomQuote;
  final String author;
  const RandomQuoteField(
      {super.key, required this.randomQuote, required this.author});

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 20,
      borderRadius: BorderRadius.circular(15),
      child: IntrinsicHeight(
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Theme.of(context).colorScheme.onPrimary),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  '''"$randomQuote"''',
                  style: Theme.of(context).textTheme.bodyLarge,
                  textAlign: TextAlign.center,
                ),
                // const SizedBox(height: 10),
                Text(
                  "- $author",
                  style: Theme.of(context).textTheme.bodySmall,
                  textAlign: TextAlign.end,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
