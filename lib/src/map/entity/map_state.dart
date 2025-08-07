part of '../../../yandex_js_maps.dart';

/// Defines the initial state and configuration for a Yandex Map instance.
///
/// This class specifies how the map should be displayed when first loaded,
/// including viewport position, zoom level, and UI controls.
class MapState {
  /// Geographic coordinates for the map's initial center point
  final PointEntity center;

  /// Optional bounding box to constrain the map view
  ///
  /// When specified, the map will fit to show this area.
  /// Typically contains southwest and northeast points.
  final List<PointEntity>? bounds;

  /// Initial zoom level (0-23)
  final int zoom;

  /// Enabled map interaction behaviors
  ///
  /// Common values: ['default', 'scrollZoom', 'drag', 'multiTouch']
  final List<String>? behaviors;

  /// UI controls to display on the map
  ///
  /// Common values: ['zoomControl', 'typeSelector', 'fullscreenControl']
  final List<String>? controls;

  /// Margins around the map viewport in pixels [top, right, bottom, left]
  final List<double>? margin;

  /// Base map display type
  final MapType? type;

  /// Creates map initial state configuration
  ///
  /// - [center] Initial map center coordinates (defaults to Moscow)
  /// - [bounds] Optional bounding box for constrained view
  /// - [zoom] Initial zoom level (default 10)
  /// - [behaviors] Enabled interaction behaviors
  /// - [controls] Visible UI controls
  /// - [margin] Viewport margins in pixels
  /// - [type] Base map display type
  const MapState({
    this.center = const PointEntity(55.75, 37.62),
    this.bounds,
    this.zoom = 10,
    this.behaviors = const ['default'],
    this.controls = const ['default'],
    this.margin,
    this.type = MapType.map,
  });

  /// Serializes the map state to JSON format
  Map<String, dynamic> toJson() {
    return {
      'center': [center.lat, center.lon],
      if (bounds != null) 'bounds': bounds?.map((e) => [e.lat, e.lon]).toList(),
      'zoom': zoom,
      if (behaviors != null) 'behaviors': behaviors,
      if (controls != null) 'controls': controls,
      if (margin != null) 'margin': margin,
      if (type != null) 'type': type?.name,
    };
  }
}
