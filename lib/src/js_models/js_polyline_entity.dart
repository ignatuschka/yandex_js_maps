part of '../../yandex_js_maps.dart';

/// JavaScript interop class representing a polyline entity in Yandex Maps.
///
/// This class bridges between Dart and JavaScript representations of polylines.
@JS()
@staticInterop
class JSPolylineEntity {
  /// Creates a JavaScript polyline entity with the given parameters.
  ///
  /// - [geometry] Array of points defining the polyline path
  /// - [properties] Content and informational properties
  /// - [options] Visual styling and behavior options
  /// - [id] Unique identifier for the polyline
  external factory JSPolylineEntity(
    JSArray geometry,
    JSPolylineProperties properties,
    JSPolylineOptions options,
    String id,
  );
}

/// Extension providing accessors for JSPolylineEntity properties.
extension JSPolylineEntityExt on JSPolylineEntity {
  /// Gets the geometry (array of points) of the polyline
  external JSArray get geometry;

  /// Gets the properties (content and information) of the polyline
  external JSPolylineProperties get properties;

  /// Gets the visual styling options of the polyline
  external JSPolylineOptions get options;

  /// Gets the unique identifier of the polyline
  external String get id;
}
