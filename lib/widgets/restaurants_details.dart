import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:laricao_app/models/restaurant.dart';

class RestaurantDetails extends StatelessWidget {
  Restaurant restaurant;
  RestaurantDetails({super.key, required this.restaurant});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Wrap(
        children: [
          Image.network(
            restaurant.foto,
            height:250,
            width: MediaQuery.of(context).size.width,
            fit: BoxFit.cover,
            ),
            Padding(padding: const EdgeInsets.only(top:24, left:24), 
            child: Text(
              restaurant.nome,
              style:const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                )
            )
          ),
          Padding(padding: const EdgeInsets.only(top:10, left:24, bottom: 5), 
            child: Text(
              restaurant.endereco,
            )
          ),
        ],
      ),
    );
  }
}