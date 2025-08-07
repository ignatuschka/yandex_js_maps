part of '../../yandex_js_maps.dart';

/// JavaScript interop class representing a polygon entity in Yandex Maps.
///
/// Bridges between Dart and JavaScript representations of polygon shapes.
@JS()
@staticInterop
class JSPolygonEntity {
  /// Creates a JavaScript polygon entity.
  ///
  /// - [geometry] Array of coordinate rings defining the polygon shape
  /// - [properties] Content and informational properties
  /// - [options] Visual styling and behavior options
  /// - [id] Unique identifier for the polygon
  external factory JSPolygonEntity(
    JSArray geometry,
    JSPolygonProperties properties,
    JSPolygonOptions options,
    String id,
  );
}

/// Extension providing property accessors for JSPolygonEntity.
extension JSPolygonEntityExt on JSPolygonEntity {
  /// Gets the polygon's coordinate rings (outer boundary and holes)
  external JSArray get geometry;

  /// Gets the polygon's content properties
  external JSPolygonProperties get properties;

  /// Gets the polygon's visual options
  external JSPolygonOptions get options;

  /// Gets the polygon's unique identifier
  external String get id;
}
