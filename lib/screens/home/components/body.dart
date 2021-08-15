import 'package:flutter/cupertino.dart';
import 'package:papp/constants.dart';
import 'package:papp/models/data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:papp/screens/section/section_screen.dart';

class homebd extends StatefulWidget {
  const homebd({Key? key}) : super(key: key);

  @override
  _homebdState createState() => _homebdState();
}

class _homebdState extends State<homebd> {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(5.0),
        child: GridView.builder(
          gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
          itemBuilder: (context, position) {
            return Padding(
                padding: const EdgeInsets.all(2.0),
                child: InkWell(
                    onTap: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SectionScreen(cid: position),
                          )
                      );
                    },
                    child: Column(
                      children: [
                        Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          elevation: 1,
                          child: Padding(
                            padding: const EdgeInsets.all(22.0),
                            child: SvgPicture.asset(
                              categoryData[position].image,
                              color: Colors.green,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(2.0),
                          child: Container(
                            alignment: Alignment.bottomCenter,
                            child: Text(
                              categoryData[position].name,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        )
                      ],
                    )));
          },
          itemCount: categoryData.length,
        ),
      );

  }
}