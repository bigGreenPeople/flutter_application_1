import 'package:flutter_application_1/model/home_model.dart';
import 'config.dart';
import 'http_request.dart';

class HomeRequest {
  static Future<List<MovieItem>> requestMovieList(int start) async {
    // 1.构建URL
    // final movieURL = "/movie/top250?start=$start&count=${HomeConfig.movieCount}";

    // 2.发送网络请求获取结果
    // final result = await HttpRequest.request(movieURL);
    // final subjects = result["subjects"];

    // 3.将Map转成Model
    // List<MovieItem> movies = [];
    // for (var sub in subjects) {
    //   movies.add(MovieItem.fromMap(sub));
    // }

    return movies;
  }

  static List<MovieItem> movies = [
    MovieItem(
      0,
      "https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2868098898.jpg",
      "套装",
      "2022-01-01",
      9.2,
      "2022 / 美国 / 剧情 犯罪 惊悚 / 格拉汉姆·摩尔 / 马克·里朗斯 佐伊·达奇...",
      "英国裁缝伦纳德曾在世界闻名的伦敦萨维尔街做西服，但在经历了一场个人悲剧后，他来到了芝加哥，在镇上一个简陋的地方经营着一家小裁缝店，为周围唯一能负担得起的人制作漂",
    ),
     MovieItem(
      0,
      "https://pics0.baidu.com/feed/b17eca8065380cd7af950c5af983953e5b8281cb.jpeg?token=2ef224ccc4042911e324b76e1628040c",
      "回到天空",
      "2022-01-01",
      9.2,
      "2022 / 美国 / 剧情 犯罪 惊悚 / 格拉汉姆·摩尔 / 马克·里朗斯 佐伊·达奇...",
      "英国裁缝伦纳德曾在世界闻名的伦敦萨维尔街做西服，但在经历了一场个人悲剧后，他来到了芝加哥，在镇上一个简陋的地方经营着一家小裁缝店，为周围唯一能负担得起的人制作漂",
    ),
     MovieItem(
      0,
      "https://alifei05.cfp.cn/creative/vcg/veer/1600water/veer-167645584.jpg",
      "套装3",
      "2022-01-01",
      9.2,
      "2022 / 美国 / 剧情 犯罪 惊悚 / 格拉汉姆·摩尔 / 马克·里朗斯 佐伊·达奇...",
      "英国裁缝伦纳德曾在世界闻名的伦敦萨维尔街做西服，但在经历了一场个人悲剧后，他来到了芝加哥，在镇上一个简陋的地方经营着一家小裁缝店，为周围唯一能负担得起的人制作漂",
    ),
  ];
}
