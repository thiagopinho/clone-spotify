import 'dart:io';

import 'package:cloneofspotify/pages/home/home.dart';
import 'package:cloneofspotify/pages/library/library.dart';
import 'package:cloneofspotify/pages/search/search.dart';
import 'package:cloneofspotify/player_navigator.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  final List<Widget> screens = [
    const HomePage(),
    const SearchPage(),
    const YourLibrary(),
  ];

  int tabNumber = 0;

  _tapped(int index) {
    setState(() {
      tabNumber = index;
    });
  }

  final String clientId = "";
  final String CLIENT_SECRET = "";

  final String _url = "https://accounts.spotify.com/api/token";
  final String _auth = 'https://accounts.spotify.com/authorize';
  final String _redirectUri = '';
  String token = "";

  String scope = 'user-read-playback-state user-read-playback-position';
  void launchURLAuth() async {
    final url = Uri.parse(
        'https://accounts.spotify.com/authorize?client_id=$clientId&response_type=code&scope=$scope&redirect_uri=$_redirectUri');

    if (await canLaunchUrl(url)) {
      await launchUrl(url, mode: LaunchMode.externalNonBrowserApplication);
    }
  }

  Future getHttp() async {
    try {
      var response = await Dio().get(_auth,
          queryParameters: {
            "client_id": clientId,
            "response_type": "code",
            "redirect_uri": _redirectUri,
            "scope": scope
          },
          options: Options(
            responseType: ResponseType.json,
            headers: {
              HttpHeaders.contentTypeHeader: Headers.jsonContentType,
            },
          ));
      print(response);
    } catch (e) {
      print(e);
    }
  }

  @override
  void initState() {
    getHttp();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          screens[tabNumber],
          const Spacer(),
          const PlayerNavigator(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.grey,
          backgroundColor: Colors.black,
          selectedFontSize: 12,
          unselectedFontSize: 12,
          onTap: _tapped,
          currentIndex: tabNumber,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: "Search",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: "Your Library",
            ),
          ]),
    );
  }
}
