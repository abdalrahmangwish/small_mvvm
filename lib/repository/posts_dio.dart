import 'dart:js_interop';

import 'package:courses/model/post_model.dart';
import 'package:courses/repository/posts_repo.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

class PostsApi implements PostRepo{
  @override
  Future<List<PostModel>> getAllPosts()async {
     List<PostModel> result =[];
    try{
      Dio dio = Dio();
      var response =await dio.get("https://jsonplaceholder.typicode.com/posts");
      var list  = response.data as List;
       result = list.map((e) => PostModel.fromJson(e)).toList();
    }
        catch(e){
      if (kDebugMode) {
        print(e);
      }
        }
        return result;

  }

}