import 'package:flutter/material.dart';
import 'package:papp/models/data.dart';
import 'package:papp/screens/dua/dua_details.dart';


class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget appBarTitle = new Text("Search");
  Icon actionIcon = new Icon(Icons.search);
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
          centerTitle: true,
          title:appBarTitle,
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {
                showSearch(
                  context: context,
                  delegate: CustomSearchDelegate(),
                );
              },
            ),
            ]
      ),
    );
  }
}


class CustomSearchDelegate extends SearchDelegate {
  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: Icon(Icons.clear),
        onPressed: () {
          query = '';
        },
      ),
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.arrow_back),
      onPressed: () {
        close(context, null);
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) => Container();


  @override
  Widget buildSuggestions2(BuildContext context) {
    // This method is called everytime the search term changes.
    // If you want to add search suggestions as the user enters their search term, this is the place to do that.
    return Column();
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    var duas = [];
    if (query.isNotEmpty) {
      duas.addAll(duaData.where((e) => e.name.toLowerCase().contains(query) ||
          e.name.startsWith(query) || e.lastMessage.toLowerCase().contains(query)));

    }
    else
      duas = [];

    return ListView.separated(
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
        itemCount: duas.length);
  }


}