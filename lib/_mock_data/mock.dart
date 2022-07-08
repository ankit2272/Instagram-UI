import 'package:flutter/cupertino.dart';
import 'package:instagram_ui/models/story.dart';
import 'package:instagram_ui/models/user.dart';

import '../models/post.dart';

User currentuser = User('id', 'Ankit', 'https://picsum.photos/id/1062/400/400');

final List<Story> stories = [
  Story('id', currentuser),
  Story('id', currentuser),
  Story('id', currentuser),
  Story('id', currentuser),
  Story('id', currentuser),
  Story('id', currentuser),
];

final List<Post> posts = [
  Post('id', currentuser, 'https://picsum.photos/id/1062/400/400', 'title',
      'Delhi', 'Caption', 'a few second Ago', '121', '32', true, true),
  Post('id1', currentuser, 'https://picsum.photos/id/1063/400/400', 'title1',
      'uttar Pradesh', 'Caption', 'a few second Ago', '121', '32', true, true),
  Post('id2', currentuser, 'https://picsum.photos/id/1064/400/400', 'title2',
      'Mumbai', 'Caption', 'a few second Ago', '121', '32', true, true),
  Post('id3', currentuser, 'https://picsum.photos/id/1065/400/400', 'title3',
      'Utra khand', 'Caption', 'a few second Ago', '121', '32', true, true),
  Post('id4', currentuser, 'https://picsum.photos/id/1066/400/400', 'title4',
      'Jammu', 'Caption', 'a few second Ago', '121', '32', true, true),
  Post('id5', currentuser, 'https://picsum.photos/id/1062/400/400', 'title5',
      'Punjab', 'Caption', 'a few second Ago', '121', '32', true, true),
];
