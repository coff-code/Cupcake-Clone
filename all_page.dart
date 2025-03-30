import 'dart:ui';

import 'package:cupcake_clone_app/detail.dart';
import 'package:cupcake_clone_app/all_next_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class all_page extends StatefulWidget {
  const all_page({super.key});

  @override
  State<all_page> createState() => _all_pageState();
}

class _all_pageState extends State<all_page> {
  @override
  Widget build(BuildContext context) {
    return Expanded(

      //cardGrid

      child: GridView.builder(
        shrinkWrap: true,
        padding: EdgeInsets.only(left: 30,bottom: 40,right: 30,top: 10),
        scrollDirection: Axis.horizontal,
        itemCount: alldetailList.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          childAspectRatio: 1.6/1,
          mainAxisSpacing: 20,
          crossAxisCount: 1), itemBuilder: (context, index) {
       return   GestureDetector(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) =>nextpage(allitems: alldetailList[index],) ,));
        },
         child: Card(
          shadowColor: Colors.brown.shade900,
          elevation: 10,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(40))),
                color: alldetailList[index].color,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
         
                    //images
         
                    Hero(
                      tag: alldetailList[index],
                      child: Image.asset(
                        height: 200,
                        alldetailList[index].image),
                    ),
         
                      //name
         
                       Text(alldetailList[index].name,style: GoogleFonts.creepster(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color:  Colors.brown.shade100,
                      ),),
         
                      //price and add
         
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(alldetailList[index].price,style:TextStyle(color: Colors.brown.shade100,fontSize: 20),),
                            Text(alldetailList[index].pcs,style:TextStyle(color: Colors.brown.shade400,fontSize: 15)),
                            ],
                        ),
                        SizedBox(width: 35,),
                        CircleAvatar(
                          radius: 30,
                          backgroundColor:Colors.brown.shade100 ,
                          child: Center(child: Icon(Icons.arrow_forward,color:Colors.brown.shade900,size: 35,),),
                        )
                      ],)
                    ],
                ),
         ),
       );
      },),
    );
  }
}
//