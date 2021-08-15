import 'package:flutter/cupertino.dart';
import 'package:papp/constants.dart';
import 'package:papp/models/data.dart';
import 'package:papp/models/favpro1.dart';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';



class DuaScreen extends StatefulWidget {
  const DuaScreen({Key? key, required this.duas}) : super(key: key);

  final Dua duas;

  @override
  _DuaScreenState createState() => _DuaScreenState();
}

class _DuaScreenState extends State<DuaScreen> {

  @override
  Widget build(BuildContext context) {
  var dualist = Provider.of<FavModel>(context).duas;



    // Use the Todo to create the UI.
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.duas.name),
        actions: [
          IconButton(
            icon: Icon(
              dualist.contains(widget.duas) ? Icons.favorite : Icons.favorite_border,
              color: dualist.contains(widget.duas) ? Colors.greenAccent : null,
            ),
            //

            onPressed:(){
            if (dualist.contains(widget.duas)) {
              Provider.of<FavModel>(context, listen: false).remove(widget.duas);
              } else {
              Provider.of<FavModel>(context, listen: false).add(widget.duas);

            }
          },

          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Text(widget.duas.lastMessage),
      ),
    );
  }
}
