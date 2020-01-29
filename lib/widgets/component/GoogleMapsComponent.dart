import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:concordia_go/blocs/BlocProvider.dart';
import 'package:concordia_go/blocs/LocationBloc.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:concordia_go/utilities/ConcordiaConstants.dart' as concordia_constants;

class GoogleMapsComponent extends StatefulWidget {
  @override
  State<GoogleMapsComponent> createState() => GoogleMapsComponentState();
}

class GoogleMapsComponentState extends State<GoogleMapsComponent> {
  Completer<GoogleMapController> _controller = Completer();
  String currentCampus = 'SGW';
  bool polygonVisibility = true;

  void _infoPanel(String buildingCode) {
    print(buildingCode);
    // This method is triggered when a polygon is clicked. Currently it only prints the building code for the building you tap
  }

  Set<Polygon> buildingPolygons() {
    Set<Polygon> allBuildings = Set();
    for (int i = 0; i < concordia_constants.buildingCoords.length; i++) {
      List<LatLng> coords = List();
      List<double> xCoords = concordia_constants.buildingCoords[i]['xcoords'] as List<double>;
      List<double> yCoords = concordia_constants.buildingCoords[i]['ycoords'] as List<double>;
      for (int j = 0; j < (concordia_constants.buildingCoords[i]['xcoords'] as List<double>).length; j++) {
        coords.add(LatLng(xCoords[j], yCoords[j]));
      }

      allBuildings.add(Polygon(
          points: coords,
          visible: polygonVisibility,
          consumeTapEvents: true,
          onTap: () => _infoPanel(concordia_constants.buildingCoords[i]['code']),
          polygonId: PolygonId(concordia_constants.buildingCoords[i]['Building']),
          fillColor: Colors.redAccent.withOpacity(0.4),
          strokeColor: Colors.red));
    }

    return allBuildings;
  }

  Future<void> _switchCampus() async {
    final GoogleMapController controller = await _controller.future;
    if (currentCampus == 'SGW') {
      await controller.animateCamera(CameraUpdate.newCameraPosition(concordia_constants.loyolaCampus));
      currentCampus = 'Loyola';
    } else {
      await controller.animateCamera(CameraUpdate.newCameraPosition(concordia_constants.sgwCampus));
      currentCampus = 'SGW';
    }
  }

  Future<void> goToBuilding(LatLng coordinates) async {
    final GoogleMapController controller = await _controller.future;
    await controller.animateCamera(CameraUpdate.newCameraPosition(CameraPosition(target: coordinates, zoom: 17.5)));
  }

  Future<void> _zoomIn() async {
    final GoogleMapController controller = await _controller.future;
    await controller.animateCamera(CameraUpdate.zoomIn());
  }

  Future<void> _zoomOut() async {
    final GoogleMapController controller = await _controller.future;
    await controller.animateCamera(CameraUpdate.zoomOut());
  }

  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          // listens to the LocationBloc's stream and rebuilds the GoogleMap widget whenever data is received
          StreamBuilder<Marker>(
            stream: BlocProvider.of<LocationBloc>(context).markerOutput,
            initialData: Marker(markerId: MarkerId('initial marker'), position: concordia_constants.sgwCampus.target),
            builder: (BuildContext context, AsyncSnapshot<Marker> snapshot) {
              goToBuilding(snapshot.data.position);
              return Expanded(
                child: GoogleMap(
                  polygons: buildingPolygons(),
                  mapType: MapType.normal,
                  initialCameraPosition: concordia_constants.sgwCampus,
                  onMapCreated: (GoogleMapController controller) {
                    _controller.complete(controller);
                  },
                  markers: {snapshot.data},
                ),
              );
            },
          ),
        ],
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Container(
            height: screenHeight / 13,
            width: screenHeight / 13,
            padding: EdgeInsets.all(5.0),
            child: FloatingActionButton(
              child: Icon(Icons.zoom_in, size: screenWidth / 12),
              backgroundColor: Color(0xff800206),
              onPressed: () {
                _zoomIn();
              },
            ),
          ),
          Container(
            height: screenHeight / 13,
            width: screenHeight / 13,
            padding: EdgeInsets.all(5.0),
            child: FloatingActionButton(
              child: Icon(Icons.zoom_out, size: screenWidth / 12),
              backgroundColor: Color(0xff800206),
              onPressed: () {
                _zoomOut();
              },
            ),
          ),
          Container(
            height: screenHeight / 10,
            width: screenHeight / 10,
            padding: EdgeInsets.all(5.0),
            child: FloatingActionButton(
              child: Icon(Icons.sync, size: screenWidth / 10),
              backgroundColor: Color(0xff800206),
              onPressed: () {
                _switchCampus();
              },
            ),
          ),
        ],
      ),
    );
  }
}