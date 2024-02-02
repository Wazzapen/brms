// import 'package:http/http.dart' as http;

// Future<void> pingServer() async {
//   final String serverAddress = '172.17.20.132';
//   final int port = 80; // Change this to the appropriate port number

//   final String url = 'http://$serverAddress:$port';

//   try {
//     final response = await http.head(Uri.parse(url));
//     if (response.statusCode == 200) {
//       print('Server is reachable');
//     } else {
//       print('Server is not reachable. Status code: ${response.statusCode}');
//     }
//   } catch (e) {
//     print('Error while trying to reach the server: $e');
//   }
// }

// void main() {
//   pingServer();
// }
