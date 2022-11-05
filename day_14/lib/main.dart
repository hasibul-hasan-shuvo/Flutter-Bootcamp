import 'package:day_14/weather_data_response.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:logger/logger.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

void main() async {
  await GetStorage.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  double temp = 0.0;

  // WeatherDataResponse? responseData;

  GetStorage getStorage = GetStorage();

  @override
  void initState() {
    super.initState();
    // _counter = getStorage.read('counter');
  }

  void _incrementCounter() {
    getCurrentWeather();
    // setState(() {
    //   _counter++;
    // });
    Logger().i("Button clicked: Counter: $_counter");
    // print("Button clicked: Counter: $_counter");
    // getStorage.write('counter', _counter);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Temperature',
            ),
            Text(
              temp,
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: getCurrentWeather,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  void getCurrentWeather() {
    const String baseUrl = "https://api.openweathermap.org/data/2.5/";

    PrettyDioLogger prettyDioLogger = PrettyDioLogger(
      requestHeader: true,
      requestBody: true,
      responseBody: true,
      responseHeader: false,
      error: true,
      compact: true,
      maxWidth: 90,
    );

    BaseOptions options = BaseOptions(
      baseUrl: baseUrl,
      connectTimeout: 60 * 1000,
      receiveTimeout: 60 * 1000,
      headers: {
        'content-type': 'application/json',
      },
      queryParameters: {
        'appid': '53ff9e496533a5825283efd26404984b',
      },
    );

    Dio dio = Dio(options);
    // Dio dio = Dio();

    dio.interceptors.add(prettyDioLogger);

    showLoader();
    dio.get(
      "weather",
      queryParameters: {
        'lat': '23.7746591',
        'lon': '90.4030951',
      },
    ).then((Response<dynamic> response) {
      WeatherDataResponse responseData =
          WeatherDataResponse.fromJson(response.data);
      hideLoader();

      Logger().d("City name: ${responseData.name}");

      setState(() {
        // temp = responseData.main?.temp.toString() ??
        if (responseData.main?.temp != null) {
          temp = responseData.main!.temp!;
        }
      });
    });

    // response.d
  }

  showLoader() {}

  hideLoader() {}
}
