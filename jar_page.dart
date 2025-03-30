import 'package:cupcake_clone_app/detail.dart';
import 'package:cupcake_clone_app/jar_next_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class jar_page extends StatefulWidget {
  const jar_page({super.key});

  @override
  State<jar_page> createState() => _jar_pageState();
}

class _jar_pageState extends State<jar_page> {
  @override
  Widget build(BuildContext context) {
    return Expanded(

      //cardGrid

      child: GridView.builder(
        padding: EdgeInsets.only(left: 30,bottom: 40,right: 30,top: 10),
        scrollDirection: Axis.horizontal,
        itemCount: jardetailList.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          childAspectRatio: 1.6/1,
          mainAxisSpacing: 20,
          crossAxisCount: 1), itemBuilder: (context, index) {
       return   GestureDetector(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => jar_next_page(jaritems: jardetailList[index]),));
        },
         child: Card(
          shadowColor: Colors.brown.shade900,
          elevation: 10,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(40))),
                color: jardetailList[index].color,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
         
                    //images
         
                    Hero(
                      tag: jardetailList[index],
                      child: Image.asset(
                        height: 200,
                        jardetailList[index].image),
                    ),
         
                      //name
         
                       Text(jardetailList[index].name,style: GoogleFonts.creepster(
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
                            Text(jardetailList[index].price,style:TextStyle(color: Colors.brown.shade100,fontSize: 20),),
                            Text(jardetailList[index].pcs,style:TextStyle(color: Colors.brown.shade400,fontSize: 15)),
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