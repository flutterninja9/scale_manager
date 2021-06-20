import 'package:flutter/material.dart';
import 'package:scale_manager/scale_manager.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Scale Manager Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

const String testImagUrl =
    'https://images.pexels.com/photos/733745/pexels-photo-733745.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final scaleManager = ScaleManager(kMockupWidth: 411, context: context);
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              /// Use spaceScale() at places like margin padding or when giving
              /// const sizes
              height: scaleManager.spaceScale(space: 300),
              width: scaleManager.spaceScale(space: 300),

              /// Example place of imageFactor
              child: Image.network(
                testImagUrl,
                scale: scaleManager.imageFactor,
              ),
            ),
            SizedBox(
              height: scaleManager.spaceScale(space: 30),
            ),

            /// Example place of textFactor
            /// Note that textScale will only work if you have given it some size in [TextStyle]
            /// The textSize which you will pass in [TextStyle] can be obtained from your Figma design file
            Text(
              "Text Scale in action",
              style: const TextStyle(fontSize: 22),
              textScaleFactor: scaleManager.textScaleFactor,
            ),
          ],
        ),
      ),
    );
  }
}
