import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class SwitchScreen extends StatefulWidget
{
  const SwitchScreen({Key? key}) : super(key: key);

  @override
  State<SwitchScreen> createState() => _SwitchScreenState();
}

class _SwitchScreenState extends State<SwitchScreen>
{

  bool isSwitched = false;
  final player = AudioPlayer();
  var textValue = 'Switch is OFF';

  void toggleSwitch(bool value) /*async*/
  {
    if (isSwitched == false)
    {

      setState(() {
        isSwitched = true;
        textValue = 'Switch Button is ON';
        player.play(AssetSource('song.mp3'));
      });
      player.play(AssetSource('song.mp3'));
      print('Switch Button is ON');
    }
    else
    {
      player.stop();
      setState(() {
        isSwitched = false;
        textValue = 'Switch Button is OFF';
      });
      print('Switch Button is OFF');
    }
  }

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(

      appBar: AppBar(title: Text("Songs"),),
      body: Center(

          child: Column(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Transform.scale(scale: 2,
                    child: Switch(
                      onChanged: toggleSwitch,
                      value: isSwitched,
                      activeColor: Colors.blue,
                      activeTrackColor: Colors.yellow,
                      inactiveThumbColor: Colors.redAccent,
                      inactiveTrackColor: Colors.orange,)),
                Text('$textValue', style: const TextStyle(fontSize: 20),),

                ElevatedButton(
                  onPressed: () =>
                  {
                   // toggleSwitch(value);
                   // player.play(UrlSource('https://prakrutitech.xyz/API/sound.mp3'))
                  },
                  child: Text('Play'),
                )
              ])


      ),

    );

  }
}