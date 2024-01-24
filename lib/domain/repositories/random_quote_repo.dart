import 'package:dartz/dartz.dart';
import 'package:random_quote_generator/data/models/random_quote_model.dart';
import 'package:random_quote_generator/domain/failures/failures.dart';

abstract class RandomQuoteRepo {
  Future<Either<Failure, RandomQuoteDTO>> getRandomQuoteFromDatasource();
}
