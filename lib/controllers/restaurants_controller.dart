import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:laricao_app/repositories/restaurantes_repository.dart';
import 'package:laricao_app/screens/track_page.dart';
import 'package:laricao_app/widgets/restaurants_details.dart';

class RestaurantsController extends ChangeNotifier {
  double lat = 0;
  double long = 0;
  String erro = '';
  Set<Marker> markers = <Marker>{};
  late GoogleMapController _mapsController;

  get mapsController => _mapsController;

  onMapCreated(GoogleMapController gmc) async {
    _mapsController = gmc;
    getPosicao();
    loadRestaurants();
  }

  loadRestaurants() {
    final restaurants = RestaurantesRepository().restaurants;
    restaurants.forEach((restaurant) async {
      markers.add(
        Marker(
        markerId: MarkerId(restaurant.nome),
        position: LatLng(restaurant.latitude, restaurant.longitude),
        icon: await BitmapDescriptor.fromAssetImage(
          const ImageConfiguration(), 
          'assets/images/marker.png'),
        onTap: () => {
          showModalBottomSheet(
            context: appKey.currentState!.context,
            builder: (context) => RestaurantDetails(restaurant: restaurant),
          ),
          },
        ),
      );
    });
    notifyListeners();
  }

  getPosicao() async {
    try {
      Position posicao = await _posicaoAtual();
      lat = posicao.latitude;
      long = posicao.longitude;
      _mapsController.animateCamera(CameraUpdate.newLatLng(LatLng(lat, long)));
    } catch (e) {
      erro = e.toString();
    }
    notifyListeners();
  }

  Future<Position> _posicaoAtual() async {
    LocationPermission permissao;

    bool ativado = await Geolocator.isLocationServiceEnabled();
    if (!ativado) {
      return Future.error('Por favor, habilite a localização no smartphone');
    }

    permissao = await Geolocator.checkPermission();
    if (permissao == LocationPermission.denied) {
      permissao = await Geolocator.requestPermission();
      if (permissao == LocationPermission.denied) {
        return Future.error('Você precisa autorizar o acesso à localização');
      }
    }

    if (permissao == LocationPermission.deniedForever) {
      return Future.error('Você precisa autorizar o acesso à localização');
    }

    return await Geolocator.getCurrentPosition();
  }
}