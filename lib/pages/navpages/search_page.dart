import 'package:flutter/material.dart';
import 'package:flutter_temp_1/widgets/tabbarview.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  TextEditingController searchText = TextEditingController();
  String result = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: Container(
        padding: const EdgeInsets.only(top: 30),
        height: double.maxFinite,
        width: double.infinity,
        color: Colors.white,
        child: Column(
          children: [
            //Field Search
            Container(
              margin: const EdgeInsets.only(bottom: 20),
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Card(
                elevation: 3,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  height: 45,
                  width: double.maxFinite,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        child: TextField(
                          controller: searchText,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Search city or things to do',
                            hintStyle: TextStyle(
                                fontSize: 14, color: Colors.grey[400]),
                          ),
                          style:
                              TextStyle(fontSize: 14, color: Colors.grey[700]),
                          onChanged: (value) {
                            setState(() {});
                          },
                        ),
                      ),
                      IconButton(
                        onPressed: () {
                          setState(() {
                            result = searchText.text;
                          });
                        },
                        icon: searchText.text.isEmpty
                            ? Icon(
                                FontAwesomeIcons.magnifyingGlass,
                                size: 20,
                                color: Colors.grey[400],
                              )
                            : const Icon(
                                FontAwesomeIcons.magnifyingGlass,
                                size: 20,
                                color: Colors.amber,
                              ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            //
            Expanded(
              child: ListView(
                children: [
                  TabBarViewTrips(search: result),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
