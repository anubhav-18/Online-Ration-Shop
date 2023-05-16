import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SearchPage(),
    );
  }
}
class SearchPage extends StatefulWidget {
  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  TextEditingController _searchController = TextEditingController();

  List<String> _groceryItems = [
    'Aashirvaad Select',
    'Bananas',
    'Oranges',
    'Strawberries',
    'Blueberries',
    'Milk',
    'Bread',
    'Eggs',
    'Cheese',
    'Yogurt',
  ];

  List<String> _searchResults = [];

  void _filterSearchResults(String query) {
    List<String> searchResults = [];

    if (query.isNotEmpty) {
      searchResults = _groceryItems
          .where((item) => item.toLowerCase().contains(query.toLowerCase()))
          .toList();
    }

    setState(() {
      _searchResults = searchResults;
    });
  }

  @override
  void initState() {
    super.initState();
    _searchController.addListener(() {
      _filterSearchResults(_searchController.text);
    });
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  Widget _buildSearchBar() {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(8.0),
      child: TextField(
        controller: _searchController,
        decoration: InputDecoration(
          hintText: 'Search for grocery items',
          prefixIcon: Icon(Icons.search),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
        ),
      ),
    );
  }

  Widget _buildSearchResults() {
    return Expanded(
      child: ListView.builder(
        itemCount: _searchResults.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Icon(Icons.shopping_basket),
            title: Text(_searchResults[index]),
            trailing: Icon(Icons.arrow_forward),
            onTap: () {
              // Perform action when item is tapped
              // For example, navigate to item details page
            },
          );
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Search'),
      ),
      body: Column(
        children: [
          _buildSearchBar(),
          _buildSearchResults(),
        ],
      ),
    );
  }
}
