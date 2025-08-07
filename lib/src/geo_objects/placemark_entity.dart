part of '../../yandex_js_maps.dart';

/// Represents a marker (placemark) that can be displayed on a Yandex Map.
///
/// A placemark consists of a geographic location, visual properties,
/// and content that appears in popups and hints.
class PlacemarkEntity {
  /// Unique identifier for this placemark
  final String id;

  /// Geographic coordinates where the placemark is positioned
  final PointEntity geometry;

  /// Content and informational properties of the placemark
  final PlacemarkProperties properties;

  /// Visual styling and behavior options
  final PlacemarkOptions options;

  /// Creates a map placemark with the specified attributes.
  ///
  /// - [geometry] The geographic coordinates (required)
  /// - [properties] Content and informational properties
  /// - [options] Visual styling and behavior options
  PlacemarkEntity({
    required this.geometry,
    this.properties = const PlacemarkProperties(),
    this.options = const PlacemarkOptions(),
  }) : id = const Uuid().v4();

  /// Converts the placemark to a JavaScript-compatible format.
  ///
  /// Used internally for interoperability with Yandex Maps JavaScript API.
  JSPlacemarkEntity toJs() => JSPlacemarkEntity(
        geometry.toJs(),
        properties.toJs(),
        options.toJs(),
        id,
      );

  /// Serializes the placemark to JSON format.
  ///
  /// Useful for storage or transmission of placemark data.
  Map<String, dynamic> toJson() => {
        'id': id,
        'geometry': [geometry.lat, geometry.lon],
        'properties': properties.toJson(),
        'options': options.toJson(),
      };
}
