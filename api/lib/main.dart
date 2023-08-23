import 'dart:convert';
import 'package:api/service.dart';
import 'package:flutter/material.dart';
import 'package:api/DataModel.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  Service _service = Service();
  List<DataModel> _dataList = [];

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Service _service = Service();
  List<DataModel> _dataList = [];

  @override
  void initState() {
    super.initState();
    _fetchData();
  }

  Future<void> _fetchData() async {
    try {
      final data = await _service.fetchData('posts');
      final jsonData = json.decode(data) as List<dynamic>;

      setState(() {
        _dataList = jsonData.map((item) => DataModel.fromJson(item)).toList();
      });
    } catch (error) {
      print('Error fetching data: $error');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('API Example'),
      ),
      body: _dataList.isEmpty
          ? Center(
              child: CircularProgressIndicator(),
            )
          : ListView.builder(
              itemCount: _dataList.length,
              itemBuilder: (context, index) {
                final data = _dataList[index];
                return ListTile(
                  title: Text(
                    data.title,
                    style: TextStyle(
                        color: Color.fromARGB(255, 2, 134, 2),
                        fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text('User ID: ${data.userId}, ID: ${data.id}'),
                );
              },
            ),
    );
  }
}
