import 'package:flutter_test/flutter_test.dart';
import 'package:weather_app/services/weather_service.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

void main() {
  setUpAll(() async {
    await dotenv.load();
  });
  group('WeatherService', () {
    late WeatherService weatherService;

    setUp(() {
      weatherService = WeatherService();
    });

    test('fetchWeather returns valid data for a city', () async {
      final result = await weatherService.fetchWeather('Helsinki');
      expect(result, isA<Map<String, dynamic>>());
      expect(result['main']['temp'], isNotNull);
    });

    test('fetchWeather throws an error for invalid city', () async {
      expect(() async => await weatherService.fetchWeather('InvalidCity'),
          throwsException);
    });
  });
}
