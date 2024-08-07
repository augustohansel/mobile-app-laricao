import 'package:flutter/material.dart';
import 'package:laricao_app/models/restaurant.dart';

class RestaurantesRepository extends ChangeNotifier {
  final List<Restaurant> _restaurants = [
    Restaurant(
      nome: 'Oba! É Muito Bom',
      endereco: 'AV RORAIMA, 1000, RUA SUL, 35 - Camobi, Santa Maria - RS, 97105-900',
      foto:
          'https://scontent.fria2-1.fna.fbcdn.net/v/t39.30808-6/242308916_1184887515334377_9159437934734228786_n.jpg?_nc_cat=108&ccb=1-7&_nc_sid=6ee11a&_nc_ohc=-1lgREBTCQ0Q7kNvgGmsABo&_nc_ht=scontent.fria2-1.fna&oh=00_AYBO_xf168f0T5rhapt8KsqPIUwpGUU96stbOJ2LGV4PKg&oe=669259D7',
      latitude: -29.719469617238868,
      longitude: -53.71956780600632,
    ),
    Restaurant(
      nome: 'RU - Restaurante Universitário UFSM',
      endereco: 'Av. Roraima, 1000 - Camobi, Santa Maria - RS, 97105-900',
      foto:
          'https://scontent.fria2-1.fna.fbcdn.net/v/t39.30808-6/269299504_3070824933194119_285196364170569230_n.png?_nc_cat=106&ccb=1-7&_nc_sid=6ee11a&_nc_ohc=rE4PPAHhsQ0Q7kNvgG3YVd3&_nc_ht=scontent.fria2-1.fna&oh=00_AYD8C4JAbGSc1pJdWhqe5OVZjd0L023LNALWaJJOp-fGkA&oe=66925E11',
      latitude: -29.71722886936361,
      longitude: -53.71467550694512,
    ),
    Restaurant(
      nome: 'Dunkin Donuts',
      endereco: '1159 N Rengstorff Ave, Mountain View, CA 94043, Estados Unidos',
      foto:
          'https://visitguernseycounty.com/wp-content/uploads/2022/06/original-dunkin-donuts-logo-jq36q7774cczqng8.jpg',
      latitude: 37.421288233183375,
      longitude: -122.09293978785412,
    ),
    Restaurant(
      nome: 'KFC',
      endereco: '425 N Whisman Rd #100, Mountain View, CA 94043, Estados Unidos',
      foto:
          'https://t3.ftcdn.net/jpg/02/93/31/54/360_F_293315480_ebxbjmqQnxjHIeghpC86qNbmvax8I5hm.jpg',
      latitude: 37.401354247721265,
      longitude: -122.05604421954197,
    ),
    Restaurant(
      nome: 'IHOP',
      endereco: '846 Independence Ave, Mountain View, CA 94043, Estados Unidos',
      foto:
          'https://www.canoncitydailyrecord.com/wp-content/uploads/migration/2015/0114/20150114_15DRIHOP-4.jpg?w=620',
      latitude: 37.40857423672899,
      longitude: -122.08388465275307,
    ),
    Restaurant(
      nome: 'Starbucks',
      endereco: '846 Independence Ave, Mountain View, CA 94043, Estados Unidos',
      foto:
          'https://c4.wallpaperflare.com/wallpaper/832/260/8/other-wallpaper-preview.jpg',
      latitude: 37.41631196632119,
      longitude: -122.0795502030984,
    ),
  ];

  List<Restaurant> get restaurants => _restaurants;
}