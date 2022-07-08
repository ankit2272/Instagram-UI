import 'package:flutter/material.dart';
import 'package:instagram_ui/_mock_data/mock.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  const CustomBottomNavigationBar(
      {Key? key, required this.selectedPageIndex, required this.onIconTape})
      : super(key: key);
  final Function onIconTape;
  final int selectedPageIndex;
  final double _iconSize = 30;
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              onPressed: () => {onIconTape(0)},
              iconSize: _iconSize,
              icon: Icon(
                  selectedPageIndex == 0 ? Icons.home : Icons.home_outlined),
            ),
            IconButton(
              onPressed: () => {onIconTape(1)},
              iconSize: _iconSize,
              icon: Icon(selectedPageIndex == 1
                  ? Icons.search
                  : Icons.search_outlined),
            ),
            IconButton(
              onPressed: () => {onIconTape(2)},
              iconSize: _iconSize,
              icon: Icon(selectedPageIndex == 2
                  ? Icons.smart_display
                  : Icons.smart_display_outlined),
            ),
            IconButton(
              onPressed: () => {onIconTape(3)},
              iconSize: _iconSize,
              icon: Icon(selectedPageIndex == 3
                  ? Icons.local_mall
                  : Icons.local_mall_outlined),
            ),
            InkWell(
              onTap: () => {onIconTape(4)},
              child: CircleAvatar(
                backgroundColor: Colors.black,
                radius: _iconSize / 2,
                backgroundImage: NetworkImage(currentuser.profileImageUrl),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
