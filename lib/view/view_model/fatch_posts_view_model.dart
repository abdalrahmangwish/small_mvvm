import 'package:courses/model/post_model.dart';
import 'package:courses/repository/posts_repo.dart';
import 'package:courses/view/view_model/view_post_model.dart';

class FatchPostsViewModel{
  String title ="AllPosts";
  PostRepo? postRepo;
  FatchPostsViewModel({ this.postRepo});

  Future <List <PostViewModel>>getdata ()async{
    List<PostModel> list = await postRepo!.getAllPosts();
    return list.map((e) => PostViewModel(postModel: e)).toList();
  }
}