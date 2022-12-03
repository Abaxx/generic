
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'Navbar.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context,constraints){
      if(constraints.biggest.width > 800){
        // Desktop View
        return Scaffold(
            body:  SingleChildScrollView(child: Column(children: const [HeroSection(),WhatWeDoSection(),ProductsSection(),Footer()],))
        );
      }else{ //Mobile View
        return Scaffold(
            body:  SingleChildScrollView(child: Column(children: const [HeroSection(),WhatWeDoSection(),ProductsSection(),Footer()]))
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
              child: const Text('THINK ',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 30,fontFamily: "ChakraPetch"),),
          ),
          Container(
              decoration: const BoxDecoration(
                border: Border(left: BorderSide(width: 10, color: Color(0xff0BF2C9)), bottom: BorderSide(width: 10, color: Color(0xff0BF2C9))),
              ),
              child: const Text(' INVENT',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 30,fontFamily: "ChakraPetch"),),
          )
          ],
        ),
       const Text('INNOVATE',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 30,fontFamily: "ChakraPetch"),),
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
              child: const Text('THINK ',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20,fontFamily: "ChakraPetch"),),
          ),
          Container(
              decoration: const BoxDecoration(
                border: Border(left: BorderSide(width: 5, color: Color(0xff0BF2C9)),bottom: BorderSide(width: 5, color: Color(0xff0BF2C9))),
              ),
              child: const Text(' INVENT',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20,fontFamily: "ChakraPetch"),),
          )
          ],
        ),
       const Text('INNOVATE',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20,fontFamily: "ChakraPetch"),),
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
              const SizedBox(height: 70,),
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
          Text('ZIP',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20,fontFamily: 'BubblegumSans'),),
          Text('TRAFFICO',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20,fontFamily: 'BubblegumSans'),),
          Text('LEAP',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20,fontFamily: 'BubblegumSans'),),
          Text('BEAM',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20,fontFamily: 'BubblegumSans'),),
          Text('PACKET',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20,fontFamily: 'BubblegumSans'),),
        ]),
        const SizedBox(height: 50,),
        Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: const [
          Text('LOOP',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20,fontFamily: 'BubblegumSans'),),
          Text('PAYTON',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20,fontFamily: 'BubblegumSans'),),
          Text('SPECTRA',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20,fontFamily: 'BubblegumSans'),),
          Text('FINX',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20,fontFamily: 'BubblegumSans'),),
          Text('MIRAGE',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20,fontFamily: 'BubblegumSans'),),
        ]),
        const SizedBox(height: 80,),
        RichText(text: TextSpan(text: 'For more details',style: const TextStyle(color: Colors.white,fontSize: 15,fontFamily: 'poppins',fontStyle: FontStyle.italic),
        recognizer: TapGestureRecognizer()..onTap = (){
      Navigator.push(context, MaterialPageRoute(builder: (context)=> const HomePage(),));}),textAlign: TextAlign.center),
        ]);
        }else{
           return Column(
            children: [
              const Text('R&D PRODUCTS',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
              const SizedBox(height: 20,),
              Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: const [
          Text('ZIP',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 15,fontFamily: 'BubblegumSans'),),
          Text('TRAFFICO',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 15,fontFamily: 'BubblegumSans'),),
          Text('LEAP',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 15,fontFamily: 'BubblegumSans'),),
          Text('BEAM',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 15,fontFamily: 'BubblegumSans'),),
          Text('PACKET',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 15,fontFamily: 'BubblegumSans'),),
        ]),
        const SizedBox(height: 30,),
        Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: const [
          Text('LOOP',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 15,fontFamily: 'BubblegumSans'),),
          Text('PAYTON',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 15,fontFamily: 'BubblegumSans'),),
          Text('SPECTRA',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 15,fontFamily: 'BubblegumSans'),),
          Text('FINX',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 15,fontFamily: 'BubblegumSans'),),
          Text('MIRAGE',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 15,fontFamily: 'BubblegumSans'),),
        ]),
        const SizedBox(height: 80,),
        RichText(text: TextSpan(text: 'For more details',style: const TextStyle(color: Colors.white,fontSize: 15,fontFamily: 'poppins',fontStyle: FontStyle.italic),
        recognizer: TapGestureRecognizer()..onTap = (){
      Navigator.push(context, MaterialPageRoute(builder: (context)=> const HomePage(),));}),textAlign: TextAlign.center),
        ]);
       }
    }),
    );
  }
  
}

class Footer extends StatefulWidget {
  const Footer({Key? key}) : super(key: key);

  @override
  FooterState createState() => FooterState();
}

class FooterState extends State<Footer> {

// Validate Newsletter email address before submit.
String? message;
validateEmail(String email){

    if(email.isEmpty){
      setState(() {
        message = "Email can not be empty";
      });
    }else if(!RegExp(r'\S+@\S+\.\S+').hasMatch(email)){
      setState(() {
        message = "Invalid Email Address";
      });
    }else{
      setState(() {
        //createData(email);
        message = "Not yet available";
      });
    }
  }
  
  Column leftContents(BuildContext context,CrossAxisAlignment alignment,bool mobileView,double hgt)
  {
    Widget textWidget = const Text('GENERI{C}',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 30,fontFamily: "ChakraPetch"),);
    if(mobileView == false){
      textWidget= const Text("");
    }
    return Column(
      crossAxisAlignment: alignment,
      children: [RichText(text: TextSpan(text: 'Home',style: const TextStyle(color: Colors.white,fontSize: 18),
        recognizer: TapGestureRecognizer()..onTap = (){
      Navigator.push(context, MaterialPageRoute(builder: (context)=> const HomePage(),));}),textAlign: TextAlign.center),
        const SizedBox(height: 15,),
        RichText(text: TextSpan(text: 'Contact us',style: const TextStyle(color: Colors.white,fontSize: 18),
            recognizer: TapGestureRecognizer()..onTap = (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=> const HomePage(),));})),
        SizedBox(height: hgt,),
        textWidget,],
    );
  }

  Column centerContents(BuildContext context,double size)
  {
    final emailController = TextEditingController();
    return Column(
      children: [const Text('Join Our Newsletter',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
        const SizedBox(height: 5,),
        SizedBox(width: size * MediaQuery.of(context).size.width,
          child: TextField(
            decoration: const InputDecoration(
              labelText: 'Your Email',fillColor: Colors.white,filled: true,),
              controller: emailController,
              ), ),
        const SizedBox(height: 10,),
      MaterialButton(onPressed: (){
        validateEmail(emailController.text);
        //createData(emailController.text);
        final snackBar = SnackBar(content: Text(message!,style: const TextStyle(color: Colors.black),),
        backgroundColor: Colors.white,);
        ScaffoldMessenger.of(context).showSnackBar(snackBar);
        
      },
      color: const Color(0xff5092EF),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
        child: const Text('Subscribe',style: TextStyle(color: Colors.white,fontStyle: FontStyle.normal),),),
        const SizedBox(height: 30,),],
    );
  }

  Column rightContents(CrossAxisAlignment alignment)
  {
    return Column(
      crossAxisAlignment: alignment,
      children: [const Text('Follow us on',style: TextStyle(color: Colors.white,fontFamily: 'Poppins-Regular'),),
        const SizedBox(height: 5,),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [IconButton(onPressed: (){}, icon: const FaIcon(FontAwesomeIcons.instagram,color: Colors.white,size: 20,)),
          IconButton(onPressed: (){}, icon: const FaIcon(FontAwesomeIcons.facebook,color: Colors.white,size: 20,)),
          IconButton(onPressed: (){}, icon: const FaIcon(FontAwesomeIcons.twitter,color: Colors.white,size: 20,))],),
        const SizedBox(height: 10,),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
            children: const [FaIcon(FontAwesomeIcons.phone,color: Colors.white,size: 15,),Text('  +2348079279899',style: TextStyle(color: Colors.white),),]),
        const SizedBox(height: 10,),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
            children: const [FaIcon(FontAwesomeIcons.envelope,color: Colors.white,size: 15,),Text('  hello@generic.com',style: TextStyle(color: Colors.white),),]),
        const SizedBox(height: 50,),
        const Text('\u00a9 2022 GENERIC',style: TextStyle(color: Colors.white,fontSize: 15),),],
    );
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      color: const Color(0xff223745),
      padding: const EdgeInsets.symmetric(vertical: 40),
      margin: const EdgeInsets.only(top: 5),
      child: LayoutBuilder(builder: (context,constraints){
        //Desktop view of footer
      if(constraints.biggest.width > 800){
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [leftContents(context,CrossAxisAlignment.start,true,120),centerContents(context,0.2),rightContents(CrossAxisAlignment.start)],);
      }// Mobile view of footer
      else {return Column(children: [leftContents(context,CrossAxisAlignment.center,false,50),centerContents(context,0.5),rightContents(CrossAxisAlignment.center)],);}
    }),
    );
    
  }
}