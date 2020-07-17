import 'package:flutter/material.dart';
import 'package:jiitms/source_codes/appbar/appbar_color.dart';
import 'package:jiitms/source_codes/appbar/appbar_dark.dart';
import 'package:jiitms/source_codes/appbar/appbar_elevation.dart';
import 'package:jiitms/source_codes/appbar/appbar_icon.dart';
import 'package:jiitms/source_codes/appbar/appbar_searchicon.dart';
import 'package:jiitms/source_codes/appbar/appbar_title.dart';
import 'package:jiitms/source_codes/bottombar/bottombar_color.dart';
import 'package:jiitms/source_codes/column/column_aligncenter.dart';
import 'package:jiitms/source_codes/column/column_crossaligncenter.dart';
import 'package:jiitms/source_codes/column/column_mainalignend.dart';
import 'package:jiitms/source_codes/dialog/dialog_backgroundcolor.dart';
import 'package:jiitms/source_codes/dialog/dialog_dialogalert.dart';
import 'package:jiitms/source_codes/divider/divider_color.dart';
import 'package:jiitms/source_codes/divider/divider_indent.dart';
import 'package:jiitms/source_codes/divider/divider_thikness.dart';
import 'package:jiitms/source_codes/image/image_Illustration.dart';
import 'package:jiitms/source_codes/image/image_url.dart';
import 'package:jiitms/source_codes/listview/listview_colorlist.dart';
import 'package:jiitms/source_codes/listview/listview_listtile.dart';
import 'package:jiitms/source_codes/loader/loader_loading.dart';
import 'package:jiitms/source_codes/navigatior/navigator_call.dart';
import 'package:jiitms/source_codes/navigatior/navigator_email.dart';
import 'package:jiitms/source_codes/navigatior/navigator_sms.dart';
import 'package:jiitms/source_codes/navigatior/navigator_tolink.dart';
import 'package:jiitms/source_codes/navigatior/navigator_topageandback.dart';
import 'package:jiitms/source_codes/raisedbutton/raisedbutton_highlightcolor.dart';
import 'package:jiitms/source_codes/raisedbutton/raisedbutton_iconbutton.dart';
import 'package:jiitms/source_codes/raisedbutton/raisedbutton_rounded.dart';
import 'package:jiitms/source_codes/raisedbutton/raisedbutton_simple.dart';
import 'package:jiitms/source_codes/row/row_crossaligncenter.dart';
import 'package:jiitms/source_codes/row/row_mainaligncenter.dart';
import 'package:jiitms/source_codes/row/row_mainalignend.dart';
import 'package:jiitms/source_codes/snackbar/snackbar_color.dart';
import 'package:jiitms/source_codes/snackbar/snackbar_duration.dart';
import 'package:jiitms/source_codes/snackbar/snackbar_elevation.dart';
import 'package:jiitms/source_codes/snackbar/snackbar_shape.dart';
import 'package:jiitms/source_codes/snackbar/snackbar_showsnakbar.dart';
import 'package:jiitms/source_codes/tabbar/tabar_text.dart';
import 'package:jiitms/source_codes/tabbar/tabbar_interative.dart';
import 'package:jiitms/source_codes/text/text_aligncenter.dart';
import 'package:jiitms/source_codes/text/text_alignleft.dart';
import 'package:jiitms/source_codes/text/text_alignright.dart';
import 'package:jiitms/source_codes/text/text_backgroundcolor.dart';
import 'package:jiitms/source_codes/text/text_bold.dart';
import 'package:jiitms/source_codes/text/text_color.dart';
import 'package:jiitms/source_codes/text/text_fontsize.dart';
import 'package:jiitms/source_codes/text/text_italic.dart';
import 'package:jiitms/source_codes/text/text_linrthrough.dart';
import 'package:jiitms/source_codes/text/text_ltr.dart';
import 'package:jiitms/source_codes/text/text_overline.dart';
import 'package:jiitms/source_codes/text/text_rtl.dart';
import 'package:jiitms/source_codes/text/text_underline.dart';
import 'package:jiitms/source_codes/textfield/textfield_color.dart';
import 'package:jiitms/source_codes/textfield/textfield_icon.dart';
import 'package:jiitms/source_codes/textfield/textfield_obsecure.dart';
import 'package:jiitms/source_codes/textfield/textfield_simpl.dart';
import 'package:jiitms/source_codes/toast/toast_backgroundcolor.dart';
import 'package:jiitms/source_codes/toast/toast_top.dart';
import 'package:jiitms/source_codes/webview/webview_facebook.dart';
import 'package:jiitms/source_codes/webview/webview_google.dart';

class Content{
  static List<Content> getTitle()=>[
    //1
    Content(
      //Home Page Icon
        Icons.text_fields,
        //Home Page Menu Title
        "Text",
        //Home subtitle
        "Scaffold(body:Text())",
        //depend
        "",
        //early page redirected title
        ["Left To Right",
          "Right to Left",
          "Font Size",
          "Color",
          "Bold",
          "Italic",
          "Underline",
          "Line Through",
          "Over Line",
          "Background Color",
          "Align Center",
          "Align Left",
          "Align Right",
        ],
        //early page redirected subtitle
        ["textDirection:TextDirection.ltr",
          "textDirection:TextDirection.rtl",
          "style: TextStyle(fontSize: 30)",
          "style: TextStyle(color: Colors.red)",
          "style: TextStyle(fontWeight: FontWeight.bold)",
          "style: TextStyle(fontStyle: FontStyle.italic),",
          "style: TextStyle(decoration: TextDecoration.underline)",
          "style: TextStyle(decoration: TextDecoration.lineThrough)",
          "style: TextStyle(decoration: TextDecoration.overline)",
          "style: TextStyle(backgroundColor: Colors.lightBlue)",
          "textAlign: TextAlign.center",
          "textAlign: TextAlign.left",
          "textAlign: TextAlign.right"
        ],
        //pdf path
        [
          "assets/text/text_1.pdf",
          "assets/text/text_2.pdf",
          "assets/text/text_3.pdf",
          "assets/text/text_4.pdf",
          "assets/text/text_5.pdf",
          "assets/text/text_6.pdf",
          "assets/text/text_7.pdf",
          "assets/text/text_8.pdf",
          "assets/text/text_9.pdf",
          "assets/text/text_10.pdf",
          "assets/text/text_11.pdf",
          "assets/text/text_12.pdf",
          "assets/text/text_13.pdf"
        ],
        //libCodePath
        [
          "lib/source_codes/text/text_ltr.dart",
          "lib/source_codes/text/text_rtl.dart",
          "lib/source_codes/text/text_fontsize.dart",
          "lib/source_codes/text/text_color.dart",
          "lib/source_codes/text/text_bold.dart",
          "lib/source_codes/text/text_italic.dart",
          "lib/source_codes/text/text_underline.dart",
          "lib/source_codes/text/text_linrthrough.dart",
          "lib/source_codes/text/text_overline.dart",
          "lib/source_codes/text/text_backgroundcolor.dart",
          "lib/source_codes/text/text_aligncenter.dart",
          "lib/source_codes/text/text_alignleft.dart",
          "lib/source_codes/text/text_alignright.dart",
        ],
        //codeActualClass
        [
          TextLeftToRight(),
          TextRightToLeft(),
          TextFontSize(),
          TextColor(),
          TextBold(),
          TextItalic(),
          TextUnderline(),
          TextLineThrough(),
          TextOverLine(),
          TextBackgroundColor(),
          TextAlignCenter(),
          TextAlignLeft(),
          TextAlignRight(),
        ],

        //Details
        [
          "https://api.flutter.dev/flutter/widgets/Text/textDirection.html",//1
          "https://api.flutter.dev/flutter/widgets/Text/textDirection.html",//2
          "https://api.flutter.dev/flutter/painting/TextStyle/fontSize.html", //3
          "https://api.flutter.dev/flutter/painting/TextStyle/color.html", //4
          "https://api.flutter.dev/flutter/painting/TextStyle/fontWeight.html",//5
          "https://api.flutter.dev/flutter/painting/TextStyle/fontStyle.html",//6
          "https://api.flutter.dev/flutter/painting/TextStyle/decoration.html",//7
          "https://api.flutter.dev/flutter/painting/TextStyle/decoration.html",//8
          "https://api.flutter.dev/flutter/painting/TextStyle/decoration.html",//9
          "https://api.flutter.dev/flutter/painting/TextStyle/backgroundColor.html",//10
          "https://api.flutter.dev/flutter/dart-ui/TextAlign-class.html",//11
          "https://api.flutter.dev/flutter/dart-ui/TextAlign-class.html",//12
          "https://api.flutter.dev/flutter/dart-ui/TextAlign-class.html",//13
        ]
    ),
    //2
   Content(
        //Home Page Icon
        Icons.dns,
        //Home Page Menu Title
        "App Bar",
        //Home subtitle
       "Scaffold(appBar: AppBar())",
       //depend
       "",
        //early page redirected title
        ["Title",
          "Dark AppBar",
          "Icon",
          "Search Icon Button",
          "Background Color ",
          "Elevation ",
        ],
     //early page redirected title
      ["title: Text()",
        "theme: ThemeData.dark()",
        "leading: Icon(Icons.home)",
        "IconButton(icon:Icon(Icons.search),onPressed: (){})",
        "backgroundColor:Colors.red",
        "elevation: 30",
      ],
       //pdf path
       [
         "assets/appbar/abbbar-1.pdf",
         "assets/appbar/abbbar-2.pdf",
         "assets/appbar/abbbar-3.pdf",
         "assets/appbar/abbbar-4.pdf",
         "assets/appbar/abbbar-5.pdf",
         "assets/appbar/abbbar-6.pdf",
       ],
     //libCodePath
     [
       "lib/source_codes/appbar/appbar_title.dart",
       "lib/source_codes/appbar/appbar_dark.dart",
       "lib/source_codes/appbar/appbar_icon.dart",
       "lib/source_codes/appbar/appbar_searchicon.dart",
       "lib/source_codes/appbar/appbar_color.dart",
       "lib/source_codes/appbar/appbar_elevation.dart",
     ],
       //codeActualClass
       [
         AppBarTitle(),
         AppBarDark(),
         AppBarIcon(),
         AppBarSearchIconButton(),
         AppBarBackgroundColor(),
         AppBarElevation(),

       ],
       //Details
       ["https://api.flutter.dev/flutter/material/AppBar/title.html",
         "https://api.flutter.dev/flutter/material/ThemeData/ThemeData.dark.html",
         "https://api.flutter.dev/flutter/material/AppBar/leading.html",
         "https://api.flutter.dev/flutter/material/AppBar/actions.html",
         "https://api.flutter.dev/flutter/material/AppBar/backgroundColor.html",
         "https://api.flutter.dev/flutter/material/AppBar/elevation.html",
       ]
    ),
    //3
    Content(
      //Home Page Icon
        Icons.dashboard,
        //Home Page Menu Title
        "Raised Button",
        //Home subtitle
        "Scaffold(child:RaisedButton())",
        //depend
        "",
        //early page redirected subtitle
        ["Simple Button",
          "Highlight Color",
          "Round Border",
          "Round Icon Button",


        ],
      //early page redirected Subtitle
      ["RaisedButton(child: Text(),onPressed:(){})",
        "highlightColor: Colors.red",
        "shape: RoundedRectangleBorder()",
            "IconButton(icon:,onPressed:(){})",

        ],
        //pdf path
        [
          "assets/raisedbutton/raisedbutton-1.pdf",
          "assets/raisedbutton/raisedbutton-2.pdf",
          "assets/raisedbutton/raisedbutton-3.pdf",
          "assets/raisedbutton/raisedbutton-4.pdf",
        ],
        //libCodePath
        ["lib/source_codes/raisedbutton/raisedbutton_simple.dart",
          "lib/source_codes/raisedbutton/raisedbutton_highlightcolor.dart",
          "lib/source_codes/raisedbutton/raisedbutton_rounded.dart",
          "lib/source_codes/raisedbutton/raisedbutton_iconbutton.dart",

        ],
      //codeActualClass
      [
        RaisedButtonSimple(),
        RaisedButtonHighlightColor(),
        RaisedButtonRounded(),
        RaisedButtonIconButton(),

      ],
        //Details
        ["https://api.flutter.dev/flutter/material/RaisedButton-class.html",
          "https://api.flutter.dev/flutter/material/RaisedButton/highlightColor.html",
          "https://api.flutter.dev/flutter/material/RaisedButton/shape.html",
          "https://api.flutter.dev/flutter/material/IconButton-class.html#material.IconButton.2"
        ]

    ),
    //4
    Content(
      //Home Page Icon
        Icons.wb_iridescent,
        //Home Page Menu Title
        "Toast",
        //Home subtitle
        "Toast.show()",
        //depend
        "toast: ^0.1.5",
        //early page redirected title
        ["Top",
          "Background Color",
        ],
        //early page redirected title
        ["gravity: Toast.TOP",
          "backgroundColor: Colors.pink,",
        ],
        //pdf path
        [
          "assets/toast/toast-1.pdf",
          "assets/toast/toast-2.pdf",
        ],
        //libCodePath
        [
          "lib/source_codes/toast/toast_top.dart",
          "lib/source_codes/toast/toast_backgroundcolor.dart",

        ],
        //codeActualClass
        [
          ToastTop(),
          ToastBackgroundColor(),


        ],
        //Details
        ["https://pub.dev/packages/toast",
          "https://pub.dev/packages/toast"
        ]
    ),
    //5
    Content(
      //Home Page Icon
        Icons.view_column,
        //Home Page Menu Title
        "Layout: Column",
        //Home subtitle
        "Scaffold(body:Column())",
        //depend
        "",
        //early page redirected title
        ["Main Axis Align Center",
          "Cross Axis Align Center",
          "Main Axis Align End"
        ],
        //early page redirected subtitle
        ["mainAxisAlignment: MainAxisAlignment.center",
          "crossAxisAlignment: CrossAxisAlignment.center",
          "mainAxisAlignment: MainAxisAlignment.end"

        ],
        //pdf path
        [
          "assets/column/column-1.pdf",
          "assets/column/column-2.pdf",
          "assets/column/column-3.pdf",

        ],
        //libCodePath
        [
          "lib/source_codes/column/column_aligncenter.dart",
          "lib/source_codes/column/column_crossaligncenter.dart",
          "lib/source_codes/column/column_mainalignend.dart"

        ],
        //codeActualClass
        [
          ColumnAlignCenter(),
          ColumnCrossAlignCenter(),
          ColumnMainAlignEnd(),
        ],
        //Details
        ["https://api.flutter.dev/flutter/widgets/Column/mainAxisAlignment.html",
          "https://api.flutter.dev/flutter/widgets/Column/crossAxisAlignment.html",
          "https://api.flutter.dev/flutter/widgets/Column-class.html",
        ]
    ),
    //6
    Content(
      //Home Page Icon
        Icons.keyboard_arrow_down,
        //Home Page Menu Title
        "Layout: Row",
        //Home subtitle
        "Scaffold(body:Row())",
        //depend
        "",
        //early page redirected title
        ["Main Axis Align Center",
          "Cross Axis Align Center",
          "Main Axis Align End",
        ],
        //early page redirected subtitle
        ["mainAxisAlignment: MainAxisAlignment.center",
          "crossAxisAlignment: CrossAxisAlignment.center",
          "mainAxisAlignment: MainAxisAlignment.end",
        ],
        //pdf path
        [
          "assets/row/row-1.pdf",
          "assets/row/row-2.pdf",
          "assets/row/row-3.pdf",
        ],
        //libCodePath
        [
          "lib/source_codes/row/row_mainaligncenter.dart",
          "lib/source_codes/row/row_crossaligncenter.dart",
          "lib/source_codes/row/row_mainalignend.dart"
        ],
        //codeActualClass
        [
          RowAlignCenter(),
          RowCrossAlignCenter(),
          RowMainAlignEnd(),


        ],
        //Details
        ["https://api.flutter.dev/flutter/widgets/Row/mainAxisAlignment.html",
          "https://api.flutter.dev/flutter/widgets/Row/crossAxisAlignment.html",
          "https://api.flutter.dev/flutter/widgets/Row-class.html",
        ]
    ),
    //7
    Content(
      //Home Page Icon
        Icons.sms,
        //Home Page Menu Title
        "Dialog",
        //Home subtitle
        "AlertDialog dialog=AlertDialog()",
        //depend
        "",
        //early page redirected title
        ["Dialog Alert",
          "Background Color",
        ],
        //early page redirected subtitle
        ["AlertDialog(content: Text(""),);showDialog(context:,child:);",
          "backgroundColor: Colors.pink,",
        ],
        //pdf path
        [
          "assets/dialog/dialog-1.pdf",
          "assets/dialog/dialog-1.pdf",

        ],
        //libCodePath
        [
          "lib/source_codes/dialog/dialog_backgroundcolor.dart",
          "lib/source_codes/toast/toast_backgroundcolor.dart",
        ],
        //codeActualClass
        [
          DialogDialogAlert(),
          DialogBackgroundColor(),
        ],
        //Details
        ["https://api.flutter.dev/flutter/material/AlertDialog/AlertDialog.html",
          "https://api.flutter.dev/flutter/material/AlertDialog/backgroundColor.html",
        ]
    ),
    //8
    Content(
      //Home Page Icon
        Icons.remove,
        //Home Page Menu Title
        "Divider",
        //Home subtitle
        "Scaffold(body:Divider())",
        //depend
        "",
        //early page redirected title
        ["Color",
          "Thickness",
          "Indent"

        ],
        //early page redirected title
        ["Divider(color: Colors.pink)",
          "Divider(thickness: 20)",
          "Divider(indent:40)"

        ],
        //pdf path
        [
          "assets/divider/divider-1.pdf",
          "assets/divider/divider-2.pdf",
          "assets/divider/divider-3.pdf",

        ],
        //libCodePath
        [
          "lib/source_codes/divider/divider_color.dart",
          "lib/source_codes/divider/divider_thikness.dart",
          "lib/source_codes/divider/divider_indent.dart"

        ],
        //codeActualClass
        [
          DividerColor(),
          DividerThickness(),
          DividerIndent(),


        ],
        //Details
        ["https://api.flutter.dev/flutter/material/Divider/color.html",
          "https://api.flutter.dev/flutter/material/Divider/thickness.html",
          "https://api.flutter.dev/flutter/material/Divider/indent.html",
        ]
    ),
    //9
    Content(
      //Home Page Icon
        Icons.navigation,
        //Home Page Menu Title
        "Navigator",
        //Home subtitle
        "Through pages/links",
        //depend
        "url_launcher: ^5.4.2",
        //early page redirected title
        ["To Page and back",
          "Link",
          "Call",
          "SMS",
          "Email"
        ],
        //early page redirected title
        ["Navigator.push(context,MaterialPageRoute());",
          "launch(url)",
          "launch(Tel)",
          "launch(SMS)",
          "launch(Email)",

        ],
        //pdf path
        [ "assets/navigator/navigator-1.pdf",
          "assets/navigator/navigator-2.pdf",
          "assets/navigator/navigator-3.pdf",
          "assets/navigator/navigator-4.pdf",
          "assets/navigator/navigator-5.pdf",
        ],
        //libCodePath
        [
          "lib/source_codes/navigatior/navigator_topageandback.dart",
          "lib/source_codes/navigatior/navigator_tolink.dart",
          "lib/source_codes/navigatior/navigator_call.dart",
          "lib/source_codes/navigatior/navigator_sms.dart",
          "lib/source_codes/navigatior/navigator_email.dart"
        ],
        //codeActualClass
        [
          FirstRoute(),
          NavigatorUrlLaunch(),
          NavigatorCall(),
          NavigatorSMS(),
          NavigatorEmail(),

        ],
        //Details
        [

          "https://flutter.dev/docs/cookbook/navigation/navigation-basics",
          "https://pub.dev/packages/url_launcher",
          "https://pub.dev/packages/url_launcher",
          "https://pub.dev/packages/url_launcher",
          "https://pub.dev/packages/url_launcher",
        ]
    ),
    //10
    Content(
      //Home Page Icon
        Icons.web,
        //Home Page Menu Title
        "Snack Bar",
        //Home subtitle
        "SnackBar()",
        //depend
        "",
        //early page redirected title
        ["Show SnackBar",
          "Background Color",
          "Duration",
          "Elevation",
          "Shape"
        ],
        //early page redirected subtitle
        ["SnackBar(content:,action:)",
          "backgroundColor: Colors.pink,",
          "duration:Duration(seconds:5)",
          "SnackBar(elevation: 30)",
          "shape: RoundedRectangleBorder(borderRadius:)"
        ],
        //pdf path
        [
          "assets/snackbar/snackbar-1.pdf",
          "assets/snackbar/snackbar-2.pdf",
          "assets/snackbar/snackbar-3.pdf",
          "assets/snackbar/snackbar-4.pdf",
          "assets/snackbar/snackbar-5.pdf",

        ],
        //libCodePath
        [
          "lib/source_codes/snackbar/snackbar_showsnakbar.dart",
          "lib/source_codes/snackbar/snackbar_color.dart",
          "lib/source_codes/snackbar/snackbar_duration.dart",
          "lib/source_codes/snackbar/snackbar_elevation.dart",
          "lib/source_codes/snackbar/snackbar_shape.dart"

        ],
        //codeActualClass
        [
          SnackBarShow(),
          SnackBarColor(),
          SnackBarDuration(),
          SnackBarElevation(),
          SnackBarShape(),


        ],
        //Details
        ["https://flutter.dev/docs/cookbook/design/snackbars#2-display-a-snackbar",
          "https://api.flutter.dev/flutter/material/SnackBar/backgroundColor.html",
          "https://api.flutter.dev/flutter/material/SnackBar/duration.html",
          "https://api.flutter.dev/flutter/material/SnackBar/elevation.html",
          "https://api.flutter.dev/flutter/material/SnackBar/shape.html",
        ]
    ),
    //11
    Content(
      //Home Page Icon
        Icons.rv_hookup,
        //Home Page Menu Title
        "Bottom Nav Bar",
        //Home subtitle
        "bottomNavigationBaar:BottomAppBar()",
        //depend
        "",
        //early page redirected title
        ["Three tabs",
        ],
        //early page redirected title
        ["BottomNavigationItemBarItem()",

        ],
        //pdf path
        [
          "assets/bottomnavbar/bottomnavbar.pdf",
        ],
        //libCodePath
        [
          "lib/source_codes/bottombar/bottombar_color.dart",

        ],
        //codeActualClass
        [
          MyStatefulWidget(),

        ],
        //Details
        [
          "https://api.flutter.dev/flutter/material/BottomNavigationBar-class.html"
        ]
    ),
    //12
    Content(
      //Home Page Icon
        Icons.format_color_text,
        //Home Page Menu Title
        "Textfield",
        //Home subtitle
        "Scaffold(body:TextField())",
        //depend
        "",
        //early page redirected title
        ["Hint",
          "Icon",
          "Color",
          "Password"
        ],
        //early page redirected title
        ["TextField(controller:)",
          "InputDecoration(icon:Icon(Icons.radio))",
          " style: TextStyle(color: Colors.red)",
          " TextField(obscureText: true"],
        //pdf path
        [
          "assets/textfield/textfield-1.pdf",
          "assets/textfield/textfield-2.pdf",
          "assets/textfield/textfield-3.pdf",
          "assets/textfield/textfield-4.pdf",
        ],
        //libCodePath
        [
          "lib/source_codes/textfield/textfield_simpl.dart",
          "lib/source_codes/textfield/textfield_icon.dart",
          "lib/source_codes/textfield/textfield_color.dart",
          "lib/source_codes/textfield/textfield_obsecure.dart"
        ],
        //codeActualClass
        [
          TextFieldSimple(),
          TextFieldIcon(),
          TextFieldColor(),
          TextFieldObscure(),
        ],
        //Details
        [
          "https://api.flutter.dev/flutter/material/InputDecoration/hintText.html",
          "https://api.flutter.dev/flutter/material/InputDecoration/icon.html",
          "https://api.flutter.dev/flutter/material/TextField-class.html",
          "https://api.flutter.dev/flutter/material/TextField/obscureText.html",

        ]
    ),
    //13
    Content(
      //Home Page Icon
        Icons.image,
        //Home Page Menu Title
        "Image",
        //Home subtitle
        "Toast.show()",
        //depend
        "",
        //early page redirected title
        ["Assets",
          "URL",
        ],
        //early page redirected title
        ["Container(child: Image.asset())",
          " Image.network()",

        ],
        //pdf path
        [
          "assets/image/image-1.pdf",
          "assets/image/image-2.pdf",

        ],
        //libCodePath
        [
          "lib/source_codes/image/image_Illustration.dart",
          "lib/source_codes/image/image_url.dart",

        ],
        //codeActualClass
        [
          ImageIllustration(),
          ImageUrl(),


        ],
        //Details
        ["https://flutter.dev/docs/development/ui/assets-and-images#loading-flutter-assets-in-android",
          "https://flutter.dev/docs/cookbook/images/network-image",
        ]
    ),
    //14
    Content(
      //Home Page Icon
        Icons.check_circle_outline,
        //Home Page Menu Title
        "Loader",
        //Home subtitle
        "Scaffold(child:Loading())",
        //depend
        "loading: ^1.0.2",
        //early page redirected title
        ["Ball Pulse Indiactor",

        ],
        //early page redirected title
        [" Loading(indicator: BallPulseIndicator,,size:,color:)",
        ],
        //pdf path
        [
          "assets/loader/loader-1.pdf",
        ],
        //libCodePath
        [
          "lib/source_codes/loader/loader_loading.dart",
        ],
        //codeActualClass
        [
          LoadingSimple(),

        ],
        //Details
        [
          "https://pub.dev/packages/loading#loading",
        ]
    ),
    //15
    Content(
      //Home Page Icon
        Icons.table_chart,
        //Home Page Menu Title
        "Tab Bar",
        //Home subtitle
        " appBar: AppBar(bottom: TabBar())",
        //depend
        "",
        //early page redirected title
        ["Interactive Example",
          "Text Heading",
        ],
        //early page redirected title
        ["TabBarView(children:[]",
          " tabs: [Text()]",
        ],
        //pdf path
        [
          "assets/tabbar/tabbar-1.pdf",
          "assets/tabbar/tabbar-2.pdf",

        ],
        //libCodePath
        [
          "lib/source_codes/tabbar/tabbar_interative.dart",
          "lib/source_codes/tabbar/tabar_text.dart",

        ],
        //codeActualClass
        [
          TabBarDemo(),
          TabBarText(),


        ],
        //Details
        [
          "https://flutter.dev/docs/cookbook/design/tabs#1-create-a-tabcontroller",
          "https://flutter.dev/docs/cookbook/design/tabs#1-create-a-tabcontroller",

        ]
    ),
    //16
    Content(
      //Home Page Icon
        Icons.list,
        //Home Page Menu Title
        "List View",
        //Home subtitle
        "Scaffold(body:ListView())",
        //depend
        "",
        //early page redirected title
        ["List Tile",
          "Color List",
        ],
        //early page redirected subtitle
        ["ListView(children: <Widget>[ListTile()]",
          "ListView(children: <Widget>[ListTile()]",

        ],
        //pdf path
        [
          "assets/listview/listview-1.pdf",
          "assets/listview/listview-1.pdf",
        ],
        //libCodePath
        [
          "lib/source_codes/listview/listview_colorlist.dart",
          "lib/source_codes/toast/toast_backgroundcolor.dart",
        ],
        //codeActualClass
        [
          ListViewListTile(),
          ListViewColorList(),
        ],
        //Details
        [
          "https://api.flutter.dev/flutter/material/ListTile/ListTile.html",
          "https://api.flutter.dev/flutter/material/ListTile-class.html#instance-properties"

        ]
    ),
    //17
    Content(
      //Home Page Icon
        Icons.web,
        //Home Page Menu Title
        "Web View",
        //Home subtitle
        "Scaffold(body: WebView())",
        //depend
        "webview_flutter: ^0.3.19+9",
        //early page redirected title
        ["Google",
          "FaceBook",
        ],
        //early page redirected title
        ["initialUrl:'htpps//:google.com'",
          "initialUrl:'htpps//:google.com'",

        ],
        //pdf path
        [
          "assets/webview/webview-1.pdf",
          "assets/webview/webview-1.pdf",

        ],
        //libCodePath
        [
          "lib/source_codes/webview/webview_google.dart",
          "lib/source_codes/webview/webview_facebook.dart",

        ],
        //codeActualClass
        [
          WebViewGoogle(),
          WebViewFaceBook(),
        ],
        //Details
        [
          "https://pub.dev/packages/webview_flutter",
          "https://pub.dev/packages/webview_flutter"
        ]
    ),
  ];

  IconData iconHome;
  String title;
  String homeSubTitle;
  String depend;
  List subtitleYes;
  List earlyPageSubtitle;
  List pdfPath;
  List libCodePath;
  List codeActualClass;
  List details;

  Content(this.iconHome,
      this.title,
      this.homeSubTitle ,
      this.depend,
      this.subtitleYes,
      this.earlyPageSubtitle,
      this.pdfPath,
      this.libCodePath,
      this.codeActualClass,
      this.details);
}
