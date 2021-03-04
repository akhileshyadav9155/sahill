import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:geocoder/geocoder.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class NewAddressPicker extends StatefulWidget
{
  _NewAddressPicker createState() => _NewAddressPicker();

}

class _NewAddressPicker extends State<NewAddressPicker>
{
  GoogleMapController mapController;

  final LatLng _center = const LatLng(45.521563, -122.677433);

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Maps Sample App'),
        backgroundColor: Colors.green[700],
      ),
      body: _buildMap(),
    );
  }

  Widget _buildMap() {
    LatLng currentLocation = LatLng(21, 27);
    return FutureBuilder(
      future: _mapFuture,
      builder: (context, snapshot) {
        if (!snapshot.hasData) {
          print("empty");
          return null;
        }

        return GoogleMap(
          initialCameraPosition: CameraPosition(
            target: currentLocation == null ? LatLng(0.0, 0.0) : currentLocation,
            zoom: currentLocation == null ? 0 : 15,
          ),
          onMapCreated: (GoogleMapController controller) {
            _mapController.complete(controller);
          },
          myLocationButtonEnabled: false,
          myLocationEnabled: true,
        );
      },
    );
  }
  final Completer<GoogleMapController> _mapController = Completer();
  Future _mapFuture = Future.delayed(Duration(milliseconds: 250), () => true);


}