# Weather App

A modern, responsive weather application built with Flutter. This app fetches real-time weather data from the OpenWeatherMap API and displays it in a user-friendly interface. It's designed to be fast, efficient, and visually appealing with smooth animations and intuitive navigation.

## Features

- **Real-time Weather Data**: Fetches weather information from the OpenWeatherMap API, including temperature, humidity, and wind speed for cities in Finland.
- **Responsive Design**: Uses Flutter’s responsive layout system to ensure the app looks great on all screen sizes, from smartphones to tablets and desktops.
- **Intuitive User Interface**: Simple, clean, and user-friendly design that focuses on providing essential weather information at a glance.

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


### 3. Set Up Environment Variables

Create a .env file in the root of the project and add your OpenWeatherMap API key:

```bash
API_KEY=your_openweathermap_api_key



### 4. Run the app

To run the app on your device or emulator:

```bash
flutter run

To build the app for production (web version):

```bash
flutter build web --release


### 5. run test

To run the tests and ensure everything is working correctly:

```bash
flutter test
