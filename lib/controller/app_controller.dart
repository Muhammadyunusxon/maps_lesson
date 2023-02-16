import 'package:flutter/cupertino.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:maps_lesson/domen/app_repo.dart';

import '../domen/route_model.dart';


class AppController extends ChangeNotifier {
  List<LatLng> list = [];
  final AppRepo appRepo = AppRepo();
  String? searchText;
  bool isLoading = false;


  search(String searchText){
    this.searchText = searchText;
    notifyListeners();
  }


  getRout(BuildContext context, LatLng start, LatLng end) async {
    DrawRouting? routing =
    await appRepo.getRout(context: context, start: start, end: end);

    List ls = routing?.features[0].geometry.coordinates ?? [];
    for (int i = 0; i < ls.length; i++) {
      list.add(LatLng(ls[i][1], ls[i][0]));
    }
    notifyListeners();
  }

  Future<Position> determinePosition() async {
    bool serviceEnabled;
    LocationPermission permission;

    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      return Future.error('Location services are disabled.');
    }

    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        return Future.error('Location permissions are denied');
      }
    }

    if (permission == LocationPermission.deniedForever) {
      return Future.error(
          'Location permissions are permanently denied, we cannot request permissions.');
    }

    return await Geolocator.getCurrentPosition();
  }
}