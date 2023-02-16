

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:maps_lesson/domen/route_model.dart';

import 'dio_service.dart';

class AppRepo {
  DioService dio = DioService();

  Future<DrawRouting?> getRout({required BuildContext context,
    required LatLng start,
    required LatLng end}) async {
    try {
      final qData = {
        "api_key": "5b3ce3597851110001cf62480384c1db92764d1b8959761ea2510ac8",
        "start": "${start.longitude},${start.latitude}",
        "end": "${end.longitude},${end.latitude}"
      };
      var res = await dio.client(isRouting: true).get(
          "/v2/directions/driving-car", queryParameters: qData);
      return DrawRouting.fromJson(res.data);
    } on DioError catch (e) {
      debugPrint('Route Error: $e');
    }
    return null;
  }
}