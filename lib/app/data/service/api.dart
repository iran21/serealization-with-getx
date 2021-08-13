import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:serealization_app/app/data/model/user.model.dart';

const baseUrl = 'https://jsonplaceholder.typicode.com/posts/';

class MyApiClient {
  final Dio httpClient = Dio();

  getAll() async {
    try {
      //Chama o URL
      var response = await httpClient.get(baseUrl);
      if (response.statusCode == 200) {
        //Recebe a resposta em Object? e converte ela pra uma String com estrutura em JSON
        String jsonResponse = json.encode(response.data);

        //Recebe a String formatada em JSON e transforma em um objeto JSON
        List<dynamic> otherResponse = json.decode(jsonResponse);

        // Nesta etapa o .map<T>() tem por objetivo percorrer todos os index de [otherResponse]
        // que até então, são [dynamic] e transforma-los em [MyModel], pegar esse [Iterable]
        // resultante e transforma-lo em uma [List<MyModel>] com o .toList();
        List<MyModel> listMyModel =
            otherResponse.map<MyModel>((dynamicValue) => MyModel.fromJson(dynamicValue)).toList();
        return listMyModel;
      } else
        print('erro -get');
    } catch (e) {
      print(e);
    }
  }
}
