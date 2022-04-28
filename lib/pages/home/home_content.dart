import 'package:flutter/material.dart';
import 'package:flutter_application_1/model/home_model.dart';
import 'package:flutter_application_1/service/home_request.dart';

import 'home_movie_item.dart';

class HomeContent extends StatefulWidget {
  const HomeContent({Key? key}) : super(key: key);

  @override
  _HomeContentState createState() => _HomeContentState();
}

class _HomeContentState extends State<HomeContent> {
  final List<MovieItem> movies = [];

  @override
  void initState() {
    super.initState();
    HomeRequest.requestMovieList(0).then((res) {
      setState(() {
        movies.addAll(res);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: movies.length,
        itemBuilder: (context, index) {
          return HomeMovieItem(movies[index]);
        });
  }
}
