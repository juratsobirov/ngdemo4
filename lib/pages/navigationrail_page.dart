import 'package:flutter/material.dart';

class NavigationRailPage extends StatefulWidget {
  const NavigationRailPage({super.key});

  @override
  State<NavigationRailPage> createState() => _NavigationRailPageState();
}

class _NavigationRailPageState extends State<NavigationRailPage> {
int _selectedIndex = 0;

String str = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Navigation Rail Page"),
        backgroundColor: Colors.blue,
      ),

      body: Row(
        children: [

          NavigationRail(
            selectedIndex: _selectedIndex,
            onDestinationSelected: (int index){
              setState((){
                _selectedIndex = index;

                switch (_selectedIndex){
                  case 0: str="This is First";
                  break;
                  case 1: str="This is Second";
                  break;
                  case 2: str= "This is Third";
                  break;
                }

              });
            },
            labelType: NavigationRailLabelType.selected,

            destinations: [

              NavigationRailDestination(
                icon: Icon(Icons.favorite_border),
                selectedIcon: Icon(Icons.favorite),
                label: Text("First"),
              ),


              NavigationRailDestination(
                icon:Icon(Icons.bookmark_border),
                selectedIcon: Icon(Icons.bookmark),
                label: Text("Second"),
              ),


              NavigationRailDestination(
                icon: Icon(Icons.star_border),
                selectedIcon: Icon(Icons.star),
                label: Text("Third"),
               ),

            ],
          ),

          VerticalDivider(thickness:1, width:1),


          Expanded(
            child: Center(
              child: Container(
                child:Text("$str"),
                color: Colors.cyan,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
