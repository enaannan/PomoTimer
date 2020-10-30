import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'Screens/OnBoardingPage.dart';

void main() {
  LicenseRegistry.addLicense(() async* {
    final license = await rootBundle.loadString('google_fonts/OFL.txt');
    yield LicenseEntryWithLineBreaks(['google_fonts'], license);
  });
  runApp(PomoTimerApp());
}

class PomoTimerApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle.dark.copyWith(statusBarColor: Colors.transparent));
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "PomoTimer",
      home: OnBoardingPage(),
    );
  }
}

// class OnBoardingPage extends StatefulWidget {
//   @override
//   _OnBoardingPageState createState() => _OnBoardingPageState();
// }

// class _OnBoardingPageState extends State<OnBoardingPage> {
//   final introKey = GlobalKey<IntroductionScreenState>();

//   void _onIntroEnd(context) {
//     Navigator.of(context).push(
//       MaterialPageRoute(
//         builder: (_) => HomePage(),
//       ),
//     );
//   }

//   Widget _buildImage(String assetName) {
//     return Align(
//         child: Image.asset(
//           'assets/',
//           width: 350.0,
//         ),
//         alignment: Alignment.bottomCenter);
//   }

//   @override
//   Widget build(BuildContext context) {
//     const bodyStyle = TextStyle(fontSize: 19.0);
//     const pageDecoration = const PageDecoration(
//       titleTextStyle: TextStyle(fontSize: 28.0, fontWeight: FontWeight.w700),
//       bodyTextStyle: bodyStyle,
//       descriptionPadding: EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 16.0),
//       pageColor: Colors.white,
//       imagePadding: EdgeInsets.zero,
//     );

//     return IntroductionScreen(
//       key: introKey,
//       pages: [
//         PageViewModel(
//           decoration: pageDecoration,
//           title: "Title of first page",
//           bodyWidget: Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: const [
//               Text("Click on "),
//               Icon(Icons.edit),
//               Text(" to edit a post"),
//             ],
//           ),
//           image: const Center(child: Icon(Icons.android)),
//         ),
//         PageViewModel(
//           decoration: pageDecoration,
//           title: "Title of second page",
//           bodyWidget: Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: const [
//               Text("Click on "),
//               Icon(Icons.edit),
//               Text(" to edit a post"),
//             ],
//           ),
//           image: const Center(child: Icon(Icons.android)),
//         ),
//         PageViewModel(
//           title: "Another title page",
//           body: "Another beautiful body text for this example onboarding",
//           footer: RaisedButton(
//             onPressed: () {
//               introKey.currentState?.animateScroll(0);
//             },
//             child: const Text(
//               'FooButton',
//               style: TextStyle(color: Colors.white),
//             ),
//             color: Colors.lightBlue,
//             shape: RoundedRectangleBorder(
//               borderRadius: BorderRadius.circular(8.0),
//             ),
//           ),
//           decoration: pageDecoration,
//         ),
//       ],
//       onDone: () => _onIntroEnd(context),
//       showNextButton: true,
//       showSkipButton: true,
//       skipFlex: 0,
//       nextFlex: 0,
//       skip: const Text(
//         "Skip",
//         style: TextStyle(fontWeight: FontWeight.w600),
//       ),
//       next: const Icon(Icons.arrow_forward),
//       done: const Text(
//         "Done",
//         style: TextStyle(fontWeight: FontWeight.w600),
//       ),
//       dotsDecorator: const DotsDecorator(
//           size: Size(10.0, 10.0),
//           color: Colors.red,
//           activeSize: Size(22.0, 10.0),
//           activeShape: RoundedRectangleBorder(
//             borderRadius: BorderRadius.all(Radius.circular(25.0)),
//           )),
//     );
//   }
// }

// class CreateAccount extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Material(
//           child: Scaffold(
//         appBar: AppBar(title: Title(color: Colors.red, child:Text("tittttt")),),
//         body: Container(color: Colors.amber),

//       ),
//     );
//   }
// }
