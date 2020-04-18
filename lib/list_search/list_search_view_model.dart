import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import './list_search.dart';
import 'model/fixer.dart';

abstract class ListSearchViewModel extends State<ListSearch> {
  // Add your state and logic here
  final baseUrl =
      "http://data.fixer.io/api/latest?access_key=579e1b52ffcb588ac06f34dee6a09a1d";
  Dio dio = Dio();

  Fixer fixer;
  List<RatesModel> rates = [];
  List<RatesModel> searchRates = [];
  Future<Fixer> getFixerAllItem() async {
    if (fixer != null) {
      return fixer;
    } else {
      final response = await dio.get(baseUrl);
      final data = parseBody(response.data);
      if (data is Fixer) {
        fixer = data;

        data.rates.toJson().forEach((key, value) {
          rates.add(RatesModel(key, value));
        });
        searchRates.addAll(rates);
      }

      return data;
    }
  }

  dynamic parseBody(dynamic responseBody) {
    try {
      dio.clear();

      if (responseBody is List) {
        return responseBody
            .map((data) => Fixer.fromJson(data))
            .cast<Fixer>()
            .toList();
      } else if (responseBody is Map) {
        return Fixer.fromJson(responseBody);
      } else {
        return responseBody;
      }
    } catch (e) {
      print(e);
      return responseBody;
    }
  }
}
