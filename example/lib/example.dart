import 'package:flutter/material.dart';
import 'package:scale_manager/scale_manager.dart';

void main() {
  runApp(MyApp());
}

const Size kMockupSize = Size(411, 731);

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return OrientationBuilder(
        builder: (context, orientation) {
          ScaleManager().init(
            constraints,
            orientation,
            kMockupSize,
          );
          return MaterialApp(
            title: 'Scale Manager Demo',
            theme: ThemeData(
              primarySwatch: Colors.blue,
            ),
            home: MyHomePage(),
            debugShowCheckedModeBanner: false,
          );
        },
      );
    });
  }
}

const String testImagUrl =
    'https://images.pexels.com/photos/733745/pexels-photo-733745.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              /// Use spaceScale() at places like margin padding or when giving
              /// const sizes
              height: 300.ims,
              width: 300.ims,

              /// Example place of imageFactor
              child: Image.network(testImagUrl, fit: BoxFit.contain),
            ),
            SizedBox(height: 10.h),

            /// Example place of textFactor
            /// Note that textScale will only work if you have given it some size in [TextStyle]
            /// The textSize which you will pass in [TextStyle] can be obtained from your Figma design file
            Text(
              "Text Scale in action",
              style: TextStyle(fontSize: 22.ts),
            ),
            SizedBox(height: 10.h),
          ],
        ),
      ),
    );
  }
}
