part of '../../yandex_js_maps.dart';

/// Provides conversion between Dart [MapType] enum and Yandex Maps API string identifiers.
///
/// This extension adds the [name] getter to [MapType] enum values,
/// returning the corresponding API-compatible string representation.
extension MapTypeExtension on MapType {
  /// Gets the Yandex Maps API string identifier for this map type.
  ///
  /// Returns:
  /// - 'yandex#map' for standard map view
  /// - 'yandex#satellite' for satellite imagery
  /// - 'yandex#hybrid' for hybrid map (satellite with labels)
  String get name {
    switch (this) {
      case MapType.map:
        return 'yandex#map';
      case MapType.satellite:
        return 'yandex#satellite';
      case MapType.hybrid:
        return 'yandex#hybrid';
    }
  }
}
