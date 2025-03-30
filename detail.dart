import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

//All Details

class alldetails{
  var color;
  String image;
  String name;
  var price;
  var pcs;
  alldetails(this.color,this.image,this.name,this.price,this.pcs);
}
List alldetailList=[
  alldetails(  Color(0xFF230600),  "assets/images/jar_1.png","Jar red velvet","\$11.0","3 PCS"),
  alldetails(  Color(0xFF380E05), "assets/images/pastry_1.png"," Strawberry cake","\$10.00","6 PCS"),
  alldetails(  Color(0xFF380F05),  "assets/images/cupcake_1.png","Choco cupcake","\$7.40","5 PCS"),
  
];

//cupcake datails

class cupcakedetails{
  var color;
  String image;
  String name;
  String price;
  String pcs;
  cupcakedetails(this.color,this.image,this.name,this.price,this.pcs);
}
List cupcakedetailList=[
  cupcakedetails(  Color(0xFF380E05),  "assets/images/cupcake_2.png","Red velvet","\$5.50","3 PCS"),
  cupcakedetails(  Color(0xFF230600),  "assets/images/cupcake_4.png","coffe Cupcake","\$5.40","3 PCS"),
  cupcakedetails(  Color(0xFF380F05),  "assets/images/cupcake_1.png","choco Cupcake","\$4.10","3 PCS"),



  
];

//jar details

class jardetails{
  var color;
  String image;
  String name;
  String price;
  String pcs;
  jardetails(this.color,this.image,this.name,this.price,this.pcs);
}
List jardetailList=[
  jardetails(  Color(0xFF380E05),  "assets/images/jar_2.png","Mix Flavours","\$6.50","3 jars"),
  jardetails(  Color(0xFF230600), "assets/images/jar_3.png"," Milky mix","\$7.0","3 jars"),
  jardetails(  Color(0xFF380F05),  "assets/images/jar_1.png","Red Velvet","\$11.40","3 jars"),
  
];

//pastry datails

class pastrydetail{
  var color;
  String image;
  String name;
  String price;
  String pcs;
  pastrydetail(this.color,this.image,this.name,this.price,this.pcs);
}
List pastrydetailList=[
  pastrydetail(  Color(0xFF230600),  "assets/images/pastry_3.png","chocolate Brownie","\$5.50","3 PCS"),
  pastrydetail(  Color(0xFF380F05), "assets/images/pastry_2.png"," Velvet Torte","\$10.00","6 PCS"),
  pastrydetail(  Color(0xFF380F05),  "assets/images/pastry_1.png","Strawberry Cake","\$7.40","5 PCS"),
  
];

//donut details

class donutdetails{
  var color;
  String image;
  String name;
  String price;
  var pcs;
  donutdetails(this.color,this.image,this.name,this.price,this.pcs);
}
List donutdetailList=[
  donutdetails(  Color(0xFF230600),  "assets/images/donut_2.png","Mix jam","\$9.50","3 PCS"),
  donutdetails(  Color(0xFF380E05), "assets/images/donut_3.png"," coffe flav","\$10.00","6 PCS"),
  donutdetails(  Color(0xFF380F05),  "assets/images/donut_1.png","choco ","\$7.40","5 PCS"),
  
];

//moredetails

Widget moredetails(
  var num,
  String name
){
  return Container(
              height: 100,
              width: 60,
              decoration: BoxDecoration(color: Colors.brown.shade300,borderRadius: BorderRadius.circular(50),),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                CircleAvatar(
                  backgroundColor: const Color.fromARGB(255, 199, 187, 183),
                  radius: 23,
                  child: Text(num,style: TextStyle(color: Colors.brown.shade900,fontWeight: FontWeight.bold),),
                ),
                Text(name,style: TextStyle(color: Colors.brown.shade900,fontWeight: FontWeight.bold),),
                SizedBox(height: 5,)
              ],),
            );
}