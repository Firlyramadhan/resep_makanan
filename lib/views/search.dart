import 'package:flutter/material.dart';
import 'package:resep_makanan/model/resep.api.dart';
import 'package:resep_makanan/model/resep.dart';
import 'package:resep_makanan/views/detail_resep.dart';


class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  List<Resep> _resep = [];
  bool _isloading = true;

  @override
  void initState() {
    super.initState();
    getResep();
  }

  Future<void> getResep() async {
    _resep = await ResepApi.getResep();
    setState(() {
      _isloading = false;
    });
  }

  //List<Resep> display_list = List.from(_resep());
  //untuk menu pencarian
  void updateList(String value) {
    setState(() {
      _resep = _resep
          .where((element) =>
              element.name.toLowerCase().contains(value.toLowerCase()))
          .toList();
    });
  }

  //menampilkan halaman pencarian
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Pencarian Resep Makanan",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 15.0,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10.0,
            ),
            TextField(
              onChanged: (value) => updateList(value),
              decoration: InputDecoration(
                filled: true,
                fillColor: Color.fromARGB(255, 238, 236, 236),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5.0),
                  borderSide: BorderSide.none,
                ),
                hintText: "Search",
                prefixIcon: Icon(Icons.search),
                prefixIconColor: Color.fromARGB(255, 238, 236, 236),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Expanded(
              child: _resep.length == 0
                  ? Center(
                      child: Text(
                        "Now Result Found",
                        style: TextStyle(color: Colors.black),
                      ),
                    )
                  : ListView.builder(
                      itemCount: _resep.length,
                      itemBuilder: (context, index) => ListTile(
                        contentPadding: EdgeInsets.all(8.0),
                        onTap: () => {
                          Navigator.push(
                              context,
                              //untuk menampilkan detail resep
                              MaterialPageRoute(
                                builder: (context) => DetailResep(
                                  name: _resep[index].name,
                                  totalTime: _resep[index].totalTime,
                                  rating: _resep[index].rating,
                                  images: _resep[index].images,
                                  description: _resep[index].description,
                                  videoUrl: _resep[index].videoUrl,
                                  instructions: _resep[index].instructions,
                                  sections: _resep[index].sections,
                                ),
                              ))
                        },
                        title: Text(
                          _resep[index].name,
                          style: TextStyle(fontSize: 16),
                        ),
                        //leading: Image.network(_resep[index].images),
                      ),
                    ),
            ),
          ],
        ),
      ),
    );
  }
}
