import 'package:http/http.dart' as http;

const String baseUrl = "http://192.168.22.4:3003/users";

class ApiVerbs {
  final http.Client client;

  ApiVerbs(this.client);

  Future<dynamic> get() async {
    final response = await client.get(Uri.parse(baseUrl));
    if (response.statusCode == 200) {
      return response.body;
    } else {
      throw Exception();
    }
  }

  // Future<dynamic> post(String api, dynamic data) async {
  //   var url = Uri.parse(api);
  //   var _data = json.encode(data);
  //   debugPrint(_data);
  //   var response = await client.post(
  //     url,
  //     headers: {
  //       'Content-Type': 'application/json'
  //     }, // Set the Content-Type header
  //     body: _data,
  //   );

  //   if (response.statusCode == 201) {
  //     return response.body;
  //   } else {
  //     throw Exception();
  //   }
  // }

  // Future<dynamic> put(String api, dynamic data) async {
  //   var url = Uri.parse(api);
  //   var _data = json.encode(data);
  //   debugPrint(_data);
  //   var response = await client.put(
  //     url,
  //     headers: {
  //       'Content-Type': 'application/json'
  //     }, // Set the Content-Type header
  //     body: _data,
  //   );

  //   if (response.statusCode == 201) {
  //     return response.body;
  //   } else {
  //     throw Exception();
  //   }
  // }

  // Future<dynamic> delete(String api) async {
  //   var url = Uri.parse(api);
  //   var response =
  //       await client.delete(url, headers: {'Content-Type': 'application/json'});
  //   if (response.statusCode == 200) {
  //     return response.body;
  //   } else {
  //     throw Exception();
  //   }
  // }
}
