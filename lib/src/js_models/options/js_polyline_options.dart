part of '../../../yandex_js_maps.dart';

/// JavaScript interop class representing visual and behavioral options for polylines.
///
/// Configures how polylines appear and behave on Yandex Maps.
@JS()
@staticInterop
class JSPolylineOptions {
  /// Creates JavaScript polyline options.
  ///
  /// - [cursor] Cursor style when hovering
  /// - [draggable] Whether the polyline can be dragged
  /// - [hasBalloon] Whether to show info balloons
  /// - [hasHint] Whether to show hover hints
  /// - [interactiveZIndex] Whether z-index changes during interaction
  /// - [interactivityModel] Interaction behavior model
  /// - [pane] Map pane where polyline is rendered
  /// - [lineStringOverlay] Overlay rendering type
  /// - [opacity] Polyline opacity (0.0-1.0)
  /// - [openBalloonOnClick] Whether to open balloon on click
  /// - [openEmptyBalloon] Whether to open empty balloons
  /// - [openEmptyHint] Whether to show empty hints
  /// - [openHintOnHover] Whether to show hint on hover
  /// - [strokeColor] Line color in CSS format
  /// - [strokeOpacity] Line opacity (0.0-1.0)
  /// - [strokeWidth] Line width in pixels
  /// - [syncOverlayInit] Whether to sync overlay initialization
  /// - [useMapMarginInDragging] Whether to respect margins during drag
  /// - [visible] Whether the polyline is visible
  /// - [zIndex] Base z-index
  /// - [zIndexActive] z-index during interaction
  /// - [zIndexDrag] z-index during dragging
  /// - [zIndexHover] z-index during hover
  external factory JSPolylineOptions(
    String? cursor,
    bool draggable,
    bool hasBalloon,
    bool hasHint,
    bool interactiveZIndex,
    String? interactivityModel,
    String? pane,
    String? lineStringOverlay,
    double? opacity,
    bool openBalloonOnClick,
    bool openEmptyBalloon,
    bool openEmptyHint,
    bool openHintOnHover,
    String? strokeColor,
    double? strokeOpacity,
    int? strokeWidth,
    bool syncOverlayInit,
    bool useMapMarginInDragging,
    bool visible,
    int? zIndex,
    int? zIndexActive,
    int? zIndexDrag,
    int? zIndexHover,
  );
}

/// Extension providing property accessors for polyline options.
extension JSPolylineOptionsExt on JSPolylineOptions {
  external String? get cursor;
  external bool get draggable;
  external bool get hasBalloon;
  external bool get hasHint;
  external bool get interactiveZIndex;
  external String? get interactivityModel;
  external String? get pane;
  external String? get lineStringOverlay;
  external double? get opacity;
  external bool get openBalloonOnClick;
  external bool get openEmptyBalloon;
  external bool get openEmptyHint;
  external bool get openHintOnHover;
  external String? get strokeColor;
  external double? get strokeOpacity;
  external int? get strokeWidth;
  external bool get syncOverlayInit;
  external bool get useMapMarginInDragging;
  external bool get visible;
  external int? get zIndex;
  external int? get zIndexActive;
  external int? get zIndexDrag;
  external int? get zIndexHover;
}
