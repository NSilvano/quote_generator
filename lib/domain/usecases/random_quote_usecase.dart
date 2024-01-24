import 'package:dartz/dartz.dart';
import 'package:random_quote_generator/data/models/random_quote_model.dart';
import 'package:random_quote_generator/domain/failures/failures.dart';

import '../repositories/random_quote_repo.dart';

class RandomQuoteUseCases {
  RandomQuoteUseCases({required this.randomQuoteRepo});
  final RandomQuoteRepo randomQuoteRepo;

  Future<Either<Failure, RandomQuoteDTO>> getRandomQuote() async {
    return randomQuoteRepo.getRandomQuoteFromDatasource();
  }
}
