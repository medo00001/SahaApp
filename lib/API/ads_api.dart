import 'dart:convert';

import 'package:saha/API/api_util.dart';
import 'package:saha/Ads/all_ads.dart';
import 'package:http/http.dart' as http;

class Ads_Api {
  Future<Ads> getAds() async {
    String url = ApiUtil.main_page_url;
    http.Response response = await http.get(url);
    var data = jsonDecode(response.body);
    return Ads.fromjson(data);
  }
}
