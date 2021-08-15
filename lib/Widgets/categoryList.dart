import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:papp/models/data.dart';


class CategoryList extends StatelessWidget {
  final Dua dua;
  CategoryList(this.dua);

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

                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Icon(Icons.ac_unit),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(dua.name, style: TextStyle(fontWeight: FontWeight.bold),),
                        Text(dua.lastMessage, textAlign: TextAlign.left),
                      ],
                    ),
                  ],
                ),
              ),
            );
          },
          separatorBuilder: (BuildContext context, int index) => const Divider(thickness: 1,),
          itemCount: 2,
      )
    );
  }
}
