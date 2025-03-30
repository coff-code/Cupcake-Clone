import 'package:cupcake_clone_app/detail.dart';
import 'package:cupcake_clone_app/pastry_next_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class pastry_page extends StatefulWidget {
  const pastry_page({super.key});

  @override
  State<pastry_page> createState() => _pastry_pageState();
}

class _pastry_pageState extends State<pastry_page> {
  @override
  Widget build(BuildContext context) {
    return  Expanded(

      //cardGrid

      child: GridView.builder(
        padding: EdgeInsets.only(left: 30,bottom: 40,right: 30,top: 10),
        scrollDirection: Axis.horizontal,
        itemCount: pastrydetailList.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          childAspectRatio: 1.6/1,
          mainAxisSpacing: 20,
          crossAxisCount: 1), itemBuilder: (context, index) {
       return   GestureDetector(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => pastry_next_page(pastryitems: pastrydetailList[index]),));
        },
         child: Card(
          shadowColor: Colors.brown.shade900,
          elevation: 10,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(40))),
                color: pastrydetailList[index].color,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
         
                    //images
         
                    Hero(
                      tag: pastrydetailList[index],
                      child: Image.asset(
                        height: 200,
                        pastrydetailList[index].image),
                    ),
         
                      //name
         
                       Text(pastrydetailList[index].name,style: GoogleFonts.creepster(
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
                            Text(pastrydetailList[index].price,style:TextStyle(color: Colors.brown.shade100,fontSize: 20),),
                            Text(pastrydetailList[index].pcs,style:TextStyle(color: Colors.brown.shade400,fontSize: 15)),
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