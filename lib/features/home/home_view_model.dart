import 'package:flutter/material.dart';

import 'home.dart';
import 'home_resources.dart';

abstract class HomeViewModel extends State<Home> with HomeResources {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  void callBackFn(){
    print("Callback");
    setState(() {
      count++;
    });
  }
}
