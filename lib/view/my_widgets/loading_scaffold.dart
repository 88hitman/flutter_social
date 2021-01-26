import 'package:flutter/material.dart';
import 'loadingCenter.dart';

class LoadingScaffold extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: SafeArea(child: LoadingCenter()),
    );
  }
}