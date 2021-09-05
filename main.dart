import 'package:flutter/material.dart';
import 'package:whatsapp_clone/chat.dart';

void main() => runApp(MaterialApp(
      home: WhatsApp(),
    ));

class WhatsApp extends StatefulWidget {
  const WhatsApp({Key? key}) : super(key: key);

  @override
  _WhatsAppState createState() => _WhatsAppState();
}

class _WhatsAppState extends State<WhatsApp> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: Text("WhatsApp"),
          backgroundColor: Colors.greenAccent[700],
          actions: [
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {},
            ),
            IconButton(onPressed: () {}, icon: Icon(Icons.more_vert)),
          ],
          bottom: TabBar(
            indicatorWeight: 4,
            tabs: [
              Tab(
                icon: Icon(Icons.camera_alt),
              ),
              Tab(
                text: "CHATS",
              ),
              Tab(
                text: "STATUS",
              ),
              Tab(
                text: "CALLS",
              ),
            ],
          ),
          elevation: 20.0,
        ),
        body: Center(
          child: TabBarView(
            children: [
              Center(child: Text("Camera")),
              Center(child: Chat()),
              Center(child: Text("Status Page")),
              Center(child: Text("Calls Page"))
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.message),
          backgroundColor: Colors.greenAccent[700],
        ),
      ),
    );
  }
}
