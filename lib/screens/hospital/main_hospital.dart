import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:econsult_new_project/services/geolocator_service.dart';
import 'package:provider/provider.dart';
import 'package:econsult_new_project/screens/hospital/search.dart';

void main() => runApp(MyHospitalMap());

class MyHospitalMap extends StatelessWidget {
  final geoService = GeolocatorService();
  // final locatorService = GeolocatorService();
  // final placesService = PlacesService();
  @override
  Widget build(BuildContext context) {

  return FutureProvider(
        create: (context) => geoService.getInitialLocation(),
        child: MaterialApp(
          title: 'Maps Demo',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home: Consumer<Position>(
            builder: (context, position, widget) {
              return (position != null)
                  ? Map(position)
                  : Center(child: CircularProgressIndicator());
            },
          ),
        ),
    );
  }
}