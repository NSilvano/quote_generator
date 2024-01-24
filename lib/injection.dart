import 'package:get_it/get_it.dart';
import 'package:random_quote_generator/application/presentation/random_quote/bloc/random_quote_bloc.dart';
import 'package:random_quote_generator/data/datasources/random_quote_remote_data.dart';
import 'package:random_quote_generator/data/repositories/quote_repo_impl.dart';
import 'package:random_quote_generator/domain/repositories/random_quote_repo.dart';
import 'package:random_quote_generator/domain/usecases/random_quote_usecase.dart';

final sl = GetIt.I; // sl = Service Locator

Future<void> init() async {
  // ! application layer
  sl.registerFactory(() => RandomQuoteBloc(randomQuoteUseCases: sl()));

  // ! domain layer
  sl.registerFactory(() => RandomQuoteUseCases(randomQuoteRepo: sl()));

  // ! data layer
  sl.registerFactory<RandomQuoteRepo>(
      () => QuoteRepoImpl(randomRemoteQuoteDatasource: sl()));
  sl.registerSingleton<RandomRemoteQuoteDatasource>(
      RandomRemoteQuoteDatasourceImpl());
}
