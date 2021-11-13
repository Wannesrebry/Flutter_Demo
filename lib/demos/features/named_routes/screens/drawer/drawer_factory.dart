import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_demo/demos/features/named_routes/screens/second_screen.dart';


class BasicDrawer extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    ListTileFactory navItemFactory = ListTileFactory(context);
    return DrawerTemplate().create([
      navItemFactory.create(Icons.home, "Home", "/"),
      navItemFactory.create(Icons.account_circle, "SecondScreen", SecondScreen.routeName),
    ]);
  }
}


class ListTileFactory{
  late BuildContext __context;

  ListTileFactory(BuildContext context){
    __context = context;
  }

  ListTile create(var icon, String title, String routeName){
    return ListTile(
      leading: Icon(icon),
      title: Text(title),
      onTap: (){
        // pop closes the drawer
        Navigator.of(__context).pop();
        //navigate to route
        Navigator.of(__context).pushNamed(routeName);
      },
    );
  }
}


class DrawerTemplate{

  create(List<ListTile> navItems){
    List<Widget> listItems = [];
    // Add Menu header:
    listItems.add(
        const DrawerHeader(
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/banner.png"), fit: BoxFit.cover),
          ), child: Text('Menu',
            style: TextStyle(
                color: Colors.white,
                fontSize: 24
            )
        ),
        )
    );
    // Add costume ListItems:
    listItems.addAll(navItems);
    return Drawer(
      child: ListView(
          padding: EdgeInsets.zero,
          children: listItems
      ),
    );
  }
}