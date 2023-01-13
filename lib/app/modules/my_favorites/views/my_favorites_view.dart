import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/my_favorites_controller.dart';

class MyFavoritesView extends GetView<MyFavoritesController> {
  const MyFavoritesView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MyFavoritesView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'MyFavoritesView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
