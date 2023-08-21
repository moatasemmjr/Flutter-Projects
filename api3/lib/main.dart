// import 'package:api3/DataModel.dart';
// import 'package:api3/service.dart';
// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;
// import 'dart:convert';

// class MyWidget extends StatefulWidget {
//   @override
//   _MyWidgetState createState() => _MyWidgetState();
// }

// class _MyWidgetState extends State<MyWidget> {
//   late Future<List<DataModel>> _data;

//   @override
//   void initState() {
//     super.initState();
//     _data = fetchAPI();
//   }

//   Future<List<DataModel>> fetchAPI() async {
//     try {
//       final response = await Service().fetchData('photos');
//       final List<dynamic> responseData = json.decode(response);
//       return responseData.map((item) => DataModel.fromJson(item)).toList();
//     } catch (e) {
//       throw Exception('Failed to load data');
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('API Data Example'),
//       ),
//       body: FutureBuilder<List<DataModel>>(
//         future: _data,
//         builder: (context, snapshot) {
//           if (snapshot.connectionState == ConnectionState.waiting) {
//             return CircularProgressIndicator();
//           } else if (snapshot.hasError) {
//             return Text('Error: ${snapshot.error}');
//           } else {
//             final data = snapshot.data!;
//             return ListView.builder(
//               itemCount: 50,
//               // data.length
//               itemBuilder: (context, index) {
//                 final item = data[index];
//                 return Card(
//                   elevation: 4,
//                   margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
//                   child: ListTile(
//                     title: Text(
//                       item.title,
//                       style: TextStyle(
//                         fontSize: 18,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                     subtitle: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         SizedBox(height: 8),
//                         Text('Album ID: ${item.albumId}'),
//                         Text('Photo ID: ${item.id}'),
//                         SizedBox(height: 8),
//                         Container(
//                           width: 100,
//                           height: 100,
//                           child: ClipRRect(
//                             borderRadius: BorderRadius.circular(8),
//                             child: Image.network(
//                               item.thumbnailUrl,
//                               fit: BoxFit.cover,
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 );
//               },
//             );
//           }
//         },
//       ),
//     );
//   }
// }

// void main() {
//   runApp(MaterialApp(
//     home: MyWidget(),
//   ));
// }

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:async'; // Import the dart:async library

class ExchangeRateService {
  final String apiKey = 'ba21e565fa6da305be162e47';
  final String apiUrl =
      'https://v6.exchangerate-api.com/v6/ba21e565fa6da305be162e47/latest/USD';

  Future<Map<String, dynamic>> fetchExchangeRate() async {
    final response = await http.get(Uri.parse(apiUrl));
    if (response.statusCode == 200) {
      final Map<String, dynamic> responseData = json.decode(response.body);
      return responseData['conversion_rates'];
    } else {
      throw Exception('Failed to load exchange rate data');
    }
  }
}

void main() {
  runApp(CurrencyConverterApp());
}

class CurrencyConverterApp extends StatefulWidget {
  @override
  _CurrencyConverterAppState createState() => _CurrencyConverterAppState();
}

class _CurrencyConverterAppState extends State<CurrencyConverterApp> {
  late Future<Map<String, dynamic>> _exchangeRates;

  @override
  void initState() {
    super.initState();
    _exchangeRates = ExchangeRateService().fetchExchangeRate();

    // Automatically update every 10 seconds
    Timer.periodic(Duration(seconds: 10), (timer) {
      setState(() {
        _exchangeRates = ExchangeRateService().fetchExchangeRate();
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('USD to ILS - Converter'),
        ),
        body: Center(
          child: FutureBuilder<Map<String, dynamic>>(
            future: _exchangeRates,
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return CircularProgressIndicator();
              } else if (snapshot.hasError) {
                return Text('Error: ${snapshot.error}');
              } else {
                final exchangeRates = snapshot.data!;
                final usdToIls = exchangeRates['ILS'];

                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      usdToIls.toString(),
                      style: TextStyle(
                        fontSize: 50,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue,
                      ),
                    ),
                    SizedBox(width: 10),
                    Text(
                      'ILS',
                      style: TextStyle(fontSize: 28),
                    ),
                  ],
                );
              }
            },
          ),
        ),
      ),
    );
  }
}
