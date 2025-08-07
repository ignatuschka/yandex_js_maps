part of '../../yandex_js_maps.dart';

/// Represents a geocoding result from Yandex Maps API.
///
/// Returned by [YandexJsMapController.geocode] when converting between
/// addresses and geographic coordinates (forward/reverse geocoding).
class GeocodeResult {
  /// The geographic coordinates of the resolved location.
  ///
  /// Contains latitude/longitude values. May be null if geocoding
  /// couldn't determine exact coordinates for the request.
  final PointEntity? point;

  /// The formal name of the location.
  ///
  /// Typically includes the official address or place name
  /// as recognized by Yandex Maps.
  final String? name;

  /// Additional descriptive information about the location.
  ///
  /// May include contextual details like neighborhood,
  /// city district, or points of interest nearby.
  final String? description;

  /// Creates a geocoding result with resolved location data.
  ///
  /// - [point] Geographic coordinates (required)
  /// - [name] Formal location name
  /// - [description] Additional context
  const GeocodeResult({
    required this.point,
    this.name,
    this.description,
  });
}
