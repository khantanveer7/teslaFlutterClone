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
          child: ListView(
            children: [
              Align(
                alignment: Alignment.topRight,
                child: Container(
                  height: 100,
                  child: IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(Icons.close),
                  ),
                ),
              ),
              ListTile(
                leading: Icon(Icons.account_circle),
                title: Text('Option 1'),
                onTap: () {
                  // This line code will close drawer programatically....
                  // Navigator.pop(context);
                },
              ),
              Divider(
                height: 2.0,
              ),
              ListTile(
                leading: Icon(Icons.accessibility),
                title: Text('Option 2'),
                onTap: () {
                  // Navigator.pop(context);
                },
              ),
              Divider(
                height: 2.0,
              ),
              ListTile(
                leading: Icon(Icons.account_box),
                title: Text('Option 3'),
                onTap: () {
                  // Navigator.pop(context);
                },
              )
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
