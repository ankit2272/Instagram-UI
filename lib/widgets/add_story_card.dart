import 'package:flutter/material.dart';
import 'package:instagram_ui/_mock_data/mock.dart';

class AddStoryCard extends StatelessWidget {
  const AddStoryCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            CircleAvatar(
              backgroundColor: Colors.pink,
              radius: 32,
              backgroundImage: NetworkImage(currentuser.profileImageUrl),
            ),
            Positioned(
              top: 42,
              left: 42,
              child: Container(
                height: 25,
                width: 25,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white, width: 3),
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.blue,
                ),
                child: IconButton(
                  onPressed: () => {},
                  padding: EdgeInsets.zero,
                  iconSize: 20,
                  color: Colors.white,
                  icon: Icon(Icons.add),
                ),
              ),
            )
          ],
        ),
        Spacer(),
        Text(
          "Your Story",
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.w400),
        ),
      ],
    );
  }
}
