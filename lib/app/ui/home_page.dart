// ignore_for_file: prefer_final_fields

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Set<Marker> _markers = {};
  void _onMapCreated(GoogleMapController controller) {
    setState(() {
      bool bToggle = true;
      _markers.add(
        Marker(
            markerId: MarkerId('id-1'),
            position: LatLng(13.701667440817692, -89.22330434914835),
            icon: BitmapDescriptor.defaultMarkerWithHue(
                (bToggle) ? BitmapDescriptor.hueRose : BitmapDescriptor.hueRed),
            infoWindow: InfoWindow(
              title: 'MovilSV',
              snippet: 'Sucursal, Divino Salvador del Mundo',
            )),
      );
      _markers.add(
        Marker(
            markerId: MarkerId('id-2'),
            position: LatLng(13.69990282273827, -89.19829336318277),
            infoWindow: InfoWindow(
              title: 'MovilSV',
              snippet: 'Sucursal,Calle Arce',
            )),
      );
      _markers.add(
        Marker(
            markerId: MarkerId('id-3'),
            position: LatLng(13.700744671619809, -89.1516434579688),
            icon: BitmapDescriptor.defaultMarkerWithHue((bToggle)
                ? BitmapDescriptor.hueYellow
                : BitmapDescriptor.hueRed),
            infoWindow: InfoWindow(
              title: 'MovilSV',
              snippet: 'Sucursal,Centro Soyapango',
            )),
      );
      _markers.add(
        Marker(
            markerId: MarkerId('id-4'),
            position: LatLng(13.687592457471553, -89.19056112855166),
            icon: BitmapDescriptor.defaultMarkerWithHue((bToggle)
                ? BitmapDescriptor.hueGreen
                : BitmapDescriptor.hueRed),
            infoWindow: InfoWindow(
              title: 'MovilSV',
              snippet: 'sucursal,San Jacinto',
            )),
      );
    });
  }

  final _initialCameraPosition = CameraPosition(
      target: LatLng(13.701687465625996, -89.22383988311188), zoom: 17);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Maps Parcial 4'),
      ),
      body: GoogleMap(
        onMapCreated: _onMapCreated,
        markers: _markers,
        initialCameraPosition: _initialCameraPosition,
      ),
    );
  }
}
