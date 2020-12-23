// import 'package:firebase_admob/firebase_admob.dart';
import 'package:flutter/material.dart';
// import 'package:flutter_native_admob/flutter_native_admob.dart';
// import 'package:flutter_native_admob/native_admob_controller.dart';
// import 'package:flutter_native_admob/native_admob_options.dart';
class ShortNotes extends StatefulWidget {
  @override
  _ShortNotesState createState() => _ShortNotesState();
}

class _ShortNotesState extends State<ShortNotes> {
  //native ad
  // final _nativeAdController = NativeAdmobController();
  //native ad
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      home:Scaffold(
        body: ListView(
          children: <Widget>[
            Container(
              color: Colors.black,
              margin: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.01),
              child: Text(
                "Widget"
                    "\nProperties",
                style: (TextStyle(
                  fontSize:MediaQuery.of(context).size.height*0.1,
                  fontWeight: FontWeight.w300,
                  color: Colors.red,
                  letterSpacing:-5,
                )),
                overflow: TextOverflow.fade,
                maxLines: 2,
              ),
            ),

            Container(
              margin: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.01),
              child: Text(
                " 1.Text"
                    "\n\na. Text Align -left,right,center align"
                    "\nb. Text Direction -Directs from left or right"
                    "\nc. SoftWrap -Wraps text"
                    "\nd. Max Lines -Lines to be shown if text Overflowed"
                    "\ne. Overflow -What to do if text overflows"
                    "\nf. Style -size,color,font"
                    "\ng. Text Span -every word line can have different color"

                    "\n\n 2.App Bar"
                    "\n\na. Actions -To display after the title widget"
                    "\nb. BackgrounfColor -Chnage color of app bar"
                    "\nc. Bottom - i.e. bottom of an app bar"
                    "\nd. Elevation- lifts up the app bar"
                    "\ne. Title -Titile of an app bar"

                    "\n\n3.Container"
                    "\n\na. Child- Widget to be added"
                    "\nb. Decoration -paints behind the child"
                    "\nc. Margin -Empty space to surround the child"
                    "\nd. Padding - place a child inside padding"
                    "\ne. Alignment - align your container"

                    "\n\n4.Row"
                    "\n\na. Children -List of widgets"
                    "\nb. Main axis alignment -i.e. horizontal axix"
                    "\nc. Cross axis alignment -i.e vertical axis"

                    "\n\n5.Column"
                    "\n\na. Children -List of widgets"
                    "\nb. Main axis alignment -i.e. vertical axix"
                    "\nc. Cross axis alignment -i.e horizontal axis",



                style: (TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w300,
                    color: Colors.white
                )),
                overflow: TextOverflow.ellipsis,
                maxLines: 50,
              ),
            ),
            Container(//ad
              height: 200,
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.only(bottom: 20.0),
              // child: NativeAdmob(
              //   // Your ad unit id
              //   adUnitID:"ca-app-pub-3681380281121300/7198096184",
              //   //adUnitID:NativeAd.testAdUnitId,
              //   controller: _nativeAdController,
              //   type: NativeAdmobType.full,
              //   options: NativeAdmobOptions(
              //     showMediaContent: true,
              //     headlineTextStyle: NativeTextStyle(color: Colors.white),
              //   ),
              // ),
            )
          ],
        ),
      ),
    );
  }
}