import 'package:flutter/material.dart';
import 'package:yandex_js_maps/yandex_js_maps.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await YandexJsMapFactory.setMapApi(
    'YOUR_MAP_API_KEY',
    lang: 'ru_RU',
    suggestApiKey: 'YOUR_SUGGEST_API_KEY',
  );

  runApp(const MaterialApp(home: Scaffold(body: MyApp())));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late YandexJsMapController mapController;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        YandexJsMap(
          onMapCreated: (controller) => mapController = controller,
          placemarks: [
            PlacemarkEntity(
              geometry: const PointEntity(55.75, 37.62),
              options: const PlacemarkOptions(draggable: true),
            ),
            PlacemarkEntity(
              geometry: const PointEntity(55.75, 37.63),
              options: const PlacemarkOptions(iconColor: 'ff0000'),
            ),
          ],
        ),
      ],
    );
  }
}
