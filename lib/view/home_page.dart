import 'package:courses/repository/posts_dio.dart';
import 'package:courses/view/view_model/fatch_posts_view_model.dart';
import 'package:courses/view/view_model/view_post_model.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
   HomePage({Key? key}) : super(key: key);
  FatchPostsViewModel fatchPostsViewModel = FatchPostsViewModel(postRepo: PostsApi());
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
title: Text(fatchPostsViewModel.title),     ),
      body:Container(
        child: FutureBuilder<List<PostViewModel>>(
          future: fatchPostsViewModel.getdata(),
          builder:(context, snapshot) {
            if(snapshot.connectionState==ConnectionState.waiting){
              return CircularProgressIndicator();
            }else {
              var post  = snapshot.data;
              return ListView.builder(itemBuilder:(context ,index){
                return Text(post[index].title);
              } , itemCount: post!.length,);
            }

            },
        ) ,
      ),
    );
  }
}
