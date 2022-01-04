import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  static const String id = "home_page";

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final isLandscape =
        MediaQuery.of(context).orientation == Orientation.landscape;
    final isPortrait =
        MediaQuery.of(context).orientation == Orientation.portrait;
    var shortestSide = MediaQuery.of(context).size.shortestSide;
    if (isLandscape && shortestSide < 600) {
      return _landscape();
    } else if (isPortrait && shortestSide < 600) {
      return _portrait();
    }
    return _tablet();
  }

  Widget _portrait() {
    return Scaffold(
      body: SafeArea(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              flex: 1,
              child: Container(
                alignment: Alignment.center,
                child: MaterialButton(
                  child: const Text("Portrait page"),
                  onPressed: () {},
                  color: Colors.blue,
                  shape: const StadiumBorder(),
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Container(
                      alignment: Alignment.center,
                      child: Image.asset(
                        "assets/images/image.jpg",
                        fit: BoxFit.cover,
                        height: 390,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      alignment: Alignment.center,
                      child: Image.asset(
                        "assets/images/side_table.jpg",
                        fit: BoxFit.cover,
                        height: 390,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _landscape() {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              flex: 1,
              child: Container(
                alignment: Alignment.center,
                child: MaterialButton(
                  child: const Text("Portrait page"),
                  onPressed: () {},
                  color: Colors.blue,
                  shape: const StadiumBorder(),
                ),
              ),
            ),
            Expanded(
              flex: 3,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Container(
                      alignment: Alignment.center,
                      child: Image.asset(
                        "assets/images/image.jpg",
                        fit: BoxFit.fill,
                        height: double.infinity,
                        width: double.infinity,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      alignment: Alignment.center,
                      child: Image.asset(
                        "assets/images/side_table.jpg",
                        fit: BoxFit.fill,
                        height: double.infinity,
                        width: double.infinity,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _tablet() {
    return Scaffold(
      body: SafeArea(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: SizedBox(
                height: 50,
                child: RaisedButton(
                  color: Colors.red,
                  child: const Text(
                    "Portrait page",
                    style: TextStyle(fontSize: 24, color: Colors.yellow),
                  ),
                  onPressed: () {},
                ),
              ),
            ),
            Expanded(
              child: Container(
                alignment: Alignment.center,
                child: Image.asset(
                  "assets/images/image.jpg",
                  fit: BoxFit.fill,
                  height: double.infinity,
                ),
              ),
            ),
            Expanded(
              child: Container(
                alignment: Alignment.center,
                child: Image.asset(
                  "assets/images/side_table.jpg",
                  fit: BoxFit.fill,
                  height: double.infinity,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
