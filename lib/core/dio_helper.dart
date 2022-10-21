import 'package:dio/dio.dart';

import 'helper_methods.dart';


class DioHelper {
  final dio = Dio(
    BaseOptions(
      baseUrl: "http://store.webautobazaar.com/api/",
    ),
  );

  Future<Response<dynamic>> getData({required String endPoint}) {
    return dio.get(endPoint);
  }

  Future<bool> sendData({
    required String endPoint,
    FormData? data,
  }) async {
    try {
      final responce = await dio.post(endPoint, data: data);
      if (responce.data["status"]) {
        return true;
      } else {
        showMessage(msg: responce.data["msg"]);
        return false;
      }
    } catch (ex) {
      print(ex.toString());
      return false;
    }
  }
}
