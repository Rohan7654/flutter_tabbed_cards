import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(home: new MyApp()));
}

class MyApp extends StatefulWidget {
  @override
  MyAppState createState() => new MyAppState();
}

class MyAppState extends State<MyApp> with SingleTickerProviderStateMixin {
  TabController controller;

  @override
  void initState() {
    super.initState();
    controller = new TabController(vsync: this, length: 3);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        body: Center(
      child: tabbedCards(controller),
    ));
  }
}

Widget tabbedCards(TabController controller) {
  return Container(
    width: 350,
    height: 200.0,
    decoration: BoxDecoration(
        border: Border.all(color: Colors.black),
        borderRadius: BorderRadius.circular(10.0)),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
                margin:
                    const EdgeInsets.only(top: 15.0, left: 20.0, right: 20.0),
                child: Text("Card Title")),
            Expanded(
              flex: 3,
              child: TabBar(
                // indicator: BoxDecoration(
                //     shape: BoxShape.rectangle, color: Colors.blue),
                isScrollable: true,
                unselectedLabelColor: Colors.grey,
                labelColor: Colors.black,
                indicatorColor: Colors.transparent,
                controller: controller,
                tabs: <Tab>[
                  Tab(text: "Work"),
                  Tab(
                    text: "Month",
                  ),
                  Tab(
                    child: Row(
                      children: <Widget>[
                        Text(
                          "Year",
                        ),
                        SizedBox(
                          width: 5.0,
                        ),
                        InkWell(
                            onTap: () => {},
                            child: Icon(
                              Icons.arrow_drop_down,
                            ))
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
        SizedBox(
          width: 50.0,
        ),
        Container(
          margin: const EdgeInsets.only(top: 5.0),
          width: 500.0,
          height: 1,
          color: Colors.black,
        ),
        Expanded(
            child: TabBarView(
                controller: controller,
                children: <Widget>[new First(), new Second(), new Third()])),
      ],
    ),
  );
}

class First extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
        width: 500,
        height: 100.0,
        child: Center(
            child: Text(
                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. Lorem Ipsum is simply dummy text of the printing and typesetting industry. with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.")));
  }
}

class Second extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
        width: 500,
        height: 50.0,
        child: new Center(
            child: SingleChildScrollView(
                child: Text(
                    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. Lorem Ipsum is simply dummy text of the printing and typesetting industry. with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."))));
  }
}

class Third extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
        width: 500,
        height: 100.0,
        child: new Center(
            child: Text(
                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. Lorem Ipsum is simply dummy text of the printing and typesetting industry. with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.")));
  }
}
