import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_getx_pattern_template/app/modules/mobile/drawer/drawer.dart';
import 'package:get/get.dart';

class HomePage extends GetView {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: MyDrawer(),
      body: Center(
        child: Text("Hi Mobile"),
      ),
      bottomNavigationBar: ConvexAppBar(items: [
        TabItem(icon: Icons.home),
        TabItem(icon: Icons.message),
        TabItem(icon: Icons.class_)

      ],),
    );
  }
}
