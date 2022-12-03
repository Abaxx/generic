
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
            body:  SingleChildScrollView(child: Column(children: const [HeroSection(),WhatWeDoSection(),ProductsSection()],))
        );
      }else{ //Mobile View
        return Scaffold(
            body:  SingleChildScrollView(child: Column(children: const [HeroSection(),WhatWeDoSection(),ProductsSection()],))
        );
      }
    });
  }
}

class HeroSection extends StatelessWidget {
  const HeroSection({Key? key}) : super(key: key);

deskTopSectionText()
{
  return SizedBox(
    height: 150, width: 300,
    child: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration: const BoxDecoration(
                border: Border(bottom: BorderSide(width: 10, color: Color(0xff0BF2C9))),
              ),
              child: const Text('THINK ',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 30),),
          ),
          Container(
              decoration: const BoxDecoration(
                border: Border(left: BorderSide(width: 10, color: Color(0xff0BF2C9)), bottom: BorderSide(width: 10, color: Color(0xff0BF2C9))),
              ),
              child: const Text(' INVENT',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 30),),
          )
          ],
        ),
       const Text('INNOVATE',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 30),),
      ]
      ),
  );
}

mobileSectionText()
{
  return SizedBox(
    height: 150, width: 300,
    child: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration: const BoxDecoration(
                border: Border(bottom: BorderSide(width: 5, color: Color(0xff0BF2C9))),
              ),
              child: const Text('THINK ',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
          ),
          Container(
              decoration: const BoxDecoration(
                border: Border(left: BorderSide(width: 5, color: Color(0xff0BF2C9)),bottom: BorderSide(width: 5, color: Color(0xff0BF2C9))),
              ),
              child: const Text(' INVENT',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
          )
          ],
        ),
       const Text('INNOVATE',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
      ]
      ),
  );
}

   @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context,constraints){
      if(constraints.biggest.width > 800)
        {
          return Stack(
      children: [
        Container(
      height: 700,
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/ai.jpg'),
          fit: BoxFit.fill
        )
      ),
      alignment: Alignment.topCenter,
      child: const Navbar(),
    ),
    Positioned(
      left: 100,
      top: 300,
      child: deskTopSectionText())
      ],
    );
        }else{
           return Stack(
            alignment: Alignment.bottomCenter,
      children: [
        Container(
      height: 600,
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/ai.jpg'),
          fit: BoxFit.fill
        )
      ),
      alignment: Alignment.topCenter,
      child: const Navbar(),
    ),
    Positioned(
      bottom: 40,
      child: mobileSectionText())
      ],);

    }
  });
  }
}
  

class WhatWeDoSection extends StatelessWidget {
  const WhatWeDoSection({Key? key}) : super(key: key);

saasContainer(double hgt,double wdt){
  return Container(
      height: hgt,
      width: wdt,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/img1.jpeg'),
          fit: BoxFit.fill,
        ),
        borderRadius: BorderRadius.all(Radius.circular(15)),
        boxShadow: [
          BoxShadow(
            blurRadius: 3,
            offset: Offset(0,7),
            color: Colors.black26,
          )
        ]
      ),
    );
}

appContainer(double hgt,double wdt){
  return Container(
      height: hgt,
      width: wdt,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/img2.jpeg'),
          fit: BoxFit.fill,
        ),
        borderRadius: BorderRadius.all(Radius.circular(15)),
        boxShadow: [
          BoxShadow(
            blurRadius: 3,
            offset: Offset(0,7),
            color: Colors.black26,
          )
        ]
      ),
    );
}

aiContainer(double hgt,double wdt){
  return Container(
      height: hgt,
      width: wdt,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/img3.jpeg'),
          fit: BoxFit.fill,
        ),
        borderRadius: BorderRadius.all(Radius.circular(15)),
        boxShadow: [
          BoxShadow(
            blurRadius: 3,
            offset: Offset(0,7),
            color: Colors.black26,
          )
        ]
      ),
    );
}

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/img.jpeg'),
          fit: BoxFit.fill,
        )
      ),
      margin: const EdgeInsets.symmetric(vertical: 5),
    
      child: LayoutBuilder(builder: (context,constraints){
      if(constraints.biggest.width > 800)
        {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('What We Do',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 30),),
              const SizedBox(height: 30,),
              Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          saasContainer(200,260),appContainer(200,260),aiContainer(200,260)
        ])]);
        }else{
           return Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const Text('What We Do',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
          saasContainer(120,200),appContainer(120,200),aiContainer(120,200)
        ]);
       }
    }),
    );
  }
}


class ProductsSection extends StatelessWidget {

  const ProductsSection({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/img4.jpg'),
          fit: BoxFit.fill,
        )
      ),
      padding: const EdgeInsets.only(top: 50),
      child: LayoutBuilder(builder: (context,constraints){
      if(constraints.biggest.width > 800)
        {
          return Column(
            children: [
              const Text('R&D PRODUCTS',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 30),),
              const SizedBox(height: 30,),
              Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: const [
          Text('ZIP',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
          Text('TRAFFICO',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
          Text('LEAP',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
          Text('BEAM',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
          Text('PACKET',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
        ]),
        const SizedBox(height: 50,),
        Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: const [
          Text('LOOP',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
          Text('PAYTON',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
          Text('SPECTRA',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
          Text('FINX',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
          Text('MIRAGE',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
        ]),
        const SizedBox(height: 80,),
        const Text('For more details',style: TextStyle(color: Colors.white,fontSize: 15),),
        ]);
        }else{
           return Column(
            children: [
              const Text('R&D PRODUCTS',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
              const SizedBox(height: 20,),
              Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: const [
          Text('ZIP',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 15),),
          Text('TRAFFICO',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 15),),
          Text('LEAP',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 15),),
          Text('BEAM',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 15),),
          Text('PACKET',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 15),),
        ]),
        const SizedBox(height: 30,),
        Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: const [
          Text('LOOP',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 15),),
          Text('PAYTON',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 15),),
          Text('SPECTRA',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 15),),
          Text('FINX',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 15),),
          Text('MIRAGE',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 15),),
        ]),
        const SizedBox(height: 80,),
        const Text('For more details',style: TextStyle(color: Colors.white,fontSize: 15),),
        ]);
       }
    }),
    );
  }
  
}