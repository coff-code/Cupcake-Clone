import 'package:cupcake_clone_app/all_page.dart';
import 'package:cupcake_clone_app/cupcake_page.dart';
import 'package:cupcake_clone_app/donut_page.dart';
import 'package:cupcake_clone_app/jar_page.dart';
import 'package:cupcake_clone_app/pastry_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main(){
  runApp(myapp());
}
class myapp extends StatelessWidget {
  const myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: cupcake_clone(),
    );
  }
}
class cupcake_clone extends StatefulWidget {
  const cupcake_clone({super.key});

  @override
  State<cupcake_clone> createState() => _cupcake_cloneState();
}

class _cupcake_cloneState extends State<cupcake_clone> {

  var myindex=0;

  @override
  Widget build(BuildContext context) {

    //scaffold

    return Scaffold(
      backgroundColor: Colors.brown.shade400,

    //appbar

      appBar: AppBar(
          toolbarHeight:70,
           backgroundColor: Colors.brown.shade400,
           leadingWidth: 80,
          leading: IconButton(onPressed: (){}, icon: Icon(Icons.format_align_left_outlined,color:Colors.brown.shade100,size: 30,)),
          actions: [
            IconButton(
              padding: EdgeInsets.all(0),
              onPressed: (){}, icon: CircleAvatar(
              radius: 23,
              backgroundColor: Colors.brown.shade900,
              child: Icon(Icons.bakery_dining_rounded,color: Colors.brown.shade100,size: 30,),
            )),
            SizedBox(width: 25,)
          ],
      ),

    //body

      body: Column(
        children: [
      
          //texts
          
        Container(
         padding:  EdgeInsets.symmetric(horizontal: 27),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 15,),
                    Text("My Bakes",style: GoogleFonts.greatVibes(
                      fontSize: 49,
                      fontWeight: FontWeight.bold,
                      color:  Color(0xFF230600),
                    ),),
                    SizedBox(height: 15,),
                    Text(
                      textAlign: TextAlign.start,
                      "Fork in one hand, cake in the other. Ready, set, indulge!",style: GoogleFonts.charm(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF380E05),
                    ),)
                
                  ],
                ),
              ),
              SizedBox(height: 25,),
      
          //NavigationBarItems   
      
         NavigationBarTheme(
          data: NavigationBarThemeData(labelTextStyle: WidgetStateProperty.resolveWith((states) => states.contains(WidgetState.selected)?TextStyle(color:  Color(0xFF230600),):TextStyle(color: Colors.brown.shade200),)),
           child: NavigationBar(
            selectedIndex: myindex,
            onDestinationSelected: (value) {
              setState(() {
                myindex=value;
              });
            },
            overlayColor: WidgetStatePropertyAll(Colors.transparent),
            backgroundColor: Colors.brown.shade400 ,
            indicatorColor: Colors.transparent,
            destinations: [
              NavigationDestination(
                icon: CircleAvatar(
                radius: 28,
                backgroundColor:
                myindex==0?
                  Color(0xFF230600):Colors.brown.shade200,
                child:Image.asset("assets/images/all_icon.png",height: 45,color: myindex==0?
                 Colors.brown.shade200: Color(0xFF230600),)), label:"All"),
                  NavigationDestination(
                icon: CircleAvatar(
                radius: 28,
                backgroundColor:
                myindex==1?
                  Color(0xFF230600):Colors.brown.shade200,
                child:Image.asset("assets/images/cupcake_icone.png",color: myindex==1?
                 Colors.brown.shade200: Color(0xFF230600),)), label:"Cupcake"),
                  NavigationDestination(
                icon: CircleAvatar(
                radius: 28,
                backgroundColor:
                myindex==2?
                  Color(0xFF230600):Colors.brown.shade200,
                child: Image.asset("assets/images/jar_icon.png",height: 33,color: myindex==2?
                 Colors.brown.shade200: Color(0xFF230600),)), label:"Jar"),
                  NavigationDestination(
                icon: CircleAvatar(
                radius: 28,
                backgroundColor:
                myindex==3?
                  Color(0xFF230600):Colors.brown.shade200,
                child: Image.asset("assets/images/pastry_icon.png",height: 45,color: myindex==3?
                 Colors.brown.shade200: Color(0xFF230600),)), label:"Pastry"),
                  NavigationDestination(
                icon: CircleAvatar(
                radius: 28,
                backgroundColor:
                myindex==4?
                  Color(0xFF230600):Colors.brown.shade200,
                child: Image.asset("assets/images/donut_icon.png",height: 35,color: myindex==4?
                 Colors.brown.shade200: Color(0xFF230600),)), label:"Donut"),
                          
             ]),
         ),
      
      
        //items
      
        myindex==0?
       all_page():
        myindex==1?
        cupcake_page():
        myindex==2?
        jar_page():
        myindex==3?
        pastry_page():
        myindex==4?
        donut_page():
        Container()
        ],
      ),
    
      
    );
  }
}

