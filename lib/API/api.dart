// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

const String baseUrl = "https://jsonplaceholder.typicode.com/";

class ApiVerbs {
  var client = http.Client();

  Future<dynamic> get(String api) async {
    var url = Uri.parse(baseUrl + api);
    var response = await client.get(url);
    if (response.statusCode == 200) {
      return response.body;
    } else {
      //throw exception
    }
  }

  Future<dynamic> post(String api, dynamic data) async {
    var url = Uri.parse(baseUrl + api);
    var _data = json.encode(data);
    debugPrint(_data);
    var response = await client.post(
      url,
      headers: {
        'Content-Type': 'application/json'
      }, // Set the Content-Type header
      body: _data,
    );

    if (response.statusCode == 201) {
      return response.body;
    } else {
      //throw exception
    }
  }

  Future<dynamic> put(String api, dynamic data) async {
    var url = Uri.parse(baseUrl + api);
    var _data = json.encode(data);
    debugPrint(_data);
    var response = await client.put(
      url,
      headers: {
        'Content-Type': 'application/json'
      }, // Set the Content-Type header
      body: _data,
    );

    if (response.statusCode == 201) {
      return response.body;
    } else {
      //throw exception
    }
  }

  Future<dynamic> delete(String api) async {
    var url = Uri.parse(baseUrl + api);
    var response =
        await client.delete(url, headers: {'Content-Type': 'application/json'});
    if (response.statusCode == 200) {
      return response.body;
    } else {
      //throw exception
    }
  }
}
