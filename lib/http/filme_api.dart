import 'dart:convert'; 
import '../model/filme.dart';
import 'package:http/http.dart' as http;

class FilmeApi {
  final String url =
      'https://my-json-server.typicode.com/SuelDSouza/Minha-API/filmes';
  Future<List<Filme>> getFilmes() async {
    final response = await http.get(Uri.parse(url));
    if (response.statusCode != 200) {
      throw Exception('Falhou na busca da API');
    }

    final json = jsonDecode(response.body);
    final mapsFilmes = json.cast<Map<String, dynamic>>();
    List<Filme> listFilmes = [];

    for (var map in mapsFilmes) {
      Filme objfilme = Filme.fromJson(map);
      listFilmes.add(objfilme);
    }
    return listFilmes;
  }
}