import 'package:courses/model/post_model.dart';

class PostViewModel{
   // This class provide all data to view
  PostModel ? postModel;
  PostViewModel ({this.postModel});
  get id => postModel?.id;
  get userId=> postModel?.userId;
  get title => postModel?.title;
  get body =>postModel?.body;
}