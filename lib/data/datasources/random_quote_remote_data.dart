import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:random_quote_generator/data/exceptions/exceptions.dart';

import '../models/random_quote_model.dart';

abstract class RandomRemoteQuoteDatasource {
  Future<RandomQuoteDTO> getRandomQuoteFromApi();
}

class RandomRemoteQuoteDatasourceImpl implements RandomRemoteQuoteDatasource {
  final http.Client client;

  RandomRemoteQuoteDatasourceImpl({required this.client});
  @override
  Future<RandomQuoteDTO> getRandomQuoteFromApi() async {
    final response =
        await client.get(Uri.parse('https://api.quotable.io/random'), headers: {
      'Content-Type': 'application/json',
    });
    if (response.statusCode != 200) {
      throw ServerException();
    } else {
      final responseBody = json.decode(response.body);
      debugPrint(responseBody);
      return RandomQuoteDTO.fromJson(responseBody);
    }
  }
}
