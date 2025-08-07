part of '../../../yandex_js_maps.dart';

/// Configuration options for customizing the appearance and behavior of polygons on Yandex Maps.
///
/// Controls visual styling, interactivity, and balloon/hint behavior for polygon shapes.
class PolygonOptions {
  /// Fill color in CSS format (e.g., '#FF0000' or 'rgba(255,0,0,0.5)')
  final String? fillColor;

  /// Fill opacity (0.0 to 1.0)
  final double? fillOpacity;

  /// Whether to fill the polygon
  final bool fill;

  /// URL of image to use as fill pattern
  final String? fillImageHref;

  /// Fill method: 'stretch' or 'tile' for image fills
  final String? fillMethod;

  /// Stroke/border color in CSS format
  final String? strokeColor;

  /// Gradient stroke colors as list of CSS colors
  final List<String>? strokeColorList;

  /// Stroke opacity (0.0 to 1.0)
  final double? strokeOpacity;

  /// Gradient stroke opacities as list of values
  final List<double>? strokeOpacityList;

  /// Stroke width in pixels
  final int? strokeWidth;

  /// Gradient stroke widths as list of values
  final List<int>? strokeWidthList;

  /// Whether to show outline
  final bool outline;

  /// Whether the polygon can be dragged
  final bool draggable;

  /// Whether the polygon has an associated balloon
  final bool hasBalloon;

  /// Whether the polygon has an associated hint
  final bool hasHint;

  /// Whether z-index changes during interaction
  final bool interactiveZIndex;

  /// Whether the polygon is visible
  final bool visible;

  /// Base z-index
  final int? zIndex;

  /// Active state z-index
  final int? zIndexActive;

  /// Dragging state z-index
  final int? zIndexDrag;

  /// Hover state z-index
  final int? zIndexHover;

  /// Cursor style when hovering
  final String cursor;

  /// Whether to show close button in balloon
  final bool balloonCloseButton;

  /// Whether to open balloon on click
  final bool openBalloonOnClick;

  /// Whether to open empty balloon if no content
  final bool openEmptyBalloon;

  /// Whether to open hint on hover
  final bool openHintOnHover;

  /// Whether to open empty hint if no content
  final bool openEmptyHint;

  /// Interactivity model ('default#geoObject')
  final String? interactivityModel;

  /// Whether to use map margin during dragging
  final bool useMapMarginInDragging;

  /// Map pane where polygon is rendered
  final String? pane;

  /// Whether to synchronize overlay initialization
  final bool syncOverlayInit;

  /// Creates polygon customization options
  const PolygonOptions({
    this.fillColor,
    this.fillOpacity,
    this.fill = true,
    this.fillImageHref,
    this.fillMethod,
    this.strokeColor,
    this.strokeColorList,
    this.strokeOpacity,
    this.strokeOpacityList,
    this.strokeWidth,
    this.strokeWidthList,
    this.outline = true,
    this.draggable = false,
    this.hasBalloon = true,
    this.hasHint = true,
    this.interactiveZIndex = false,
    this.visible = true,
    this.zIndex,
    this.zIndexActive,
    this.zIndexDrag,
    this.zIndexHover,
    this.cursor = 'pointer',
    this.balloonCloseButton = true,
    this.openBalloonOnClick = true,
    this.openEmptyBalloon = false,
    this.openHintOnHover = true,
    this.openEmptyHint = false,
    this.interactivityModel,
    this.useMapMarginInDragging = true,
    this.pane,
    this.syncOverlayInit = false,
  });

  /// Converts options to JavaScript-compatible format for Yandex Maps API
  JSPolygonOptions toJs() => JSPolygonOptions(
        fillColor,
        fillOpacity,
        fill,
        fillImageHref,
        fillMethod,
        strokeColor,
        strokeColorList?.map((e) => e.toJS).toList().toJS,
        strokeOpacity,
        strokeOpacityList?.map((e) => e.toJS).toList().toJS,
        strokeWidth,
        strokeWidthList?.map((e) => e.toJS).toList().toJS,
        outline,
        draggable,
        hasBalloon,
        hasHint,
        interactiveZIndex,
        visible,
        zIndex,
        zIndexActive,
        zIndexDrag,
        zIndexHover,
        cursor,
        balloonCloseButton,
        openBalloonOnClick,
        openEmptyBalloon,
        openHintOnHover,
        openEmptyHint,
        interactivityModel,
        useMapMarginInDragging,
        pane,
        syncOverlayInit,
      );

  /// Serializes options to JSON format
  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (fillColor != null) 'fillColor': fillColor,
      if (fillOpacity != null) 'fillOpacity': fillOpacity,
      'fill': fill,
      if (fillImageHref != null) 'fillImageHref': fillImageHref,
      if (fillMethod != null) 'fillMethod': fillMethod,
      if (strokeColor != null) 'strokeColor': strokeColor,
      if (strokeColorList != null) 'strokeColorList': strokeColorList,
      if (strokeOpacity != null) 'strokeOpacity': strokeOpacity,
      if (strokeOpacityList != null) 'strokeOpacityList': strokeOpacityList,
      if (strokeWidth != null) 'strokeWidth': strokeWidth,
      if (strokeWidthList != null) 'strokeWidthList': strokeWidthList,
      'outline': outline,
      'draggable': draggable,
      'hasBalloon': hasBalloon,
      'hasHint': hasHint,
      'interactiveZIndex': interactiveZIndex,
      'visible': visible,
      if (zIndex != null) 'zIndex': zIndex,
      if (zIndexActive != null) 'zIndexActive': zIndexActive,
      if (zIndexDrag != null) 'zIndexDrag': zIndexDrag,
      if (zIndexHover != null) 'zIndexHover': zIndexHover,
      'cursor': cursor,
      'balloonCloseButton': balloonCloseButton,
      'openBalloonOnClick': openBalloonOnClick,
      'openEmptyBalloon': openEmptyBalloon,
      'openHintOnHover': openHintOnHover,
      'openEmptyHint': openEmptyHint,
      if (interactivityModel != null) 'interactivityModel': interactivityModel,
      'useMapMarginInDragging': useMapMarginInDragging,
      if (pane != null) 'pane': pane,
      'syncOverlayInit': syncOverlayInit,
    };
  }
}
