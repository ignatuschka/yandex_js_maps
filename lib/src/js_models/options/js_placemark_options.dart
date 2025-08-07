part of '../../../yandex_js_maps.dart';

/// JavaScript interop class representing visual and behavioral options for placemarks.
///
/// Configures how markers appear and behave on Yandex Maps.
@JS()
@staticInterop
class JSPlacemarkOptions {
  /// Creates JavaScript placemark options.
  ///
  /// - [preset] Predefined style identifier
  /// - [iconColor] Icon color in CSS format
  /// - [iconLayout] Icon layout type ('default#image' etc.)
  /// - [draggable] Whether the placemark can be dragged
  /// - [hasBalloon] Whether to show info balloons
  /// - [hasHint] Whether to show hover hints
  /// - [hideIconOnBalloonOpen] Whether to hide icon when balloon opens
  /// - [iconOffset] Icon offset in pixels [x,y]
  /// - [interactiveZIndex] Whether z-index changes during interaction
  /// - [interactivityModel] Interaction behavior model
  /// - [openBalloonOnClick] Whether to open balloon on click
  /// - [openEmptyBalloon] Whether to open empty balloons
  /// - [openEmptyHint] Whether to show empty hints
  /// - [openHintOnHover] Whether to show hint on hover
  /// - [pane] Map pane where placemark is rendered
  /// - [pointOverlay] Overlay rendering type
  /// - [syncOverlayInit] Whether to sync overlay initialization
  /// - [useMapMarginInDragging] Whether to respect margins during drag
  /// - [visible] Whether the placemark is visible
  /// - [zIndex] Base z-index
  /// - [zIndexActive] z-index during interaction
  /// - [zIndexDrag] z-index during dragging
  /// - [zIndexHover] z-index during hover
  /// - [cursor] Cursor style when hovering
  /// - [balloonCloseButton] Whether balloons have close buttons
  external factory JSPlacemarkOptions(
    String? preset,
    String? iconColor,
    String? iconLayout,
    bool draggable,
    bool hasBalloon,
    bool hasHint,
    bool hideIconOnBalloonOpen,
    JSArray? iconOffset,
    bool interactiveZIndex,
    String? interactivityModel,
    bool openBalloonOnClick,
    bool openEmptyBalloon,
    bool openEmptyHint,
    bool openHintOnHover,
    String? pane,
    String? pointOverlay,
    bool syncOverlayInit,
    bool useMapMarginInDragging,
    bool visible,
    int? zIndex,
    int? zIndexActive,
    int? zIndexDrag,
    int? zIndexHover,
    String? cursor,
    bool balloonCloseButton,
  );
}

/// Extension providing property accessors for placemark options.
extension JSPlacemarkOptionsExt on JSPlacemarkOptions {
  external String? get preset;
  external String? get iconColor;
  external String? get iconLayout;
  external bool get draggable;
  external bool get hasBalloon;
  external bool get hasHint;
  external bool get hideIconOnBalloonOpen;
  external JSArray? get iconOffset;
  external bool get interactiveZIndex;
  external String? get interactivityModel;
  external bool get openBalloonOnClick;
  external bool get openEmptyBalloon;
  external bool get openEmptyHint;
  external bool get openHintOnHover;
  external String? get pane;
  external String? get pointOverlay;
  external bool get syncOverlayInit;
  external bool get useMapMarginInDragging;
  external bool get visible;
  external int? get zIndex;
  external int? get zIndexActive;
  external int? get zIndexDrag;
  external int? get zIndexHover;
  external String? get cursor;
  external bool get balloonCloseButton;
}
