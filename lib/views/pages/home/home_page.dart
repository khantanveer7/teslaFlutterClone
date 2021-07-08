import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tesla/views/widgets/pageview_builder.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // final _scaffoldKey = GlobalKey<ScaffoldState>();
  final GlobalKey<ScaffoldState> _key = GlobalKey(); // Create a key

  @override
  Widget build(BuildContext context) {
    // bool isFirst = true;
    return SafeArea(
      child: Scaffold(
        endDrawer: Drawer(
          child: Column(
            children: [
              Align(
                alignment: Alignment.topRight,
                child: DrawerHeader(
                  child: IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(Icons.close),
                  ),
                ),
              ),
              Expanded(
                  child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: ListView(
                  children: [
                    Card(
                      child: ListTile(
                          onTap: () => Navigator.pop(context),
                          title: Text("Model S")),
                    ),
                    Card(
                      child: ListTile(
                          onTap: () => Navigator.pop(context),
                          title: Text("Model 3")),
                    ),
                    Card(
                      child: ListTile(
                          onTap: () => Navigator.pop(context),
                          title: Text("Model X")),
                    ),
                    Card(
                      child: ListTile(
                          onTap: () => Navigator.pop(context),
                          title: Text("Model Y")),
                    ),
                    Card(
                      child: ListTile(
                          onTap: () => Navigator.pop(context),
                          title: Text("Solar Roof")),
                    ),
                    Card(
                      child: ListTile(
                          onTap: () => Navigator.pop(context),
                          title: Text("Solar Panel")),
                    ),
                    Card(
                      child: ListTile(
                          onTap: () => Navigator.pop(context),
                          title: Text("Existing Inventory")),
                    ),
                    Card(
                      child: ListTile(
                          onTap: () => Navigator.pop(context),
                          title: Text("Used Inventory")),
                    ),
                    Card(
                      child: ListTile(
                          onTap: () => Navigator.pop(context),
                          title: Text("Tade-In")),
                    ),
                    Card(
                      child: ListTile(
                          onTap: () => Navigator.pop(context),
                          title: Text("Test Drive")),
                    ),
                    Card(
                      child: ListTile(
                          onTap: () => Navigator.pop(context),
                          title: Text("Powerwall")),
                    ),
                    Card(
                      child: ListTile(
                          onTap: () => Navigator.pop(context),
                          title: Text("Commercial Energy")),
                    ),
                    Card(
                      child: ListTile(
                          onTap: () => Navigator.pop(context),
                          title: Text("Existing Inventory")),
                    ),
                    Card(
                      child: ListTile(
                          onTap: () => Navigator.pop(context),
                          title: Text("Utilities")),
                    ),
                    Card(
                      child: ListTile(
                          onTap: () => Navigator.pop(context),
                          title: Text("Chargin")),
                    ),
                    Card(
                      child: ListTile(
                          onTap: () => Navigator.pop(context),
                          title: Text("Find Us")),
                    ),
                    Card(
                      child: ListTile(
                          onTap: () => Navigator.pop(context),
                          title: Text("Support")),
                    ),
                    Card(
                      child: ListTile(
                          onTap: () => Navigator.pop(context),
                          title: Text("Shop")),
                    ),
                    Card(
                      child: ListTile(
                          onTap: () => Navigator.pop(context),
                          title: Text("Account")),
                    ),
                    Card(
                      child: ListTile(
                        onTap: () => Navigator.pop(context),
                        title: Text("More"),
                        trailing: Icon(Icons.chevron_right),
                      ),
                    ),
                    Card(
                      child: ListTile(
                        onTap: () => Navigator.pop(context),
                        leading: Icon(Icons.language),
                        title: Text("India"),
                        subtitle: Text("English"),
                      ),
                    ),
                  ],
                ),
              ))
            ],
          ),
        ),
        key: _key,
        body: Stack(
          children: [
            PageView(
              scrollDirection: Axis.vertical,
              children: [
                PageBuilder(),
              ],
            ),
            Row(
              children: [
                SizedBox(width: 10),
                SvgPicture.asset(
                  'assets/image/tesla.svg',
                  width: 150,
                  color: Colors.black,
                ),
                Spacer(),
                TextButton(
                  style: TextButton.styleFrom(
                      // textStyle: TextStyle(color: Colors.black),
                      backgroundColor: Colors.white24,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      )),
                  onPressed: () => _key.currentState!.openEndDrawer(),
                  child: Text(
                    "Menu",
                    style: Theme.of(context).textTheme.button!.copyWith(
                          color: Colors.black,
                        ),
                  ),
                ),
                SizedBox(width: 10),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
