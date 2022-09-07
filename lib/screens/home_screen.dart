import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:store_app1/constant.dart';

import '../widgets/home.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: KPrimaryColor,
      appBar: homeAppBar(),
      body: HomeBody(),
    );
  }
  AppBar homeAppBar(){
    return AppBar(
      elevation: 0,
      title: Text(
        'مرحبا بكم في متجر الالكترونيات',
        style: GoogleFonts.getFont('Almarai'),
      ),
      backgroundColor: KPrimaryColor,
      centerTitle: false,
      actions: [
        IconButton(onPressed: (){},
          icon: Icon(Icons.menu),
        ),
      ],
    );
  }
}
