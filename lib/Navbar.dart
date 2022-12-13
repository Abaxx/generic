import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'Contact.dart';
import 'Home.dart';

// NavBar for home page only
class Navbar extends StatelessWidget {
  const Navbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context,constraints){
      if(constraints.biggest.width > 800)
        {
          return const DesktopNavbar();
        }else{
           return const MobileNavbar();
            }
    });
  }
}

class DesktopNavbar extends StatefulWidget {
  const DesktopNavbar({Key? key}) : super(key: key);

  @override
  State<DesktopNavbar> createState() => _DesktopNavbarState();
}
class _DesktopNavbarState extends State<DesktopNavbar> {

  
  @override
  Widget build(BuildContext context) {
    return Padding(padding: const EdgeInsets.symmetric(horizontal: 120,vertical: 20),
      child: Row (
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [GestureDetector(child: const Text('MARVELLON',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 30,fontFamily: "ChakraPetch"),),
          onTap: (){ Navigator.push(context, MaterialPageRoute(builder: (context)=> const HomePage()),);
          },),
          Row(
            children: [
              RichText(text: TextSpan(text: 'Home',style: const TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),
              recognizer: TapGestureRecognizer()..onTap = () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=> const HomePage()),);
          })),
            const SizedBox(width: 20),
            RichText(text: TextSpan(text: 'Contact Us',style:  TextStyle(color: Colors.white,fontSize: 20),
                recognizer: TapGestureRecognizer()..onTap = (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> const ContactPage()),);
            }),),
            
          ],)],
      ),
    );
  }
}

class MobileNavbar extends StatefulWidget {
  const MobileNavbar({Key? key}) : super(key: key);

  @override
  State<MobileNavbar> createState() => _MobileNavbarState();
}
class _MobileNavbarState extends State<MobileNavbar> {

  
  @override
  Widget build(BuildContext context) {
    return Padding(padding: const EdgeInsets.symmetric(horizontal: 50,vertical: 10),
      child: Row (
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [GestureDetector(child: const Text('MARVELLON',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 18,fontFamily: "ChakraPetch"),),
          onTap: (){ Navigator.push(context, MaterialPageRoute(builder: (context)=> const HomePage()),);
          },),
          Row(
            children: [
              RichText(text: TextSpan(text: 'Home',style: const TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 15),
              recognizer: TapGestureRecognizer()..onTap = () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=> const HomePage()),);
          })),
            const SizedBox(width: 20),
            RichText(text: TextSpan(text: 'Contact Us',style: const TextStyle(color: Colors.white,fontSize: 15),
                recognizer: TapGestureRecognizer()..onTap = (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> const ContactPage()),);
            }),),
            
          ],)],
      ),
    );
  }
}