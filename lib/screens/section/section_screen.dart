import 'package:flutter/cupertino.dart';
import 'package:papp/constants.dart';
import 'package:papp/models/data.dart';
import 'package:flutter/material.dart';

import 'package:papp/screens/dua/dua_details.dart';

class SectionScreen extends StatelessWidget {
  SectionScreen({Key? key, required this.cid}) : super(key: key);
  final int cid;

  List<Dua> get duas => duaData.where((item) => item.cid == cid).toList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(categoryData[cid].name),
      ),
      body: Container(
      child: ListView.separated(
          padding: const EdgeInsets.all(5),
          itemBuilder: (BuildContext context, int index) {
            return Container(
              color: Colors.white54,
              child: Padding(
                padding: const EdgeInsets.all(5.0),

                child: Material(
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
                      print(duas);
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DuaScreen(duas: duas[index]),
                          )
                      );
                    },
                  ),
                ),
              ),
            );
          },
          separatorBuilder: (BuildContext context, int index) => const Divider(thickness: 1,),
          itemCount: duas.length),
      )
    );
  }
}