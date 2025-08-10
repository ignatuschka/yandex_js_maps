part of '../../../yandex_js_maps.dart';

/// Configuration options for customizing the appearance and behavior of polylines on Yandex Maps.
///
/// Controls visual styling, interactivity, and balloon/hint behavior for polyline shapes.
class PolylineOptions {
  /// Cursor style when hovering over the polyline
  final String cursor;

  /// Whether the polyline can be dragged
  final bool draggable;

  /// Whether the polyline has an associated balloon
  final bool hasBalloon;

  /// Whether the polyline has an associated hint
  final bool hasHint;

  /// Whether z-index changes during interaction
  final bool interactiveZIndex;

  /// Interactivity model ('default#geoObject')
  final String interactivityModel;

  /// Map pane where polyline is rendered ('areas')
  final String pane;

  /// Overlay type for the polyline ('default#polyline')
  final String lineStringOverlay;

  /// Opacity of the polyline (0.0 to 1.0)
  final double opacity;

  /// Whether to open balloon on click
  final bool openBalloonOnClick;

  /// Whether to open empty balloon if no content
  final bool openEmptyBalloon;

  /// Whether to open empty hint if no content
  final bool openEmptyHint;

  /// Whether to open hint on hover
  final bool openHintOnHover;

  /// Stroke color in CSS format (e.g., '#FF0000')
  final String? strokeColor;

  /// Stroke opacity (0.0 to 1.0)
  final double strokeOpacity;

  /// Stroke width in pixels
  final int strokeWidth;

  /// Whether to synchronize overlay initialization
  final bool syncOverlayInit;

  /// Whether to use map margin during dragging
  final bool useMapMarginInDragging;

  /// Whether the polyline is visible
  final bool visible;

  /// Base z-index
  final int? zIndex;

  /// Active state z-index
  final int? zIndexActive;

  /// Dragging state z-index
  final int? zIndexDrag;

  /// Hover state z-index
  final int? zIndexHover;

  /// Creates polyline customization options
  const PolylineOptions({
    this.cursor = 'pointer',
    this.draggable = false,
    this.hasBalloon = true,
    this.hasHint = true,
    this.interactiveZIndex = false,
    this.interactivityModel = 'default#geoObject',
    this.pane = 'areas',
    this.lineStringOverlay = 'default#polyline',
    this.opacity = 1.0,
    this.openBalloonOnClick = true,
    this.openEmptyBalloon = false,
    this.openEmptyHint = false,
    this.openHintOnHover = true,
    this.strokeColor,
    this.strokeOpacity = 1.0,
    this.strokeWidth = 1,
    this.syncOverlayInit = false,
    this.useMapMarginInDragging = true,
    this.visible = true,
    this.zIndex,
    this.zIndexActive,
    this.zIndexDrag,
    this.zIndexHover,
  });

  /// Converts options to JavaScript-compatible format for Yandex Maps API
  JSPolylineOptions toJs() => JSPolylineOptions(
        cursor,
        draggable,
        hasBalloon,
        hasHint,
        interactiveZIndex,
        interactivityModel,
        pane,
        lineStringOverlay,
        opacity,
        openBalloonOnClick,
        openEmptyBalloon,
        openEmptyHint,
        openHintOnHover,
        strokeColor,
        strokeOpacity,
        strokeWidth,
        syncOverlayInit,
        useMapMarginInDragging,
        visible,
        zIndex,
        zIndexActive,
        zIndexDrag,
        zIndexHover,
      );

  /// Serializes options to JSON format
  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'cursor': cursor,
      'draggable': draggable,
      'hasBalloon': hasBalloon,
      'hasHint': hasHint,
      'interactiveZIndex': interactiveZIndex,
      'interactivityModel': interactivityModel,
      'pane': pane,
      'lineStringOverlay': lineStringOverlay,
      'opacity': opacity,
      'openBalloonOnClick': openBalloonOnClick,
      'openEmptyBalloon': openEmptyBalloon,
      'openEmptyHint': openEmptyHint,
      'openHintOnHover': openHintOnHover,
      if (strokeColor != null) 'strokeColor': strokeColor,
      'strokeOpacity': strokeOpacity,
      'strokeWidth': strokeWidth,
      'syncOverlayInit': syncOverlayInit,
      'useMapMarginInDragging': useMapMarginInDragging,
      'visible': visible,
      if (zIndex != null) 'zIndex': zIndex,
      if (zIndexActive != null) 'zIndexActive': zIndexActive,
      if (zIndexDrag != null) 'zIndexDrag': zIndexDrag,
      if (zIndexHover != null) 'zIndexHover': zIndexHover,
    };
  }
}
