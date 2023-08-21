import 'package:http/http.dart' as http;

// /posts
class Service {
  final String baseUrl = 'https://jsonplaceholder.typicode.com';
  // final String endpoint = 'posts';

  Future<dynamic> fetchData(String endpoint) async {
    final response = await http.get(Uri.parse('$baseUrl/$endpoint'));
    if (response.statusCode == 200) {
      return response.body;
    } else {
      throw Exception('Failed to load data');
    }
  }
}
