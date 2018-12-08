import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

class HomePage extends StatefulWidget
{
  State<StatefulWidget> createState() => HomePageState();
}

class HomePageState extends State with TickerProviderStateMixin
{
  Widget build(BuildContext context)
  {
    AudioCache player = new AudioCache();
    TabController controller = new TabController(length: 2, vsync: this);

    return new Scaffold(
      body:
          TabBarView(
            controller: controller,
            children: <Widget>[
            Container(
              child: new Center(
                child: new FractionallySizedBox(
                    heightFactor: 0.9,
                    widthFactor: 0.9,
                    child: new RaisedButton(
                      onPressed: (){
                        player.play("elfoclip.mp3");
                      },
                      child: Image.asset("assets/elfo.png"),
                    )
                ),
              ),
            ),
            Container(
              child: new Center(
                child: new FractionallySizedBox(
                    heightFactor: 0.9,
                    widthFactor: 0.9,
                    child: new RaisedButton(
                      onPressed: (){
                        player.play("luciclip.mp3");
                      },
                      child: Image.asset("assets/luci.png"),
                    )
                ),
              ),
            ),
          ],)
    );
  }
}