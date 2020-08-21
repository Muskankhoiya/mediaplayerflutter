import 'package:flutter/material.dart';
import 'ui/LocalAudio.dart';
import 'ui/LocalVideo.dart';
import 'ui/NetworkAudio.dart';
import 'ui/NetworkVideo.dart';

main() {
  runApp(Media());
}

class Media extends StatelessWidget {
  build(BuildContext b) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            title: Text("          _Media Player_"),
            backgroundColor: Colors.black,
            
            bottom: TabBar(
              labelColor: Colors.grey,
              tabs: [
                Tab(
                  icon: Icon(Icons.audiotrack),
                  text: "Audio",
                ),
                Tab(
                  icon: Icon(Icons.album),
                  text: "URL audio",
                ),
                Tab(
                  icon: Icon(Icons.videocam),
                  text: "Video",
                ),
                Tab(
                  icon: Icon(Icons.video_call),
                  text: "URL video",
                ),
              ],
            ),
          ),
         /* bottomNavigationBar:new BottomNavigationBar(fixedColor: Colors.pink,items: [
        new BottomNavigationBarItem(
          icon: new Icon(Icons.home),
          title: new Text("Home"),
        ),
        new BottomNavigationBarItem(
          icon: new Icon(Icons.message),
          title: new Text("message"),
        )
      ]),*/
     // persistentFooterButtons: <Widget>[new Text('docker application                      '),
      //new Icon(Icons.ac_unit),],
      drawer: Drawer(
  child: Column(
    children: <Widget>[
      UserAccountsDrawerHeader(
      arrowColor: Colors.black,
      decoration: BoxDecoration(
        gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  stops: [ .1, .8, ],
                  colors: [Colors.pinkAccent,  Colors.redAccent,],)
        
        

              //color: Colors.pink,
            ),
        
        accountName: Text("MUSKAN"),
        accountEmail: Text("muskan@gmail.com"),
        currentAccountPicture: CircleAvatar(
          backgroundColor: Colors.black,
          child: Text("MK"),
        ),
       /* otherAccountsPictures: <Widget>[
          CircleAvatar(
            
            backgroundColor: Colors.black,
            child: Text("MK"),
          )
        ],*/
      ),
      ListTile(
        
        title: new Text("Local music"),
        leading: new Icon(Icons.music_note),
        
      ),
      Divider(
        height: 0.1,
        color: Colors.grey,
      ),
      ListTile(
        title: new Text("URL music"),
        leading: new Icon(Icons.music_video),
      ),
       Divider(
        height: 0.1,
        color: Colors.grey,
        
      ),
      ListTile(
        title: new Text("Video"),
        leading: new Icon(Icons.videogame_asset),
      ),
       Divider(
        height: 0.1,
        color: Colors.grey,
      ),
      ListTile(
        title: new Text("URL video"),
        leading: new Icon(Icons.videocam),
      ),
       Divider(
        height: 0.1,
        color: Colors.grey,
      ),
    ],
  ),
),
          body: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  stops: [ .1, .8, ],
                  colors: [Colors.pinkAccent,  Colors.redAccent,],)
            ),
            child: TabBarView(
              children: [
                LocalAudio(),
                NetworkAudio(),
                LocalVideo(),
                NetworkVideo(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}