import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:old_care/screens/post_screen.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

class PostView extends StatefulWidget {
  const PostView({super.key});

  @override
  State<PostView> createState() => _PostViewState();
}

class _PostViewState extends State<PostView> {
  List<bool> likes = List.filled(5, true);
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: MasonryGridView.builder(
        itemCount: 5,
        gridDelegate: const SliverSimpleGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2),
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
              onTap: () => PersistentNavBarNavigator.pushNewScreen(context,
                  screen: const PostScreen(), withNavBar: false),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset("assets/images/img${index + 1}.png"),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                        "klsjkldsajlkdjlksajdlkjwijlksjdlksajdoiwjdsajdklsajldjwijdlsajdlksajdijwidjlkasdjlkasjdoia"),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              height: 20,
                              width: 20,
                              child: CircleAvatar(
                                backgroundImage: AssetImage(
                                    "assets/images/img${index + 1}.png"),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.all(5.0),
                              child: Text(
                                "Carol",
                                style:
                                    TextStyle(fontSize: 10, color: Colors.grey),
                              ),
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            IconButton(
                              icon: likes[index]
                                  ? const Icon(
                                      Icons.favorite_border,
                                      color: Colors.black,
                                    )
                                  : const Icon(
                                      Icons.favorite,
                                      color: Colors.red,
                                    ),
                              onPressed: () {
                                setState(() {
                                  likes[index] = !likes[index];
                                });
                              },
                            ),
                            const Text(
                              "15",
                              style: TextStyle(
                                  fontSize: 10, fontWeight: FontWeight.bold),
                            )
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
