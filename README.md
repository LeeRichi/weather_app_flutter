# Weather App

A simple, responsive weather application built with Flutter. This app fetches real-time weather data from the OpenWeatherMap API and displays it in a user-friendly interface by Wolt Responsive Layout Grid.

## Features

- **Real-time Weather Data**:
	- Fetches weather information from the OpenWeatherMap API, including temperature, humidity, and wind speed for cities in Finland. The app ensures reliability and accuracy of this data through WeatherService unit tests. These tests validate the functionality of the API integration:
		- Valid City Test: Ensures the app fetches correct weather data for valid city names, like Helsinki.
		- Invalid City Handling: Verifies the app gracefully handles errors when invalid city names are entered, ensuring a seamless user experience even during unexpected scenarios.
	These tests are part of the core quality assurance strategy, ensuring the app performs reliably under different conditions.

- **Responsive Design with Wolt Responsive Layout Grid**:
	- Uses Flutter’s responsive layout system to ensure the app looks great on all screen sizes, from smartphones to tablets and desktops.

## Tech Stack

- **Flutter**: The framework used to build this cross-platform mobile app, enabling support for iOS, Android, and web platforms.
- **OpenWeatherMap API**: Provides weather data for the app.
- **HTTP**: For making network requests to the OpenWeatherMap API.
- **Flutter Dotenv**: Manages environment variables (e.g., API keys).
- **Wolt Responsive Layout Grid**: Ensures the app is responsive and adapts to various screen sizes.

## Getting Started

Follow these steps to get your development environment set up:

### 1. Clone the repository

```bash
git clone https://github.com/yourusername/weather_app.git
cd weather_app
```

### 2. Install Dependencies

Run the following command to install the required dependencies:

```bash
flutter pub get
```


### 3. Set Up Environment Variables

Create a .env file in the root of the project and add your OpenWeatherMap API key:

```bash
API_KEY=your_openweathermap_api_key
```



### 4. Run the app

To run the app on your device or emulator:

```bash
flutter run
```

To build the app for production (web version):

```bash
flutter build web --release
```


### 5. run test

To run the tests and ensure everything is working correctly:

```bash
flutter test
```
