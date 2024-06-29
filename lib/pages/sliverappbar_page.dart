import 'package:flutter/material.dart';

class SliverAppBarPage extends StatefulWidget {
  const SliverAppBarPage({super.key});

  @override
  State<SliverAppBarPage> createState() => _SliverAppBarPageState();
}

class _SliverAppBarPageState extends State<SliverAppBarPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

body: CustomScrollView(
  slivers: [
    SliverAppBar(
      expandedHeight: 220,
      floating: true,
      snap: true,
      elevation: 50,
      backgroundColor: Colors.grey,
      flexibleSpace: FlexibleSpaceBar(
      centerTitle:true,
        title: Text("Sliver App Bar"),
        background: Image(
          image: AssetImage("assets/images/im_sample.jpg"),
          fit: BoxFit.cover,
        ),
      ),
    ),

    SliverList(
      delegate: SliverChildListDelegate(_buildList(50)),
    ),
  ],
),

    );
  }
  List<Widget> _buildList(int count){
    List<Widget> items = [];
    for(int i =0; i<=count;i++){
      items.add(_itemsList(i));
    }

    return items;
  }

  Widget _itemsList (int i){
    return Container(
      margin: EdgeInsets.all(10),
      color: Colors.cyan,
      height: 50,
      child:Center(child: Text("Item: $i")),
    );
  }

}
