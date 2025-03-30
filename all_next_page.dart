import 'package:cupcake_clone_app/detail.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class nextpage extends StatefulWidget {
  final alldetails allitems;
  const nextpage({super.key,required this.allitems});

  @override
  State<nextpage> createState() => _nextpageState();
}

class _nextpageState extends State<nextpage> {

  int pcs=3;
  int price=11;
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      //appabr

      appBar: AppBar(
        toolbarHeight: 40,
        backgroundColor: widget.allitems.color,
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        }, icon: Icon(Icons.arrow_back,color: Colors.brown.shade200,size: 30,)),
      ),
      backgroundColor: widget.allitems.color,
      body: SingleChildScrollView(
        child: Container( 
          child: Column(
            children: [
        
          //image
        
              Hero(
                tag: widget.allitems,
                child: Image.asset(
                  height: 300,
                  widget.allitems.image)),
          SizedBox(height: 10,),
        
        
          //name
              
              Center(
                child: Text(widget.allitems.name,style: GoogleFonts.creepster(
                                fontSize: 45,
                                fontWeight: FontWeight.bold,
                                color:  Colors.brown.shade100,
                              ),),
              ),
          SizedBox(height: 20,),
        
        
          //price and pieces
        
            Container(padding: EdgeInsets.symmetric(horizontal: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                       Text("\$$price",style:TextStyle(color: Colors.brown.shade100,fontSize: 25),),
                       Container(
              decoration: BoxDecoration(border: Border.all(color: Colors.brown.shade100),borderRadius: BorderRadius.circular(50)),
              child: Row(children: [
                IconButton(onPressed: (){
                setState(() {
                   
          
                  });
                }, icon: Icon(Icons.horizontal_rule_outlined,color: Colors.brown.shade100,size: 20,)),
                Text("$pcs  PCS",style: TextStyle(color: Colors.brown.shade100,fontSize: 17),),
                IconButton(onPressed: (){
                  setState(() {
                    pcs++;
                    price=price+3;
                  });
                }, icon: Icon(Icons.add,color: Colors.brown.shade100)),
              
              ],),
                       )
              ],),
            ),
          SizedBox(height: 20,),
        
        
          //ingredients
        
          Container(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("INGREDIENTS",style: TextStyle(color: Colors.brown,fontSize: 20,),),
              SizedBox(height: 10,),
              Text("Cocoa powder,butter,sugar,eggs,buttermilk,vinegar,red food coloring",style:  GoogleFonts.smoochSans(
                                fontSize: 25,
                                fontWeight: FontWeight.w500,
                                color:  Colors.brown.shade100,
                              ),)
            ],
          )),
          SizedBox(height: 20,),
        
          //moredetails
        
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              moredetails("245","Calories"),
              moredetails("3.5","Prot"),
              moredetails("8.2","Fat"),
              moredetails("14.8","Carbs"),
            ],
          ),
          SizedBox(height: 20,),
        
        
           //buttons
        
           Container(
            padding: EdgeInsets.symmetric(horizontal: 25),
             child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
              GestureDetector(
                onTap: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text("Added to the cart",style: TextStyle(fontSize: 15,),),
                      backgroundColor: Colors.brown.shade900,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
                      behavior: SnackBarBehavior.floating,
                     duration: Duration(seconds: 2),
                      )
                      );
                },
                child: Container(
                  height: 70,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    border: Border.all(color: Colors.brown.shade100,width: 3)
                  ),
                  child: Image.asset(
                    cacheHeight: 35,
                    color: Colors.brown.shade100,
                    "assets/images/cart.png"),
                ),
              ),
              SizedBox(width: 15,),
             IconButton(
               style: ButtonStyle(
                 shape: WidgetStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(50))),
                 padding: WidgetStatePropertyAll(EdgeInsets.symmetric(vertical: 20,horizontal: 70)),
                 backgroundColor: WidgetStatePropertyAll(Colors.brown.shade200)),
               onPressed: (){}, icon: Text("Order Now",style: TextStyle(color: Color(0xFF230600),fontWeight: FontWeight.w900,fontSize: 20),)),
             ],),
           ),
          SizedBox(height: 30,),
        
            ],
          ),
        ),
      ),
    );
  }
}