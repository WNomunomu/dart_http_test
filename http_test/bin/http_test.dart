import 'dart:convert';
import 'package:http/http.dart' as http;

void main() async {

  final apiUrl = 'https://script.google.com/macros/s/AKfycbxr4ka9zuGOTcjx1LmM6-94zfD-QYestVrzgwSXYBgQ2gVxe7FCMZ6RxMaz3uWLdVA-/exec';

  try {
    final response = await http.get(Uri.parse(apiUrl));

    if (response.statusCode == 200) {
      final Map<String, dynamic> jsonData = json.decode(response.body);

      print(jsonData);
    }
    else {
      print(response.statusCode);
    }
  }
  catch (err) {
    print(err);
  }

}