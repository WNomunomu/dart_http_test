import 'dart:convert';
import 'package:http/http.dart' as http;

Future<Object> fetchData() async {
  final apiUrl = 'https://script.google.com/macros/s/AKfycby7o065pPg70rQxnPG50EdyrO7f8VbdwXvZ2KPVFYismIv1RzhYdUzf4rxGljYN1Z66/exec';

  try {
    final response = await http.get(Uri.parse(apiUrl));

    if (response.statusCode == 200) {
      final Map<String, dynamic> jsonData = json.decode(response.body);
      return jsonData;
    } else {
      return response.statusCode;
    }
  } catch (err) {
    return err;
  }
}

void main() async {
  Future<Object> jsonData = fetchData();
  print(await jsonData);
}