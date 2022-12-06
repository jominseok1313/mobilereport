import 'package:flutter/material.dart';
import 'package:mobilecomputing_report/ScanScreen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: '모바일컴퓨팅 화면설계',
      initialRoute: '/',
      routes: {
        '/': (context) => MainScreen(),
        '/scanscreen': (context) => scna_Screen()
      },
    );
  }
}

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('모바일 컴퓨팅 화면설계'),
          centerTitle: true,
          backgroundColor: Color(0xff2c003a),
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              UserAccountsDrawerHeader(
                currentAccountPicture: const CircleAvatar(
                  backgroundImage: AssetImage('rain.jpg'),
                  backgroundColor: Colors.white,
                ),
                otherAccountsPictures: const <Widget>[
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    backgroundImage: AssetImage('cat.jpg'),
                  )
                ],
                accountName: Text('ENDDK'),
                accountEmail: Text('whalstjr1313@naver.com'),
                onDetailsPressed: () {
                  print('더 보기');
                },
                decoration: const BoxDecoration(
                    color: Color(0xff2c003a),
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(40.0),
                        bottomRight: Radius.circular(40.0))),
              ),
              ListTile(
                leading: Icon(
                  Icons.home,
                  color: Colors.grey[850],
                ),
                title: Text('홈'),
                onTap: () {
                  print('홈 클릭');
                },
                trailing: Icon(Icons.add),
              ),
              ListTile(
                leading: Icon(
                  Icons.settings,
                  color: Colors.grey[850],
                ),
                title: Text('설정'),
                onTap: () {
                  print('설정 클릭');
                },
                trailing: Icon(Icons.add),
              ),
              ListTile(
                leading: Icon(
                  Icons.question_answer,
                  color: Colors.grey[850],
                ),
                title: Text('질문'),
                onTap: () {
                  print('질문 클릭');
                },
                trailing: Icon(Icons.add),
              ),
            ],
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            //crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("모바일 컴퓨팅 화면설계",
                style: TextStyle(
                fontSize: 22,
                  color: Colors.purple
              ),),
              SizedBox(height: 30,),
              Text("20181018조민석",style: TextStyle(
                  fontSize: 22,
                  color: Colors.purple
              ),),],
          ),
        ),
      floatingActionButton:
      FloatingActionButton.extended(
          onPressed : ()
          {
            Navigator.pushNamed(context, '/scanscreen');
          },
          label: Text(""),
      icon: Icon(Icons.camera),),
        );
  }
}
