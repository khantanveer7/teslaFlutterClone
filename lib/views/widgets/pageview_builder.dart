import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tesla/consts/data/model_data.dart';
import 'package:tesla/models/tesla_model.dart';

class PageBuilder extends StatefulWidget {
  const PageBuilder({Key? key}) : super(key: key);

  @override
  _PageBuilderState createState() => _PageBuilderState();
}

class _PageBuilderState extends State<PageBuilder> {
  List<TeslaModel> items = myModel;
  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      scrollDirection: Axis.vertical,
      itemCount: items.length,
      itemBuilder: (context, index) {
        final item = items[index];
        return Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(item.imgPath),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            children: [
              Spacer(),
              Text(item.modelName,
                  style: Theme.of(context).textTheme.headline2!.copyWith(
                        color: Colors.black87,
                        // fontWeight: FontWeight.bold,
                      )),
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: item.modelDes1,
                      style: Theme.of(context).textTheme.subtitle2!.copyWith(
                            color: Colors.black87,
                            // fontWeight: FontWeight.bold,
                          ),
                    ),
                    TextSpan(
                      text: item.modelDes2,
                      style: Theme.of(context).textTheme.subtitle2!.copyWith(
                            color: Colors.black87,
                            decoration: TextDecoration.underline,
                            // fontWeight: FontWeight.bold,
                          ),
                    ),
                  ],
                ),
              ),
              Spacer(flex: 3),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    elevation: 0,
                    // onPrimary: Colors.black87,
                    // primary: Colors.black26,
                    primary: Colors.grey.shade900,
                    minimumSize: Size(300, 36),
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30))),
                onPressed: () {},
                child: Text(
                  item.btn1.toUpperCase(),
                  style: Theme.of(context).textTheme.subtitle1!.copyWith(
                        color: Colors.white,
                      ),
                ),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    elevation: 0,
                    // onPrimary: Colors.black87,
                    primary: Colors.grey.shade500,
                    minimumSize: Size(300, 36),
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30))),
                onPressed: () {},
                child: Text(
                  item.btn2.toUpperCase(),
                  style: Theme.of(context).textTheme.subtitle1!.copyWith(
                        color: Colors.black,
                      ),
                ),
              ),
              item.isFirst == true
                  ? Icon(CupertinoIcons.chevron_compact_down)
                  : Container(),
              Spacer(),
            ],
          ),
        );
      },
    );
  }
}
