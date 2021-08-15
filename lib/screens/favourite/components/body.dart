import 'package:flutter/cupertino.dart';
import 'package:papp/constants.dart';
import 'package:papp/models/data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:papp/models/favpro1.dart';
import 'package:papp/screens/dua/dua_details.dart';
import 'package:provider/provider.dart';

class FBody extends StatefulWidget {
  const FBody({Key? key}) : super(key: key);

  @override
  _FBodyState createState() => _FBodyState();
}

class _FBodyState extends State<FBody> {
  @override
  Widget build(BuildContext context) {
    // var duas = FavModel().alldua;
    var duas = Provider.of<FavModel>(context).duas;

    return Container(
      child: ListView.separated(
          padding: const EdgeInsets.all(5),
          itemBuilder: (BuildContext context, int index) {
            return Container(
              color: Colors.white54,
              child: Padding(
                padding: const EdgeInsets.all(5.0),

                child: InkWell(
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Icon(Icons.ac_unit),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(duas[index].name, style: TextStyle(fontWeight: FontWeight.bold),),
                          Text(duas[index].lastMessage, textAlign: TextAlign.left),
                        ],
                      ),
                    ],
                  ),
                  onTap: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DuaScreen(duas: duas[index]),
                        )
                    );
                  },
                ),
              ),
            );
          },
          separatorBuilder: (BuildContext context, int index) => const Divider(thickness: 1,),
          itemCount: duas.length),
    );
  }
}






