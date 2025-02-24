import 'package:dw9_delivery_app/app/core/helpers/size_extension.dart';
import 'package:dw9_delivery_app/app/core/ui/widgets/delivery_button.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ColoredBox(
        color: const Color(0xFF140E0E),
        child: Stack(
          children: [
            Align(
              alignment: Alignment.bottomCenter,
              child: SizedBox(
                width: context.screenWidth,
                child: Image.asset(
                  'assets/images/lanche.png',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Center(
              child: Center(
                child: Column(
                  children: [
                    SizedBox(
                      height: context.percentHeight(.3),
                    ),
                    Image.asset('assets/images/logo.png'),
                    const SizedBox(
                      height: 80,
                    ),
                    DeliveryButton(
                      width: context.percentWidth(.6),
                      label: 'ACESSAR',
                      height: 35,
                      onPressed: () {
                        Navigator.of(context).popAndPushNamed('/home');
                      },
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
