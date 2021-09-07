import 'package:flutter/material.dart';
import 'package:socialapp/models/album.model.dart';
import 'package:socialapp/widgets/imageViewer.dart';

class NewsWidget extends StatefulWidget {
  final List<AlbumModel>? data;
  const NewsWidget({this.data});

  @override
  _NewsWidgetState createState() => _NewsWidgetState();
}

class _NewsWidgetState extends State<NewsWidget> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: widget.data!.length,
      itemBuilder: (BuildContext context, int index){
        return     Container(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
               Row(
                 children: [
                   ImageViewerWidget(url: "https://upload.wikimedia.org/wikipedia/commons/thumb/c/c1/Profil_Avatar_S.jpg/575px-Profil_Avatar_S.jpg",borderRadius: BorderRadius.circular(50),width: 40,height: 40,),
                   SizedBox(
                     width: 10,
                   ),
                   Column(
                     mainAxisAlignment: MainAxisAlignment.start,
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                       Container(width: MediaQuery.of(context).size.width / 2  ,child: Text(widget.data![index].title,overflow: TextOverflow.ellipsis, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),)),
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
            child: Column(
              children: [
                Container(
                  child: ImageViewerWidget(
                    url: widget.data![index].thumbnailUrl,
                    width: MediaQuery.of(context).size.width,
                    height: 250,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                SizedBox(height: 10,),
                Row(
                  children: [
                    Icon(Icons.favorite_border,color: Colors.black38,),
                    SizedBox(width: 10,),
                    Text("10k", style: TextStyle(color: Colors.black38),),
                    SizedBox(width: 30,),
                    Icon(Icons.textsms_outlined,color: Colors.black38,),
                    SizedBox(width: 10,),
                    Text("5k", style: TextStyle(color: Colors.black38),),
                    // SizedBox(width: 30,),
                    // Icon(Icons.favorite_border,color: Colors.black38,),
                    // SizedBox(width: 10,),
                    // Text("10k", style: TextStyle(color: Colors.black38),),

                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );

      }    
    );
  }
}