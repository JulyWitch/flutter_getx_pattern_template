import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../drawer/drawer.dart';
class HomePage extends GetView {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: MyDrawer(),
      body: Center(
        child: Text("Hi Desktop"),
      ),
    );
  }
}
