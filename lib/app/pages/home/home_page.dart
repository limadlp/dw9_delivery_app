import 'package:dw9_delivery_app/app/core/ui/widgets/delivery_app_bar.dart';
import 'package:dw9_delivery_app/app/models/product_model.dart';
import 'package:dw9_delivery_app/app/pages/home/widgets/delivery_product_tile.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DeliveryAppBar(),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: 5,
              itemBuilder: (context, index) {
                return DeliveryProductTile(
                  product: ProductModel(
                    id: 0,
                    name: 'Lanche X',
                    description: 'Descrição',
                    image:
                        'https://burgerx.com.br/assets/img/galeria/burgers/x-burger.jpg',
                    price: 55.55,
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
