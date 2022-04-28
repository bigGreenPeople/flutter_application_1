import 'package:flutter/material.dart';
import 'package:flutter_application_1/model/home_model.dart';
import 'package:flutter_application_1/widgets/dashed_line.dart';
import 'package:flutter_application_1/widgets/star_rating.dart';

class HomeMovieItem extends StatelessWidget {
  final MovieItem movie;

  HomeMovieItem(this.movie);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: const BoxDecoration(
          border:
              Border(bottom: BorderSide(width: 8, color: Color(0xffcccccc)))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          buildHeader(),
          const SizedBox(
            height: 8,
          ),
          buildContent(),
          const SizedBox(
            height: 8,
          ),
          buildFooter(),
        ],
      ),
    );
  }

  // 1.头部的布局
  Widget buildHeader() {
    return Container(
      padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
      decoration: BoxDecoration(
          color: const Color.fromARGB(255, 238, 205, 144),
          borderRadius: BorderRadius.circular(3)),
      child: Text(
        "No.${movie.rank}",
        style: const TextStyle(
            fontSize: 18, color: Color.fromARGB(255, 131, 95, 36)),
      ),
    );
  }

  // 2.内容的布局
  Widget buildContent() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        buildContentImage(),
        const SizedBox(
          width: 8,
        ),
        Expanded(
          child: IntrinsicHeight(
            child: Row(
              children: <Widget>[
                buildContentInfo(),
                const SizedBox(
                  width: 8,
                ),
                buildContentLine(),
                const SizedBox(
                  width: 8,
                ),
                buildContentWish()
              ],
            ),
          ),
        )
      ],
    );
  }

  // 2.1.内容的图片
  Widget buildContentImage() {
    return ClipRRect(
        borderRadius: BorderRadius.circular(8),
        child: Image.network(
          movie.imageURL!,
          height: 150,
        ));
  }

  // 2.2.内容的信息
  Widget buildContentInfo() {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          buildContentInfoTitle(),
          const SizedBox(
            height: 8,
          ),
          buildContentInfoRate(),
          const SizedBox(
            height: 8,
          ),
          buildContentInfoDesc()
        ],
      ),
    );
  }

  Widget buildContentInfoTitle() {
    print("object");

    List<InlineSpan> spans = [];

    return Text.rich(TextSpan(children: [
      const WidgetSpan(
          child: Icon(
            Icons.play_circle_outline,
            color: Colors.pink,
            size: 40,
          ),
          baseline: TextBaseline.ideographic,
          alignment: PlaceholderAlignment.middle),
      ...movie.title!.runes.map((rune) {
        return WidgetSpan(
            child: Text(
              new String.fromCharCode(rune),
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            alignment: PlaceholderAlignment.middle);
      }).toList(),
      WidgetSpan(
          child: Text("(${movie.playDate})"),
          style: const TextStyle(fontSize: 18, color: Colors.grey),
          alignment: PlaceholderAlignment.bottom)
    ]));
  }

  Widget buildContentInfoRate() {
    return Row(
      children: <Widget>[
        HYStarRating(
          rating: movie.rating,
          size: 20,
        ),
        const SizedBox(
          width: 6,
        ),
        Text(
          "${movie.rating}",
          style: const TextStyle(fontSize: 16),
        )
      ],
    );
  }

  Widget buildContentInfoDesc() {
    // 1.字符串拼接
    // final genresString = movie.genres?.join(" ");
    // final directorString = movie.director?.name;
    // List<Actor> casts = movie.casts!;
    // final actorString = movie.casts?.map((item) => item.name).join(" ");

    return Text(
      movie.describe!,
      maxLines: 2,
      overflow: TextOverflow.ellipsis,
      style: const TextStyle(fontSize: 16),
    );
  }

  // 2.3.内容的虚线
  Widget buildContentLine() {
    return Container(
//      height: 100,
      child: HYDashedLine(
        axis: Axis.vertical,
        dashedWidth: .4,
        dashedHeight: 6,
        count: 10,
        color: Colors.pink,
      ),
    );
  }

  // 2.4.内容的想看
  Widget buildContentWish() {
    return Container(
//      height: 100,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image.asset(
            "assets/images/home/wish.png",
            width: 40,
          ),
          const Text(
            "想看",
            style: TextStyle(
                fontSize: 12, color: Color.fromARGB(255, 235, 170, 60)),
          )
        ],
      ),
    );
  }

  // 3.尾部的布局
  Widget buildFooter() {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: const Color(0xfff2f2f2),
        borderRadius: BorderRadius.circular(6),
      ),
      child: Text(
        movie.originalTitle!,
        style: const TextStyle(fontSize: 20, color: Color(0xff666666)),
      ),
    );
  }
}
