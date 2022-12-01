
import 'package:flutter/material.dart';

import 'Navbar.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context,constraints){
      if(constraints.biggest.width > 800){
        // Desktop View
        return Scaffold(
            body:  SingleChildScrollView(child: Column(children: const [HeroSection(),],))
        );
      }else{ //Mobile View
        return Scaffold(
          /*appBar: AppBar(
            title: Image.asset('assets/images/Logo.png',height: 50,width: 80,),
            centerTitle: true,
          ),
            drawer: createDrawer(context),*/
            body:  SingleChildScrollView(child: Column(children: const [HeroSection(),],))
        );
      }
    });
  }
}

class HeroSection extends StatelessWidget {
  const HeroSection({Key? key}) : super(key: key);


   @override
  Widget build(BuildContext context) {
    return Container(
      height: 700,
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/ai.jpg'),
          fit: BoxFit.fill
        )
      ),
      child: Column(
        children: const [ Navbar(),],
        ),
    );
  }
  
}