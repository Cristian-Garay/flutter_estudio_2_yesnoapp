import 'package:dio/dio.dart';
import 'package:flutter_estudio_2_yesnoapp/domain/entities/message.dart';

class GetYesNoAnswer {
  final _dio = Dio();

  Future<Message> getAnswer() async {
    final response = await _dio.get('https://yesno.wtf/api');

    throw UnimplementedError();
  }
}
