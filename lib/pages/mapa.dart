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
        onMapCreated: _onMapCreated,
        initialCameraPosition: CameraPosition(
          target: _center,
          zoom: 11.0,
        ),
        // markers: ,
      ),
    );
  }
}
