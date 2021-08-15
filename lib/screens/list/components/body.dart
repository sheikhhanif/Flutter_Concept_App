import 'package:flutter/cupertino.dart';
import 'package:papp/constants.dart';
import 'package:papp/models/data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:papp/screens/dua/dua_details.dart';


class listBody extends StatefulWidget {
  const listBody({Key? key, required this.duaData}) : super(key: key);

  final List<Dua> duaData;
  @override
  _listBodyState createState() => _listBodyState();
}

class _listBodyState extends State<listBody> {
  @override
  Widget build(BuildContext context) {
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
                          Text(duaData[index].name, style: TextStyle(fontWeight: FontWeight.bold),),
                          Text(duaData[index].lastMessage, textAlign: TextAlign.left),
                        ],
                      ),
                    ],
                  ),
                  onTap: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DuaScreen(duas: duaData[index]),
                        )
                    );
                  },
                ),
              ),
            );
          },
          separatorBuilder: (BuildContext context, int index) => const Divider(thickness: 1,),
          itemCount: duaData.length),
    );
  }
}






