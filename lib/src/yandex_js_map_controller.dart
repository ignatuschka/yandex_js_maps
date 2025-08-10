part of '../yandex_js_maps.dart';

// JavaScript interop functions ================================================

/// JS interop: Moves the map camera to specified coordinates
@JS('yandexMapController.moveTo')
external JSPromise moveToJs(double lat, double lon, int zoom, int durationMs, String mapId);

/// JS interop: Sets the map zoom level
@JS('yandexMapController.setZoom')
external JSPromise setZoomJs(int zoom, int durationMs, String mapId);

/// JS interop: Zooms the map in by one level
@JS('yandexMapController.zoomIn')
external JSPromise zoomInJs(int durationMs, String mapId);

/// JS interop: Zooms the map out by one level
@JS('yandexMapController.zoomOut')
external JSPromise zoomOutJs(int durationMs, String mapId);

/// JS interop: Gets current zoom level
@JS('yandexMapController.getZoom')
external JSPromise<JSBigInt> getZoomJs(String mapId);

/// JS interop: Gets current map center coordinates
@JS('yandexMapController.getCenter')
external JSPromise<JSArray> getCenterJs(String mapId);

/// JS interop: Fits map view to specified bounds
@JS('yandexMapController.fitBounds')
external JSPromise fitBoundsJs(double swLat, double swLon, double neLat, double neLon, int durationMs, String mapId);

/// JS interop: Enables/disables scroll zoom interaction
@JS('yandexMapController.enableScrollZoom')
external JSPromise enableScrollZoomJs(bool enabled, String mapId);

/// JS interop: Enables/disables map dragging
@JS('yandexMapController.enableDrag')
external JSPromise enableDragJs(bool enabled, String mapId);

/// JS interop: Sets the map type (e.g. 'map', 'satellite')
@JS('yandexMapController.setMapType')
external JSPromise setMapTypeJs(String type, String mapId);

/// JS interop: Adds a placemark to the map
@JS('yandexMapController.addPlacemark')
external JSPromise addPlacemarkJs(JSArray<JSNumber> geometry, JSPlacemarkProperties properties,
    JSPlacemarkOptions options, String mapId, String placemarkId);

/// JS interop: Removes a placemark from the map
@JS('yandexMapController.removePlacemark')
external JSPromise removePlacemarkJs(String placemarkId, String mapId);

/// JS interop: Updates placemark position
@JS('yandexMapController.updatePlacemarkGeometry')
external JSPromise updatePlacemarkGeometryJs(String placemarkId, JSArray<JSNumber> newGeometry);

/// JS interop: Updates placemark properties
@JS('yandexMapController.updatePlacemarkProperties')
external JSPromise updatePlacemarkPropertiesJs(String placemarkId, JSPlacemarkProperties newProperties);

/// JS interop: Updates placemark visual options
@JS('yandexMapController.updatePlacemarkOptions')
external JSPromise updatePlacemarkOptionsJs(String placemarkId, JSPlacemarkOptions newOptions);

/// JS interop: Adds a polygon to the map
@JS('yandexMapController.addPolygon')
external JSPromise addPolygonJs(
    JSArray geometry, JSPolygonProperties properties, JSPolygonOptions options, String mapId, String polygonId);

/// JS interop: Removes a polygon from the map
@JS('yandexMapController.removePolygon')
external JSPromise removePolygonJs(String polygonId, String mapId);

/// JS interop: Updates polygon geometry
@JS('yandexMapController.updatePolygonGeometry')
external JSPromise updatePolygonGeometryJs(String polygonId, JSArray newGeometry);

/// JS interop: Updates polygon properties
@JS('yandexMapController.updatePolygonProperties')
external JSPromise updatePolygonPropertiesJs(String polygonId, JSPolygonProperties newProperties);

/// JS interop: Updates polygon visual options
@JS('yandexMapController.updatePolygonOptions')
external JSPromise updatePolygonOptionsJs(String polygonId, JSPolygonOptions newOptions);

/// JS interop: Adds a polyline to the map
@JS('yandexMapController.addPolyline')
external JSPromise addPolylineJs(
    JSArray geometry, JSPolylineProperties properties, JSPolylineOptions options, String mapId, String polylineId);

/// JS interop: Removes a polyline from the map
@JS('yandexMapController.removePolyline')
external JSPromise removePolylineJs(String polylineId, String mapId);

/// JS interop: Updates polyline geometry
@JS('yandexMapController.updatePolylineGeometry')
external JSPromise updatePolylineGeometryJs(String polylineId, JSArray newGeometry);

/// JS interop: Updates polyline properties
@JS('yandexMapController.updatePolylineProperties')
external JSPromise updatePolylinePropertiesJs(String polylineId, JSPolylineProperties newProps);

/// JS interop: Updates polyline visual options
@JS('yandexMapController.updatePolylineOptions')
external JSPromise updatePolylineOptionsJs(String polylineId, JSPolylineOptions newOpts);

/// JS interop: Performs geocoding request
@JS('yandexMapController.geocode')
external JSPromise<JSArray<JsGeocodeResult>> geocodeJs(JSAny request, JSGeocodeOptions options);

/// JS interop: Performs search suggestions request
@JS('yandexMapController.suggest')
external JSPromise<JSArray<JsSuggestResult>> suggestJs(JSString request, JSSuggestOptions options);

// Dart Controller Class =======================================================

/// Controller class for interacting with Yandex Maps JavaScript API.
///
/// Provides a Dart-friendly interface to manage map state, markers, shapes,
/// and geocoding operations. All methods return Futures that complete when
/// the corresponding JavaScript operation finishes.
class YandexJsMapController {
  YandexJsMapController._(this._mapId, this.placemarks, this.polygons, this.polylines);

  /// Internal map identifier used for DOM element reference
  final String _mapId;

  /// List of currently displayed placemarks on the map
  final List<PlacemarkEntity> placemarks;

  /// List of currently displayed polygons on the map
  final List<PolygonEntity> polygons;

  /// List of currently displayed polylines on the map
  final List<PolylineEntity> polylines;

  /// Internal initializer used by the factory to create controller instances
  static YandexJsMapController _init(
    String id,
    List<PlacemarkEntity> placemarks,
    List<PolygonEntity> polygons,
    List<PolylineEntity> polylines,
  ) =>
      YandexJsMapController._(id, placemarks, polygons, polylines);

  // Map View Operations ======================================================

  /// Moves the map camera to the specified [point] with optional [zoom] level.
  ///
  /// - [point] The target geographic coordinates
  /// - [zoom] The desired zoom level (default: 10)
  /// - [durationMs] Animation duration in milliseconds (default: 300)
  Future<void> moveTo(PointEntity point, {int zoom = 10, int durationMs = 300}) async {
    await moveToJs(point.lat, point.lon, zoom, durationMs, _mapId).toDart;
  }

  /// Sets the map zoom level.
  ///
  /// - [zoom] The target zoom level
  /// - [durationMs] Animation duration in milliseconds (default: 300)
  Future<void> setZoom(int zoom, {int durationMs = 300}) async => await setZoomJs(zoom, durationMs, _mapId).toDart;

  /// Zooms in the map by one level.
  ///
  /// - [durationMs] Animation duration in milliseconds (default: 300)
  Future<void> zoomIn({int durationMs = 300}) async => await zoomInJs(durationMs, _mapId).toDart;

  /// Zooms out the map by one level.
  ///
  /// - [durationMs] Animation duration in milliseconds (default: 300)
  Future<void> zoomOut({int durationMs = 300}) async => await zoomOutJs(durationMs, _mapId).toDart;

  /// Gets the current zoom level of the map.
  ///
  /// Return Current zoom level as integer
  Future<int> getZoom() async => (await getZoomJs(_mapId).toDart) as int;

  /// Gets the current center coordinates of the map view.
  ///
  /// Return [PointEntity] with current center coordinates, or null if unavailable
  Future<PointEntity?> getCenter() async {
    final result = (await getCenterJs(_mapId).toDart) as List;
    if (result.length == 2) {
      final lat = (result[0] as num).toDouble();
      final lon = (result[1] as num).toDouble();
      return PointEntity(lat, lon);
    }
    return null;
  }

  /// Adjusts the map view to contain the specified bounding box.
  ///
  /// - [southWest] The south-west corner of the bounding box
  /// - [northEast] The north-east corner of the bounding box
  /// - [durationMs] Animation duration in milliseconds (default: 300)
  Future<void> fitBounds(PointEntity southWest, PointEntity northEast, {int durationMs = 300}) async =>
      await fitBoundsJs(southWest.lat, southWest.lon, northEast.lat, northEast.lon, durationMs, _mapId).toDart;

  /// Enables or disables zooming via mouse scroll/touch pinch.
  ///
  /// - [enabled] Whether to enable scroll zoom interaction
  Future<void> enableScrollZoom(bool enabled) async => await enableScrollZoomJs(enabled, _mapId).toDart;

  /// Enables or disables dragging the map with mouse/touch.
  ///
  /// - [enabled] Whether to enable drag interaction
  Future<void> enableDrag(bool enabled) async => await enableDragJs(enabled, _mapId).toDart;

  /// Changes the base map type (e.g. street map, satellite, hybrid).
  ///
  /// - [type] The map type from [MapType] enum
  Future<void> setMapType(MapType type) async => await setMapTypeJs(type.name, _mapId).toDart;

  // Placemark Operations =====================================================

  /// Adds a new placemark to the map.
  ///
  /// - [placemark] The placemark entity to add
  Future<void> addPlacemark(PlacemarkEntity placemark) async {
    final jsPlacemark = placemark.toJs();
    await addPlacemarkJs(jsPlacemark.geometry, jsPlacemark.properties, jsPlacemark.options, _mapId, placemark.id)
        .toDart;
  }

  /// Removes a placemark from the map.
  ///
  /// - [placemarkId] The ID of the placemark to remove
  Future<void> removePlacemark(String placemarkId) async => await removePlacemarkJs(placemarkId, _mapId).toDart;

  /// Updates the position of an existing placemark.
  ///
  /// - [placemarkId] The ID of the placemark to update
  /// - [newGeometry] The new geographic coordinates
  Future<void> updatePlacemarkGeometry(String placemarkId, PointEntity newGeometry) async =>
      await updatePlacemarkGeometryJs(placemarkId, newGeometry.toJs()).toDart;

  /// Updates the properties (e.g. data fields) of a placemark.
  ///
  /// - [placemarkId] The ID of the placemark to update
  /// - [newProperties] The new properties object
  Future<void> updatePlacemarkProperties(String placemarkId, PlacemarkProperties newProperties) async =>
      await updatePlacemarkPropertiesJs(placemarkId, newProperties.toJs()).toDart;

  /// Updates the visual options (e.g. icon, color) of a placemark.
  ///
  /// - [placemarkId] The ID of the placemark to update
  /// - [newOptions] The new visual options
  Future<void> updatePlacemarkOptions(String placemarkId, PlacemarkOptions newOptions) async =>
      await updatePlacemarkOptionsJs(placemarkId, newOptions.toJs()).toDart;

  // Polygon Operations =======================================================

  /// Adds a new polygon to the map.
  ///
  /// - [polygon] The polygon entity to add
  Future<void> addPolygon(PolygonEntity polygon) async {
    final jsPolygon = polygon.toJs();
    await addPolygonJs(jsPolygon.geometry, jsPolygon.properties, jsPolygon.options, _mapId, polygon.id).toDart;
  }

  /// Removes a polygon from the map.
  ///
  /// - [polygonId] The ID of the polygon to remove
  Future<void> removePolygon(String polygonId) async => await removePolygonJs(polygonId, _mapId).toDart;

  /// Updates the geometry (vertex coordinates) of a polygon.
  ///
  /// - [polygonId] The ID of the polygon to update
  /// - [newGeometry] The new array of coordinate rings
  Future<void> updatePolygonGeometry(String polygonId, List<List<PointEntity>> newGeometry) async {
    final jsGeometry = newGeometry.map((ring) => ring.map((point) => point.toJs()).toList().toJS).toList().toJS;
    await updatePolygonGeometryJs(polygonId, jsGeometry).toDart;
  }

  /// Updates the properties (e.g. data fields) of a polygon.
  ///
  /// - [polygonId] The ID of the polygon to update
  /// - [newProperties] The new properties object
  Future<void> updatePolygonProperties(String polygonId, PolygonProperties newProperties) async =>
      await updatePolygonPropertiesJs(polygonId, newProperties.toJs()).toDart;

  /// Updates the visual options (e.g. fill color, stroke) of a polygon.
  ///
  /// - [polygonId] The ID of the polygon to update
  /// - [newOptions] The new visual options
  Future<void> updatePolygonOptions(String polygonId, PolygonOptions newOptions) async =>
      await updatePolygonOptionsJs(polygonId, newOptions.toJs()).toDart;

  // Polyline Operations ======================================================

  /// Adds a new polyline to the map.
  ///
  /// - [polyline] The polyline entity to add
  Future<void> addPolyline(PolylineEntity polyline) async {
    final jsPoly = polyline.toJs();
    await addPolylineJs(jsPoly.geometry, jsPoly.properties, jsPoly.options, _mapId, polyline.id).toDart;
  }

  /// Removes a polyline from the map.
  ///
  /// - [polylineId] The ID of the polyline to remove
  Future<void> removePolyline(String polylineId) async => await removePolylineJs(polylineId, _mapId).toDart;

  /// Updates the geometry (vertex coordinates) of a polyline.
  ///
  /// - [polylineId] The ID of the polyline to update
  /// - [newGeom] The new array of coordinates
  Future<void> updatePolylineGeometry(String polylineId, List<PointEntity> newGeom) async {
    final jsGeometry = newGeom.map((point) => point.toJs()).toList().toJS;
    await updatePolylineGeometryJs(polylineId, jsGeometry).toDart;
  }

  /// Updates the properties (e.g. data fields) of a polyline.
  ///
  /// - [polylineId] The ID of the polyline to update
  /// - [props] The new properties object
  Future<void> updatePolylineProperties(String polylineId, PolylineProperties props) async =>
      await updatePolylinePropertiesJs(polylineId, props.toJs()).toDart;

  /// Updates the visual options (e.g. color, width) of a polyline.
  ///
  /// - [polylineId] The ID of the polyline to update
  /// - [opts] The new visual options
  Future<void> updatePolylineOptions(String polylineId, PolylineOptions opts) async =>
      await updatePolylineOptionsJs(polylineId, opts.toJs()).toDart;

  // Geocoding Services =======================================================

  /// Performs geocoding (address → coordinates or coordinates → address).
  ///
  /// - [request] Either an address string or [PointEntity] coordinates
  /// - [options] Additional geocoding parameters
  /// Return List of [GeocodeResult] objects with matches
  /// Throws ArgumentError if request type is invalid
  Future<List<GeocodeResult>> geocode<T>(T request, {GeocodeOptions options = const GeocodeOptions()}) async {
    final jsRequest = switch (request) {
      final String s => s.toJS,
      final PointEntity p => p.toJs(),
      _ => throw ArgumentError('Request must be either String or PointEntity'),
    };

    final rawResult = await geocodeJs(jsRequest, options.toJs()).toDart;
    final items = rawResult.toDart.cast<JsGeocodeResult>();

    return items
        .map((js) => GeocodeResult(
              point: PointEntity(js.lat, js.lon),
              name: js.name,
              description: js.description,
            ))
        .toList();
  }

  /// Gets address suggestions for partial user input.
  ///
  /// - [request] Partial address input string
  /// - [options] Additional suggestion parameters
  /// Return List of [SuggestResult] objects with matches
  Future<List<SuggestResult>> suggest(String request, {SuggestOptions options = const SuggestOptions()}) async {
    final rawResult = await suggestJs(request.toJS, options.toJs()).toDart;
    final items = rawResult.toDart.cast<JsSuggestResult>();

    return items.map((js) => SuggestResult(displayName: js.displayName, value: js.value)).toList();
  }
}
