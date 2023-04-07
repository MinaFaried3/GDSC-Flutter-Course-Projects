import 'package:flutter/material.dart';
import 'package:gdsc2/shop_app/core/colors.dart';
import 'package:gdsc2/shop_app/presentation/screens/on_boardin/on_boarding_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
          primarySwatch: Colors.pink,
          appBarTheme: AppBarTheme(
              backgroundColor: Theme.of(context).scaffoldBackgroundColor,
              elevation: 0,
              actionsIconTheme:
                  const IconThemeData(color: ShopColors.shopColor),
              iconTheme: const IconThemeData(color: ShopColors.shopColor5))),
      home: OnBoardingView(),
    );
  }
}
