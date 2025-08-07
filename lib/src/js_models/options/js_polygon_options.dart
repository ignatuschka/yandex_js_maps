part of '../../../yandex_js_maps.dart';

/// JavaScript interop class representing visual and behavioral options for polygons.
///
/// Configures how polygon shapes appear and behave on Yandex Maps.
@JS()
@staticInterop
class JSPolygonOptions {
  /// Creates JavaScript polygon options.
  ///
  /// - [fillColor] Interior color in CSS format
  /// - [fillOpacity] Interior opacity (0.0-1.0)
  /// - [fill] Whether to fill the polygon
  /// - [fillImageHref] URL for fill pattern image
  /// - [fillMethod] Fill rendering method ('stretch' or 'tile')
  /// - [strokeColor] Border color in CSS format
  /// - [strokeColorList] Gradient border colors
  /// - [strokeOpacity] Border opacity (0.0-1.0)
  /// - [strokeOpacityList] Gradient border opacities
  /// - [strokeWidth] Border width in pixels
  /// - [strokeWidthList] Gradient border widths
  /// - [outline] Whether to show borders
  /// - [draggable] Whether the polygon can be dragged
  /// - [hasBalloon] Whether to show info balloons
  /// - [hasHint] Whether to show hover hints
  /// - [interactiveZIndex] Whether z-index changes during interaction
  /// - [visible] Whether the polygon is visible
  /// - [zIndex] Base z-index
  /// - [zIndexActive] z-index during interaction
  /// - [zIndexDrag] z-index during dragging
  /// - [zIndexHover] z-index during hover
  /// - [cursor] Cursor style when hovering
  /// - [balloonCloseButton] Whether balloons have close buttons
  /// - [openBalloonOnClick] Whether to open balloon on click
  /// - [openEmptyBalloon] Whether to open empty balloons
  /// - [openHintOnHover Whether to show hint on hover
  /// - [openEmptyHint] Whether to show empty hints
  /// - [interactivityModel] Interaction behavior model
  /// - [useMapMarginInDragging] Whether to respect margins during drag
  /// - [pane] Map pane where polygon is rendered
  /// - [syncOverlayInit] Whether to sync overlay initialization
  external factory JSPolygonOptions(
    String? fillColor,
    double? fillOpacity,
    bool fill,
    String? fillImageHref,
    String? fillMethod,
    String? strokeColor,
    JSArray? strokeColorList,
    double? strokeOpacity,
    JSArray? strokeOpacityList,
    int? strokeWidth,
    JSArray? strokeWidthList,
    bool outline,
    bool draggable,
    bool hasBalloon,
    bool hasHint,
    bool interactiveZIndex,
    bool visible,
    int? zIndex,
    int? zIndexActive,
    int? zIndexDrag,
    int? zIndexHover,
    String? cursor,
    bool balloonCloseButton,
    bool openBalloonOnClick,
    bool openEmptyBalloon,
    bool openHintOnHover,
    bool openEmptyHint,
    String? interactivityModel,
    bool useMapMarginInDragging,
    String? pane,
    bool syncOverlayInit,
  );
}

/// Extension providing property accessors for polygon options.
extension JSPolygonOptionsExt on JSPolygonOptions {
  external String? get fillColor;
  external double? get fillOpacity;
  external bool get fill;
  external String? get fillImageHref;
  external String? get fillMethod;
  external String? get strokeColor;
  external JSArray? get strokeColorList;
  external double? get strokeOpacity;
  external JSArray? get strokeOpacityList;
  external int? get strokeWidth;
  external JSArray? get strokeWidthList;
  external bool get outline;
  external bool get draggable;
  external bool get hasBalloon;
  external bool get hasHint;
  external bool get interactiveZIndex;
  external bool get visible;
  external int? get zIndex;
  external int? get zIndexActive;
  external int? get zIndexDrag;
  external int? get zIndexHover;
  external String? get cursor;
  external bool get balloonCloseButton;
  external bool get openBalloonOnClick;
  external bool get openEmptyBalloon;
  external bool get openHintOnHover;
  external bool get openEmptyHint;
  external String? get interactivityModel;
  external bool get useMapMarginInDragging;
  external String? get pane;
  external bool get syncOverlayInit;
}
