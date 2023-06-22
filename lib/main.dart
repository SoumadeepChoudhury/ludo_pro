import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ludo_pro/utils/constants.dart';
import 'package:ludo_pro/utils/pieces.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
  runApp(const MyApp());
}

//https://images.unsplash.com/32/Mc8kW4x9Q3aRR3RkP5Im_IMG_4417.jpg?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8bHVkbyUyMGdhbWUlMjBiYWNrZ3JvdW5kJTIwaW1hZ2V8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=800&q=60
//https://images.unsplash.com/photo-1487088678257-3a541e6e3922?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8bHVkbyUyMGdhbWUlMjBiYWNrZ3JvdW5kJTIwaW1hZ2V8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=800&q=60
//https://images.unsplash.com/photo-1503455637927-730bce8583c0?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8bHVkbyUyMGdhbWUlMjBiYWNrZ3JvdW5kJTIwaW1hZ2V8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=800&q=60
//https://images.unsplash.com/photo-1496715976403-7e36dc43f17b?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OHx8bHVkbyUyMGdhbWUlMjBiYWNrZ3JvdW5kJTIwaW1hZ2V8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=800&q=60

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool buildCalled = false;
  var R1 = Piece();
  var R2 = Piece();
  var R3 = Piece();
  var R4 = Piece();

  var G1 = Piece();
  var G2 = Piece();
  var G3 = Piece();
  var G4 = Piece();

  var B1 = Piece();
  var B2 = Piece();
  var B3 = Piece();
  var B4 = Piece();

  var Y1 = Piece();
  var Y2 = Piece();
  var Y3 = Piece();
  var Y4 = Piece();
  @override
  Widget build(BuildContext context) {
    if (!buildCalled) {
      buildCalled = true;
      deviceWidth = MediaQuery.of(context).size.width;
      deviceHeight = MediaQuery.of(context).size.height;
      unitDivisions = deviceWidth / 15;

      R1.top = deviceWidth / 8.36;
      R1.left = deviceWidth / 7.86;
      R1.initialPoints = {
        "top": deviceWidth / 2.503,
        "left": deviceWidth / 11.228
      };

      R2.top = deviceWidth / 4.415;
      R2.left = deviceWidth / 7.86;
      R2.initialPoints = {
        "top": deviceWidth / 2.503,
        "left": deviceWidth / 11.228
      };

      R3.top = deviceWidth / 8.36;
      R3.left = deviceWidth / 4.13;
      R3.initialPoints = {
        "top": deviceWidth / 2.503,
        "left": deviceWidth / 11.228
      };

      R4.top = deviceWidth / 4.415;
      R4.left = deviceWidth / 4.13;
      R4.initialPoints = {
        "top": deviceWidth / 2.503,
        "left": deviceWidth / 11.228
      };

      G1.top = deviceWidth / 8.36;
      G1.right = deviceWidth / 7.55;
      G1.initialPoints = {
        "top": deviceWidth / 13.1,
        "right": deviceWidth / 2.396
      };

      G2.top = deviceWidth / 8.36;
      G2.right = deviceWidth / 4.0102;
      G2.initialPoints = {
        "top": deviceWidth / 13.1,
        "right": deviceWidth / 2.396
      };

      G3.top = deviceWidth / 4.367;
      G3.right = deviceWidth / 4.0102;
      G3.initialPoints = {
        "top": deviceWidth / 13.1,
        "right": deviceWidth / 2.396
      };

      G4.top = deviceWidth / 4.367;
      G4.right = deviceWidth / 7.55;
      G4.initialPoints = {
        "top": deviceWidth / 13.1,
        "right": deviceWidth / 2.396
      };

      B1.bottom = deviceWidth / 4.367;
      B1.left = deviceWidth / 7.86;
      B1.initialPoints = {
        "bottom": deviceWidth / 12.281,
        "left": deviceWidth / 2.440
      };

      B2.bottom = deviceWidth / 7.86;
      B2.left = deviceWidth / 7.86;
      B2.initialPoints = {
        "bottom": deviceWidth / 12.281,
        "left": deviceWidth / 2.440
      };

      B3.bottom = deviceWidth / 7.86;
      B3.left = deviceWidth / 4.136;
      B3.initialPoints = {
        "bottom": deviceWidth / 12.281,
        "left": deviceWidth / 2.440
      };

      B4.bottom = deviceWidth / 4.367;
      B4.left = deviceWidth / 4.136;
      B4.initialPoints = {
        "bottom": deviceWidth / 12.281,
        "left": deviceWidth / 2.440
      };

      Y1.bottom = deviceWidth / 4.367;
      Y1.right = deviceWidth / 7.56;
      Y1.initialPoints = {
        "bottom": deviceWidth / 2.487,
        "right": deviceWidth / 10.916
      };

      Y2.bottom = deviceWidth / 7.86;
      Y2.right = deviceWidth / 7.56;
      Y2.initialPoints = {
        "bottom": deviceWidth / 2.487,
        "right": deviceWidth / 10.916
      };

      Y3.bottom = deviceWidth / 7.86;
      Y3.right = deviceWidth / 4.051;
      Y3.initialPoints = {
        "bottom": deviceWidth / 2.487,
        "right": deviceWidth / 10.916
      };

      Y4.bottom = deviceWidth / 4.367;
      Y4.right = deviceWidth / 4.051;
      Y4.initialPoints = {
        "bottom": deviceWidth / 2.487,
        "right": deviceWidth / 10.916
      };
    }
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Material(
            child: SafeArea(
                child: Scaffold(
                    body: DecoratedBox(
          decoration: const BoxDecoration(
              image: DecorationImage(
            image: NetworkImage(
                "https://images.unsplash.com/photo-1496715976403-7e36dc43f17b?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OHx8bHVkbyUyMGdhbWUlMjBiYWNrZ3JvdW5kJTIwaW1hZ2V8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=800&q=60"),
            fit: BoxFit.cover,
          )),
          child: Center(
            child: SizedBox(
              height: deviceWidth,
              width: deviceWidth,
              // color: Colors.red,
              child: DecoratedBox(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                        "https://as1.ftcdn.net/v2/jpg/04/94/28/22/1000_F_494282200_DngT80nT35oiwmk4Amt8Fn60Tsf1i5N3.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Stack(children: [
                  Positioned(
                      top: R1.top,
                      left: R1.left,
                      child:
                          InkWell(onTap: () => changePos(R1), child: redPiece)),
                  Positioned(
                      top: R2.top,
                      left: R2.left,
                      child:
                          InkWell(onTap: () => changePos(R2), child: redPiece)),
                  Positioned(
                      top: R3.top,
                      left: R3.left,
                      child:
                          InkWell(onTap: () => changePos(R3), child: redPiece)),
                  Positioned(
                      top: R4.top,
                      left: R4.left,
                      child:
                          InkWell(onTap: () => changePos(R4), child: redPiece)),
                  Positioned(
                      top: G1.top,
                      right: G1.right,
                      child: InkWell(
                          onTap: () => changePos(G1), child: greenPiece)),
                  Positioned(
                      top: G2.top,
                      right: G2.right,
                      child: InkWell(
                          onTap: () => changePos(G2), child: greenPiece)),
                  Positioned(
                      top: G3.top,
                      right: G3.right,
                      child: InkWell(
                          onTap: () => changePos(G3), child: greenPiece)),
                  Positioned(
                      top: G4.top,
                      right: G4.right,
                      child: InkWell(
                          onTap: () => changePos(G4), child: greenPiece)),
                  Positioned(
                      bottom: B1.bottom,
                      left: B1.left,
                      child: InkWell(
                          onTap: () => changePos(B1), child: bluePiece)),
                  Positioned(
                      bottom: B2.bottom,
                      left: B2.left,
                      child: InkWell(
                          onTap: () => changePos(B2), child: bluePiece)),
                  Positioned(
                      bottom: B3.bottom,
                      left: B3.left,
                      child: InkWell(
                          onTap: () => changePos(B3), child: bluePiece)),
                  Positioned(
                      bottom: B4.bottom,
                      left: B4.left,
                      child: InkWell(
                          onTap: () => changePos(B4), child: bluePiece)),
                  Positioned(
                      bottom: Y1.bottom,
                      right: Y1.right,
                      child: InkWell(
                          onTap: () => changePos(Y1), child: yellowPiece)),
                  Positioned(
                      bottom: Y2.bottom,
                      right: Y2.right,
                      child: InkWell(
                          onTap: () => changePos(Y2), child: yellowPiece)),
                  Positioned(
                      bottom: Y3.bottom,
                      right: Y3.right,
                      child: InkWell(
                          onTap: () => changePos(Y3), child: yellowPiece)),
                  Positioned(
                      bottom: Y4.bottom,
                      right: Y4.right,
                      child: InkWell(
                          onTap: () => changePos(Y4), child: yellowPiece)),
                ]),
              ),
            ),
          ),
        )))));
  }

  changePos(Piece r) {
    setState(() {
      r.top = r.initialPoints["top"] ?? 0;
      r.left = r.initialPoints["left"] ?? 0;
      r.right = r.initialPoints["right"] ?? 0;
      r.bottom = r.initialPoints["bottom"] ?? 0;
    });
  }
}
