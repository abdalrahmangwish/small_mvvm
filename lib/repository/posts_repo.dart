import 'package:courses/model/post_model.dart';

abstract class PostRepo{
  Future<List <PostModel>>getAllPosts();
}