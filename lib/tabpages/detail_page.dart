import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jiitms/database/listofcontent.dart';
import 'package:jiitms/pages/earlyredirected_page.dart';
import 'package:jiitms/pages/home_page.dart';
import 'package:webview_flutter/webview_flutter.dart';
final webViewKey = GlobalKey<WebViewContainerState>();
class MyWebView extends StatefulWidget {

  //invoking all the list for its attributes
  @override
  _MyWebViewState createState() => _MyWebViewState();
}

class _MyWebViewState extends State<MyWebView> {

  final List<Content> contentList=Content.getTitle();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton:FloatingActionButton(
        backgroundColor: Colors.pinkAccent,
        elevation: 30,
        mini: true,
        onPressed: (){
          webViewKey.currentState?.reloadWebView();
        },
        child: Icon(Icons.refresh),
      ),
      body: WebViewContainer(key: webViewKey),
    );
  }
}

class WebViewContainer extends StatefulWidget {
  WebViewContainer({Key key}) : super(key: key);

  @override
  WebViewContainerState createState() => WebViewContainerState();
}

class WebViewContainerState extends State<WebViewContainer> {
  num position = 1 ;
  WebViewController _webViewController;
  doneLoading(String A) {
    setState(() {
      position = 0;
    });
  }

  startLoading(String A){
    setState(() {
      position = 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return IndexedStack(
      index: position,
      children: <Widget>[
        WebView(
          onWebViewCreated: (controller) {
            _webViewController = controller;
          },
          onPageFinished: doneLoading,
          onPageStarted: startLoading,
          javascriptMode: JavascriptMode.unrestricted,
          initialUrl: "${contentList[selectedTitle].details[selectedSubTitle]}",
        ),
        Container(
          color: Colors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("Getting Ready For you..!",style: TextStyle(fontSize: 22,fontWeight: FontWeight.w300),),
              Center(
                heightFactor: 2,
                  child:CircularProgressIndicator(strokeWidth: 2,)),
            ],
          ),
        ),
      ],
    );
  }

  void reloadWebView() {
    _webViewController?.reload();
  }
}

