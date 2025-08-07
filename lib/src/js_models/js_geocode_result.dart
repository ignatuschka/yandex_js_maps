part of '../../yandex_js_maps.dart';

/// JavaScript interop type for Yandex Maps geocoding results.
///
/// Represents a single geocoding result from the Yandex Maps geocoding service,
/// containing location coordinates and associated address information.
@JS('JsGeocodeResult')
extension type JsGeocodeResult._(JSObject _) implements JSObject {
  /// Creates a JavaScript geocoding result object.
  external JsGeocodeResult();

  /// The latitude coordinate of the geocoded location.
  external double get lat;

  /// The longitude coordinate of the geocoded location.
  external double get lon;

  /// The formal name or address of the location.
  ///
  /// Typically includes the official address or place name
  /// as recognized by Yandex Maps.
  external String? get name;

  /// Additional descriptive information about the location.
  ///
  /// May include contextual details like neighborhood,
  /// city district, or points of interest nearby.
  external String? get description;
}
