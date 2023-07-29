import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_use_geolocation/flutter_use_geolocation.dart';
import 'package:geolocator/geolocator.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:latlong2/latlong.dart';

const dummyLatLng = LatLng(20, 50);
const dummyLatLngList = [
  LatLng(31, 40),
  LatLng(21, 50),
  LatLng(15, 45),
  LatLng(15, 41),
  LatLng(12, 40),
  LatLng(31, 22),
  LatLng(12, 10),
];

class MapPage extends HookConsumerWidget {
  const MapPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final latLngState = useState<LatLng?>(null);
    void onTap(dynamic tapPosition, LatLng latLng) {
      latLngState.value = latLng;
    }

    return FlutterMap(
      options: MapOptions(
        onTap: onTap,
        center: dummyLatLng,
        zoom: 4.0,
      ),
      children: [
        TileLayer(
          urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
          userAgentPackageName: 'com.example.app',
        ),
        MarkerLayer(
            // NOTE: ロゴの配置
            markers: [
              Marker(
                width: 80.0,
                height: 80.0,
                point: latLngState.value ?? const LatLng(0, 0),
                builder: (ctx) => const Icon(
                  Icons.location_on,
                  size: 40,
                  color: Colors.red,
                ),
              )
            ]),
        // NOTE: 場所の配置。ソートしたものを配置する
        PolylineLayer(
          polylines: [
            Polyline(
              points: dummyLatLngList,
              color: Colors.blue,
            ),
          ],
        ),
      ],
    );
  }
}
