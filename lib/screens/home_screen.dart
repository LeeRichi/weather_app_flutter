import 'package:flutter/material.dart';
import 'package:wolt_responsive_layout_grid/wolt_responsive_layout_grid.dart';
import '../widgets/weather_info_item.dart';
import '../services/weather_service.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final weatherService = WeatherService();
  String selectedCity = 'Helsinki';
  late Future<Map<String, dynamic>> weatherData;

  final List<String> cities = [
    'Helsinki',
    'Turku',
    'Tampere',
    'Oulu',
    'Jyväskylä',
    'Vaasa',
    'Pori',
    'Rovaniemi',
    'Lahti',
    'Kotka',
  ];

  @override
  void initState() {
    super.initState();
    weatherData = weatherService.fetchWeather(selectedCity);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Weather App')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            DropdownButton<String>(
              value: selectedCity,
              onChanged: (String? newCity) {
                setState(() {
                  selectedCity = newCity!;
                  weatherData = weatherService.fetchWeather(selectedCity);
                });
              },
              items: cities.map<DropdownMenuItem<String>>((String city) {
                return DropdownMenuItem<String>(
                  value: city,
                  child: Text(city),
                );
              }).toList(),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: FutureBuilder<Map<String, dynamic>>(
                future: weatherData,
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return const Center(child: CircularProgressIndicator());
                  } else if (snapshot.hasError) {
                    return Center(child: Text('Error: ${snapshot.error}'));
                  } else if (snapshot.hasData) {
                    var weatherData = snapshot.data!;

                    String temperature = '${weatherData['main']['temp']}°C';
                    String humidity = '${weatherData['main']['humidity']}%';
                    String windSpeed = '${weatherData['wind']['speed']} m/s';

                    return WoltResponsiveLayoutGrid(
                      isOverlayVisible: false,
                      gutter: 16,
                      margin: 32,
                      columnSpanCells: [
                        WoltColumnSpanCell(
                          columnCellWidget: WeatherInfoItem(
                            color: Colors.blue,
                            label: 'Temperature',
                            value: temperature,
                          ),
                          columnSpan: 4,
                        ),
                        WoltColumnSpanCell(
                          columnCellWidget: WeatherInfoItem(
                            color: Colors.red,
                            label: 'Humidity',
                            value: humidity,
                          ),
                          columnSpan: 4,
                        ),
                        WoltColumnSpanCell(
                          columnCellWidget: WeatherInfoItem(
                            color: Colors.green,
                            label: 'Wind Speed',
                            value: windSpeed,
                          ),
                          columnSpan: 4,
                        ),
                      ],
                    );
                  } else {
                    return const Center(child: Text('No data available'));
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
