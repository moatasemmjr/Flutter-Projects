import 'package:flutter/material.dart';
import 'package:weather_app_setup/pages/search.dart';
import 'package:provider/provider.dart';
import '../Provider/WeatherProvider.dart';
import '../model/weather_model.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  void updateurl() {
    setState(() {});
  }

  WeatherModel? dataWeather;
  @override
  Widget build(BuildContext context) {
    search name = search();
    dataWeather = Provider.of<WeatherProvider>(context).weatherData;
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return search(
                    updateurl: updateurl,
                  );
                }));
              },
              icon: Icon(Icons.search))
        ],
        title: const Text('Weather App'),
      ),
      body: dataWeather == null
          ? const Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'there is no weather 😔 start',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  Text(
                    'searching now 🔍',
                    style: TextStyle(
                      fontSize: 30,
                    ),
                  )
                ],
              ),
            )
          : Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                colors: [
                  dataWeather!.getThemeColor(),
                  dataWeather!.getThemeColor()[300]!,
                  dataWeather!.getThemeColor()[100]!,
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              )),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '$name',
                    style: const TextStyle(
                        fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    '${dataWeather!.date}',
                    style: const TextStyle(
                        fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Image.asset(dataWeather!.getImage()),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Text(
                          '${dataWeather!.temp.toInt()}',
                          style: const TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 60),
                        child: Column(
                          children: [
                            Text(
                              'maxtemp :${dataWeather!.maxtemp.toInt()}',
                              style: const TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              'mintemp :${dataWeather!.mintemp.toInt()}',
                              style: const TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  Text(
                    dataWeather!.statename,
                    style: const TextStyle(
                        fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
    );
  }
}
