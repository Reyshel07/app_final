import 'package:app_final/models/noticias.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class ProviderNoti extends ChangeNotifier {
  final dio = Dio();
  String baseURL = 'https://newsdata.io/api/1/latest?apikey=pub_218958cce13436c0fdce02108dfa64926ebcd&q=pizza';
  List<Result1> allResul = [];

  Future<void> getAllNoti() async {
    try {
      final response = await dio.get(
        baseURL
      );
      if (response.statusCode == 200) {
        final resNoti = ResposeNoti.fromJson(response.data);
        allResul.addAll(resNoti.results1);

        notifyListeners();
      }
    } catch (e) {
      print('Error al obtener noticias: $e');
    }
  }
}
