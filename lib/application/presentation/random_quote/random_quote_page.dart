import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:random_quote_generator/application/core/services/theme_service.dart';
import 'package:random_quote_generator/application/presentation/random_quote/bloc/random_quote_bloc.dart';
import 'package:random_quote_generator/application/presentation/random_quote/widgets/custom_button.dart';
import 'package:random_quote_generator/application/presentation/random_quote/widgets/random_quote_field.dart';
import 'package:random_quote_generator/application/presentation/random_quote/widgets/error_message.dart';
import 'package:random_quote_generator/injection.dart';

class RandomQuotePageBlocWrapper extends StatelessWidget {
  const RandomQuotePageBlocWrapper({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<RandomQuoteBloc>(),
      child: const RandomQuotePage(),
    );
  }
}

class RandomQuotePage extends StatelessWidget {
  const RandomQuotePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Quote Generator",
          style: Theme.of(context).textTheme.headlineSmall,
        ),
        centerTitle: true,
        actions: [
          Switch(
              value: Provider.of<ThemeService>(context).isDarkModeOn,
              onChanged: (_) {
                Provider.of<ThemeService>(context, listen: false).toggleTheme();
              })
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 50),
        child: Column(children: [
          Expanded(
            child: Center(child: BlocBuilder<RandomQuoteBloc, RandomQuoteState>(
              builder: (context, state) {
                if (state is RandomQuoteStateInitial) {
                  return Text(
                    "Your random quote of the day is waiting!",
                    style: Theme.of(context).textTheme.headlineLarge,
                  );
                } else if (state is RandomQuoteStateLoading) {
                  return CircularProgressIndicator(
                    color: Theme.of(context).colorScheme.secondary,
                  );
                } else if (state is RandomQuoteStateLoaded) {
                  return RandomQuoteField(
                    randomQuote:
                        state.quote.randomQuote ?? 'No quote available',
                    author: state.quote.author ?? "Unknown author",
                  );
                } else if (state is RandomQuoteStateError) {
                  return ErrorMessage(
                    errorMessage: state.errorMessage,
                  );
                }
                return const SizedBox();
              },
            )),
          ),
          const SizedBox(
            height: 200,
            child: Center(
              child: CustomButton(),
            ),
          ),
        ]),
      ),
    );
  }
}
