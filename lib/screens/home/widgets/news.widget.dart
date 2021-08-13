import 'package:flutter/material.dart';

class NewsWidget extends StatefulWidget {
  const NewsWidget({ Key? key }) : super(key: key);

  @override
  _NewsWidgetState createState() => _NewsWidgetState();
}

class _NewsWidgetState extends State<NewsWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
               Row(
                 children: [
                   CircleAvatar(backgroundColor:Colors.grey ,radius: 20, backgroundImage: NetworkImage("https://upload.wikimedia.org/wikipedia/commons/thumb/c/c1/Profil_Avatar_S.jpg/575px-Profil_Avatar_S.jpg")),
                   SizedBox(
                     width: 10,
                   ),
                   Column(
                     mainAxisAlignment: MainAxisAlignment.start,
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                       Text("Sandra Pakajda",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),),
                       Text("il y'a une heure")
                     ],
                   ),
                 ],
               ),
               Icon(Icons.more_vert),
            ],
          ),
          SizedBox(height: 20,),
          Container(
            margin: EdgeInsets.only(left: 50),
            width: MediaQuery.of(context).size.width,
            height: 250,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(image: NetworkImage("https://www.leparisien.fr/resizer/sBHwgPb-95-TKpWGJIBbSAlgvD4=/932x582/cloudfront-eu-central-1.images.arcpublishing.com/leparisien/OOOVADTUDJG5XD2AGKRY5X4BCM.jpg"),fit: BoxFit.cover,)
            ),

          ),
        ],
      ),
    );
  }
}