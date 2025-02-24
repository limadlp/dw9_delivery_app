import 'package:dw9_delivery_app/app/pages/auth/register/register_controller.dart';
import 'package:dw9_delivery_app/app/pages/auth/register/register_page.dart';
import 'package:dw9_delivery_app/app/repositories/auth/auth_repository_impl.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class RegisterRouter {
  RegisterRouter._();

  static Widget get page => MultiProvider(
        providers: [
          Provider(
            create: (context) => RegisterController(
              AuthRepositoryImpl(
                dio: context.read(),
              ),
              //context.read(),
            ),
          ),
        ],
        child: const RegisterPage(),
      );
}
