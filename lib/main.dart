import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: Colors.green,
        automaticallyImplyLeading: false,
        title: const Text('Page Title'),
        actions: const [],
        centerTitle: false,
        elevation: 2,
      ),
      backgroundColor: Colors.blue,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: DefaultTabController(
                  length: 4,
                  initialIndex: 0,
                  child: Column(
                    children: const [
                      TabBar(
                        labelColor: Colors.yellow,
                        indicatorColor: Colors.transparent,
                        tabs: [
                          Tab(
                            text: '홈',
                          ),
                          Tab(
                            text: '책 목록',
                          ),
                          Tab(
                            text: '책 등록',
                          ),
                          Tab(
                            text: '마이페이지',
                          ),
                        ],
                      ),
                      Expanded(
                        child: TabBarView(
                          children: [
                            Text(
                              'Tab View 1',
                              // style: FlutterFlowTheme.of(context)
                              //     .bodyText1
                              //     .override(
                              //       fontFamily: 'Poppins',
                              //       fontSize: 32,
                              //     ),
                            ),
                            Text(
                              'Tab View 2',
                              // style: FlutterFlowTheme.of(context)
                              //     .bodyText1
                              //     .override(
                              //       fontFamily: 'Poppins',
                              //       fontSize: 32,
                              //     ),
                            ),
                            Text(
                              'Tab View 3',
                              // style: FlutterFlowTheme.of(context)
                              //     .bodyText1
                              //     .override(
                              //       fontFamily: 'Poppins',
                              //       fontSize: 32,
                              //     ),
                            ),
                            Text(
                              'Tab View 4',
                              // style: FlutterFlowTheme.of(context)
                              //     .bodyText1
                              //     .override(
                              //       fontFamily: 'Poppins',
                              //       fontSize: 32,
                              //     ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
