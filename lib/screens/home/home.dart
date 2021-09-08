import 'package:flutter/material.dart';
import 'package:socialapp/blocs/album.bloc.dart';
import 'package:socialapp/models/album.model.dart';
import 'package:socialapp/screens/home/widgets/news.widget.dart';
import 'package:socialapp/screens/home/widgets/story.widget.dart';

class Home extends StatefulWidget {
  const Home({ Key? key }) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadData();
  }

  void loadData() async {
    await AlbumBloc.instance.getAllAlbum();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation:0,
        leading: Container(
          margin: EdgeInsets.all(5),
          width: 50,
          height:50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            color:Colors.grey.withOpacity(0.1),
            ),
            child: Icon(Icons.add_a_photo_outlined,color: Colors.black.withOpacity(0.6),),
        ),
        actions: [
          Container(
          margin: EdgeInsets.all(5),
          width: 50,
          height:50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            color:Colors.grey.withOpacity(0.1),
            ),
            child: Icon(Icons.mail_outline, color:Colors.black.withOpacity(0.6),),
        ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          padding: EdgeInsets.all(10),
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              StoryWidget(),
              Container(
                height: MediaQuery.of(context).size.height,
                child: StreamBuilder<List<AlbumModel>?>(
                  stream: AlbumBloc.instance.stream,
                  builder: (context, snapshot) {
                    if (!snapshot.hasData) return Center(child: CircularProgressIndicator(color: Colors.black12,));
                    return NewsWidget(data: snapshot.data);
                  },
                ),
              ),

              // NewsWidget(),
              // SizedBox(height: 40,),
              // NewsWidget(),
            ],
          ),
        ),
      ),
    );
  }
}