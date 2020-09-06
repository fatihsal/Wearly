import 'package:flutter/material.dart';

class CategoryModel {
  final String id;
  final String name;
  bool selected;

  CategoryModel(this.id, this.name, this.selected);
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<CategoryModel> arrayCategory = [CategoryModel('0', 'Men', false), CategoryModel('1', 'Women', true), CategoryModel('2', 'Kids', false)];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white.withOpacity(0.1),
        elevation: 0,
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.search,
              color: Colors.black,
            ),
            onPressed: () {},
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.shopping_basket,
              color: Colors.black,
            ),
          ),
        ],
        leading: Icon(
          Icons.list,
          color: Colors.black,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            InkWell(
              onTap: () {
                setState(() {});
              },
              child: Container(
                height: 50,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: arrayCategory.length,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    var item = arrayCategory[index];
                    return Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: GestureDetector(
                        onTap: () {
                          for (int i = 0; i < arrayCategory.length; i++) {
                            arrayCategory[i].selected = false;
                          }
                          item.selected = true;
                          setState(() {});
                        },
                        child: Container(
                          child: Center(
                              child: Text(
                            item.name,
                            style: TextStyle(fontWeight: FontWeight.bold, color: item.selected ? Colors.white : Colors.black),
                          )),
                          height: 30,
                          width: 125,
                          decoration: BoxDecoration(
                              color: item.selected ? Colors.black : Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(color: Colors.black)),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
