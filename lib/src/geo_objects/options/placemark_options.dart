part of '../../../yandex_js_maps.dart';

/// Configuration options for customizing the appearance and behavior of placemarks on Yandex Maps.
///
/// These options control visual styling, interactivity, and balloon/hint behavior
/// for individual placemark instances.
class PlacemarkOptions {
  /// Preset style identifier from Yandex Maps (e.g., 'islands#redIcon')
  final String? preset;

  /// Icon color in CSS format (e.g., '#FF0000' or 'rgb(255,0,0)')
  final String? iconColor;

  /// Layout type for the icon ('default#image' or 'default#imageWithContent')
  final String? iconLayout;

  /// Whether the placemark can be dragged
  final bool draggable;

  /// Whether the placemark has an associated balloon
  final bool hasBalloon;

  /// Whether the placemark has an associated hint
  final bool hasHint;

  /// Whether to hide icon when balloon is open
  final bool hideIconOnBalloonOpen;

  /// Icon offset in pixels [x, y]
  final List<int>? iconOffset;

  /// Whether z-index changes during interaction
  final bool interactiveZIndex;

  /// Interactivity model ('default#geoObject')
  final String interactivityModel;

  /// Whether to open balloon on click
  final bool openBalloonOnClick;

  /// Whether to open empty balloon if no content
  final bool openEmptyBalloon;

  /// Whether to open empty hint if no content
  final bool openEmptyHint;

  /// Whether to open hint on hover
  final bool openHintOnHover;

  /// Map pane where placemark is rendered ('places')
  final String pane;

  /// Overlay type or constructor ('default#placemark')
  final dynamic pointOverlay;

  /// Whether to synchronize overlay initialization
  final bool syncOverlayInit;

  /// Whether to use map margin during dragging
  final bool useMapMarginInDragging;

  /// Whether the placemark is visible
  final bool visible;

  /// Base z-index
  final int? zIndex;

  /// Active state z-index
  final int? zIndexActive;

  /// Dragging state z-index
  final int? zIndexDrag;

  /// Hover state z-index
  final int? zIndexHover;

  /// Cursor style when hovering ('pointer')
  final String cursor;

  /// Whether to show close button in balloon
  final bool balloonCloseButton;

  /// Creates placemark customization options
  const PlacemarkOptions({
    this.preset,
    this.iconColor,
    this.iconLayout,
    this.draggable = false,
    this.hasBalloon = true,
    this.hasHint = true,
    this.hideIconOnBalloonOpen = true,
    this.iconOffset,
    this.interactiveZIndex = true,
    this.interactivityModel = 'default#geoObject',
    this.openBalloonOnClick = true,
    this.openEmptyBalloon = false,
    this.openEmptyHint = false,
    this.openHintOnHover = true,
    this.pane = 'places',
    this.pointOverlay = 'default#placemark',
    this.syncOverlayInit = false,
    this.useMapMarginInDragging = true,
    this.visible = true,
    this.zIndex,
    this.zIndexActive,
    this.zIndexDrag,
    this.zIndexHover,
    this.cursor = 'pointer',
    this.balloonCloseButton = true,
  });

  /// Converts options to JavaScript-compatible format for Yandex Maps API
  JSPlacemarkOptions toJs() => JSPlacemarkOptions(
        preset,
        iconColor,
        iconLayout,
        draggable,
        hasBalloon,
        hasHint,
        hideIconOnBalloonOpen,
        iconOffset?.map((e) => e.toJS).toList().toJS,
        interactiveZIndex,
        interactivityModel,
        openBalloonOnClick,
        openEmptyBalloon,
        openEmptyHint,
        openHintOnHover,
        pane,
        pointOverlay,
        syncOverlayInit,
        useMapMarginInDragging,
        visible,
        zIndex,
        zIndexActive,
        zIndexDrag,
        zIndexHover,
        cursor,
        balloonCloseButton,
      );

  /// Serializes options to JSON format
  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (preset != null) 'preset': preset,
      if (iconColor != null) 'iconColor': iconColor,
      if (iconLayout != null) 'iconLayout': iconLayout,
      'draggable': draggable,
      'hasBalloon': hasBalloon,
      'hasHint': hasHint,
      'hideIconOnBalloonOpen': hideIconOnBalloonOpen,
      if (iconOffset != null) 'iconOffset': iconOffset,
      'interactiveZIndex': interactiveZIndex,
      'interactivityModel': interactivityModel,
      'openBalloonOnClick': openBalloonOnClick,
      'openEmptyBalloon': openEmptyBalloon,
      'openEmptyHint': openEmptyHint,
      'openHintOnHover': openHintOnHover,
      'pane': pane,
      'pointOverlay': pointOverlay,
      'syncOverlayInit': syncOverlayInit,
      'useMapMarginInDragging': useMapMarginInDragging,
      'visible': visible,
      if (zIndex != null) 'zIndex': zIndex,
      if (zIndexActive != null) 'zIndexActive': zIndexActive,
      if (zIndexDrag != null) 'zIndexDrag': zIndexDrag,
      if (zIndexHover != null) 'zIndexHover': zIndexHover,
      'cursor': cursor,
      'balloonCloseButton': balloonCloseButton,
    };
  }
}
