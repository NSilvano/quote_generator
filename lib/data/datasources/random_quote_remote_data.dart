import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:random_quote_generator/data/exceptions/exceptions.dart';

import '../models/random_quote_model.dart';

abstract class RandomRemoteQuoteDatasource {
  Future<RandomQuoteDTO> getRandomQuoteFromApi();
}

class RandomRemoteQuoteDatasourceImpl implements RandomRemoteQuoteDatasource {
  @override
  Future<RandomQuoteDTO> getRandomQuoteFromApi() async {
    final url = Uri.https('api.quotable.io', '/random');
    final response = await http.get(url, headers: {
      'Content-Type': 'application/json',
    });
    if (response.statusCode != 200) {
      throw ServerException();
    } else {
      final responseBody = json.decode(response.body);
      return RandomQuoteDTO.fromJson(responseBody);
    }
  }
}
