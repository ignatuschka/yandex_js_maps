part of '../../yandex_js_maps.dart';

/// JavaScript interop class representing a placemark (marker) entity in Yandex Maps.
///
/// Provides a bridge between Dart and JavaScript representations of map markers,
/// including their position, visual properties, and interactive behavior.
@JS()
@staticInterop
class JSPlacemarkEntity {
  /// Creates a JavaScript placemark entity with the specified configuration.
  ///
  /// - [geometry] Coordinates array [latitude, longitude] as JS numbers
  /// - [properties] Content and informational properties of the placemark
  /// - [options] Visual styling and behavior options
  /// - [id] Unique identifier for the placemark
  external factory JSPlacemarkEntity(
    JSArray<JSNumber> geometry,
    JSPlacemarkProperties properties,
    JSPlacemarkOptions options,
    String id,
  );
}

/// Extension providing access to JSPlacemarkEntity properties.
extension JSPlacemarkEntityExt on JSPlacemarkEntity {
  /// Gets the geographic coordinates of the placemark as [latitude, longitude]
  external JSArray<JSNumber> get geometry;

  /// Gets the content and informational properties of the placemark
  external JSPlacemarkProperties get properties;

  /// Gets the visual styling and behavior options
  external JSPlacemarkOptions get options;

  /// Gets the unique identifier of the placemark
  external String get id;
}
