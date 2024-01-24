import 'package:dartz/dartz.dart';
import 'package:random_quote_generator/data/datasources/random_quote_remote_data.dart';
import 'package:random_quote_generator/data/exceptions/exceptions.dart';
import 'package:random_quote_generator/data/models/random_quote_model.dart';

import 'package:random_quote_generator/domain/failures/failures.dart';

import '../../domain/repositories/random_quote_repo.dart';

class QuoteRepoImpl implements RandomQuoteRepo {
  QuoteRepoImpl({required this.randomRemoteQuoteDatasource});
  final RandomRemoteQuoteDatasource randomRemoteQuoteDatasource;

  @override
  Future<Either<Failure, RandomQuoteDTO>> getRandomQuoteFromDatasource() async {
    try {
      final result = await randomRemoteQuoteDatasource.getRandomQuoteFromApi();
      return right(result);
    } on ServerException catch (_) {
      return left(ServerFailure());
    } catch (e) {
      return left(GeneralFailure());
    }
  }
}
