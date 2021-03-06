import 'package:flutter/material.dart';
import 'package:socialapp/widgets/imageViewer.dart';

class StoryWidget extends StatefulWidget {
  const StoryWidget({ Key? key }) : super(key: key);

  @override
  _StoryWidgetState createState() => _StoryWidgetState();
}

class _StoryWidgetState extends State<StoryWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric( vertical: 5),
      height: 87,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [  
        userStory(),
        SizedBox(width:10),
        story("Chance Muteba"),
        SizedBox(width:10),
        story("Michée Nonga"),
        SizedBox(width:10),
        story("Didier Lemende"),
        SizedBox(width:10),
        story("Jessy Ndaya"),
        SizedBox(width:10),
        story("Chance Muteba"),
       
        ],
      ),
    );
  }
}

Widget story(name){
  return Column(
          children: [
            ImageViewerWidget(url: "https://upload.wikimedia.org/wikipedia/commons/thumb/c/c1/Profil_Avatar_S.jpg/575px-Profil_Avatar_S.jpg",borderRadius: BorderRadius.circular(50),width: 65,height: 65,),
            SizedBox(height: 5,),
            Container(width:50,child:Text(name,overflow: TextOverflow.ellipsis,))
          ],
        );
}

Widget userStory(){
  return Column(
          children: [
            Column(
              children: [
                Stack(
                children:[
                  ImageViewerWidget(url: "https://upload.wikimedia.org/wikipedia/commons/thumb/c/c1/Profil_Avatar_S.jpg/575px-Profil_Avatar_S.jpg",borderRadius: BorderRadius.circular(50),width: 65,height: 65,),
                  Positioned(
                    top: 20,
                    bottom:20,
                    right: 20,
                    left: 20,
                    child: Container(
                      width: 10,
                      height: 10,
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.8),
                        borderRadius: BorderRadius.circular(50)
                      ),
                      child: Icon(Icons.add))
                  ),
                ],),
                SizedBox(height: 5,),
                Text("Me"),
              ],
            ),
          ],
        );
}