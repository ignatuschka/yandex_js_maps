# Yandex JS Maps for Flutter Web

**`yandex_js_maps`** is a powerful and highly customizable Flutter Web plugin for embedding and interacting with **Yandex.Maps JavaScript API** using pure Dart and JS interop. This package enables seamless integration of Yandex Maps into Flutter Web apps with support for map configuration, markers, polygons, polylines, geocoding, and address suggestions.

---

## Features

- Embed fully interactive Yandex Maps in Flutter Web
- Control the map via Dart-based `YandexJsMapController`
- Add/update/remove:
  - **Placemarks (Markers)**
  - **Polygons**
  - **Polylines**
- Animate camera (move, zoom, bounds fit)
- Geocoding and Suggest (autocomplete) APIs
- Fine-grained control of map behaviors and UI
- Pure Dart/JS interop — no additional platform channels

---

## Getting Started

### 1. Add dependency

```yaml
dependencies:
  yandex_js_maps: 1.0.0
```

### 2. Configure web/index.html

Include required files via `index.html`:

```html
<script src="packages/yandex_js_maps/src/js/yandex_map_init.js"></script>
<script src="packages/yandex_js_maps/src/js/yandex_map_controller.js"></script>
```
These files include:
- **`yandex_map_init.js`**: Initializes map container
- **`yandex_map_controller.js`**: Implements JS methods used via interop

### 3. Initialize API

```dart
await YandexJsMapFactory.setMapApi('YOUR_YANDEX_API_KEY');
```

You can optionally pass `suggestApiKey` for address suggestion.

---

## Usage

### Embed a map widget

```dart
YandexJsMap(
  onMapCreated: (controller) => this._controller = controller,
  mapState: MapState(center: PointEntity(55.75, 37.62), zoom: 10),
)
```

### Move map

```dart
await _controller.moveTo(PointEntity(55.75, 37.62), zoom: 12);
```

### Add a placemark

```dart
await _controller.addPlacemark(
  PlacemarkEntity(
    point: PointEntity(55.75, 37.62),
    properties: PlacemarkProperties(hintContent: 'Hint', balloonContent: 'Details'),
    options: PlacemarkOptions(preset: 'islands#redDotIcon'),
  ),
);
```

### Add a polygon

```dart
await _controller.addPolygon(
  PolygonEntity(
    geometry: [
      [PointEntity(55.75, 37.61), PointEntity(55.76, 37.62), PointEntity(55.75, 37.63)],
    ],
    properties: PolygonProperties(hintContent: 'Polygon'),
    options: PolygonOptions(fillColor: '#88000088'),
  ),
);
```

### Geocoding

```dart
final results = await _controller.geocode('Москва');
```

### Suggest API

```dart
final suggestions = await _controller.suggest('Тверская');
```

---

## API Overview

| Feature         | Method/Entity |
|----------------|----------------|
| Move Camera    | `moveTo()`, `fitBounds()` |
| Zoom Control   | `setZoom()`, `zoomIn()`, `zoomOut()` |
| Placemarks     | `addPlacemark()`, `removePlacemark()`, `updatePlacemark...()` |
| Polygons       | `addPolygon()`, `removePolygon()`, `updatePolygon...()` |
| Polylines      | `addPolyline()`, `removePolyline()`, `updatePolyline...()` |
| Geocoding      | `geocode()` |
| Suggest        | `suggest()` |

All parameters are fully typed Dart classes like `PlacemarkEntity`, `PolygonEntity`, etc.

---

## Requirements

- Flutter Web
- Dart 3+
- Yandex Maps API key
- JS interop requires Chrome or modern browsers

---

## Example Project

A full example is available in the `example/` directory:

```dart
import 'package:flutter/material.dart';
import 'package:yandex_js_maps/yandex_js_maps.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await YandexJsMapFactory.setMapApi('YOUR_API_KEY');
  runApp(const MyApp());
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
```

---

## Notes

- This package only works on **Flutter Web**.
- `dart:html`, `dart:js_interop`, and `dart:js_util` are not supported on mobile/desktop.
- Yandex JS API requires an internet connection to load scripts.

---

