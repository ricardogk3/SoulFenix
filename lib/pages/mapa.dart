import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:soulfenix/utils/style.dart';

class Mapa extends StatefulWidget {
  const Mapa({Key? key}) : super(key: key);

  @override
  _MapaState createState() => _MapaState();
}

class _MapaState extends State<Mapa> {
  late GoogleMapController mapController;

  final LatLng _center = const LatLng(-23.5521281, -46.6351612);

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  Set<Marker> _createMarker() {
    return {
      Marker(
        markerId: MarkerId("marker_1"),
        infoWindow: InfoWindow(title: "Reciclagem"),
        position: _center,
      ),
      Marker(
        markerId: MarkerId("marker_2"),
        infoWindow: InfoWindow(title: "Ecoponto"),
        position: LatLng(-23.5488487, -46.621715),
      ),
      Marker(
        markerId: MarkerId("marker_3"),
        infoWindow: InfoWindow(title: "Reciclagem"),
        position: LatLng(-23.5450487, -46.627715),
      ),
      Marker(
        markerId: MarkerId("Centro"),
        infoWindow: InfoWindow(title: "Centro"),
        position: _center,
      ),
      Marker(
        markerId: MarkerId("marker_5"),
        infoWindow: InfoWindow(title: "Ecoponto"),
        position: LatLng(-23.5626487, -46.626915),
      ),
      Marker(
        markerId: MarkerId("marker_6"),
        infoWindow: InfoWindow(title: "Ecoponto"),
        position: LatLng(-23.5538187, -46.628715),
      ),
      Marker(
        markerId: MarkerId("marker_7"),
        infoWindow: InfoWindow(title: "Reciclagem"),
        position: LatLng(-23.5509487, -46.648715),
      ),
      Marker(
        markerId: MarkerId("marker_8"),
        infoWindow: InfoWindow(title: "Ecoponto"),
        position: LatLng(-23.5541487, -46.642715),
      ),
      Marker(
        markerId: MarkerId("marker_9"),
        infoWindow: InfoWindow(title: "Reciclagem"),
        position: LatLng(-23.5400487, -46.638715),
      ),
      Marker(
        markerId: MarkerId("marker_10"),
        infoWindow: InfoWindow(title: "Ecoponto"),
        position: LatLng(-23.56487, -46.637815),
      ),
    };
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFDDDDDD),
      appBar: AppBar(
        title: Text("Mapa",
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.w200,
            )),
        centerTitle: true,
      ),
      body: GoogleMap(
        markers: _createMarker(),
        onMapCreated: _onMapCreated,
        myLocationEnabled: true,
        initialCameraPosition: CameraPosition(
          target: _center,
          zoom: 17.0,
        ),
        // markers: ,
      ),
    );
  }
}
