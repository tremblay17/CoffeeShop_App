import 'dart:convert';

import 'package:coffee_shop_app/dummy-data/dummy_data.dart';
import 'package:coffee_shop_app/screens/cafe_menu/buildAppBar.dart';
import 'package:coffee_shop_app/screens/cafe_menu/buildMenuList.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;

Future<List<CoffeeModel>?> fetchData(http.Client client) async {
  final response = await http.get(
    Uri.parse('https://jsonplaceholder.typicode.com/albums'),
  );

  return compute(parseAlbums, response.body);
}

List<CoffeeModel> parseAlbums(String responseBody) {
  final parsed = json.decode(responseBody).cast<Map<String, dynamic>>();
  List<CoffeeModel> coffeeList =
      List<CoffeeModel>.from(parsed.map((json) => CoffeeModel.fromJson(json)));
  return coffeeList;
}

class CafeMenu extends StatefulWidget {
  const CafeMenu({Key? key}) : super(key: key);

  @override
  _CafeMenuState createState() => _CafeMenuState();
}

class _CafeMenuState extends State<CafeMenu> {
  @override
  void initState() {
    super.initState();
    //call get json data func
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBarMenu(),
      body: SingleChildScrollView(
        keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
        child: Container(
          width: double.infinity,
          height: 500.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 25.0, left: 20.0),
                child: Row(
                  children: [
                    RichText(
                      text: TextSpan(
                        text: 'CoffeeDay',
                        style: GoogleFonts.inknutAntiqua(
                          color: Colors.black,
                          fontSize: 30.0,
                        ),
                      ),
                    ),
                    //TODO: Create a star rating widget that can update based on cafe rating
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Row(
                  children: [
                    Icon(Icons.location_pin),
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: RichText(
                        text: TextSpan(
                          text: '# location, country - #',
                          style: GoogleFonts.bioRhyme(
                            color: Colors.black,
                            fontSize: 14.0,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 25.0,
                  top: 30.0,
                  bottom: 30.0,
                ),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: RichText(
                    softWrap: true,
                    text: TextSpan(
                      text: 'long desc',
                      style: GoogleFonts.bioRhyme(
                        color: Colors.black,
                        fontSize: 18.0,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 20.0,
                  bottom: 20.0,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    RichText(
                      text: TextSpan(
                        text: 'List Menu ',
                        style: GoogleFonts.varelaRound(
                          fontSize: 18.0,
                          color: Colors.brown,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Divider(
                        color: Colors.brown,
                        endIndent: 25.0,
                        indent: 5.0,
                        thickness: 2.5,
                      ),
                    ),
                  ],
                ),
              ),
              FutureBuilder<List<CoffeeModel>?>(
                future: fetchData(http.Client()),
                builder: (context, snapshot) {
                  if (snapshot.hasError) {
                    print(snapshot.error);
                  }
                  return snapshot.hasData
                      ? BuildMenuList(coffeeList: snapshot.data)
                      : Center(
                          child: CircularProgressIndicator(),
                        );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
