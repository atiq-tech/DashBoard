import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:hive/hive.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _idController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();

  List<Map<String, dynamic>> _items = [];

  final _testBox = Hive.box('testBox');

  @override
  void initState() {
    super.initState();
    _refreshItems();
  }

  void _refreshItems() {
    final data = _testBox.keys.map((key) {
      final item = _testBox.get(key);
      return {
        "keys": key,
        "name": item["name"],
        "id": item["id"],
        "phone": item["phone"],
      };
    }).toList();
    setState(() {
      _items = data.reversed.toList();
      print(_items.length);
    });
  }

  Future<void> _createItem(Map<String, dynamic> newItem) async {
    await _testBox.add(newItem);
    _refreshItems();
  }

  Future<void> _updateItem(int itemKey, Map<String, dynamic> item) async {
    await _testBox.put(itemKey, item);
    _refreshItems();
  }

  Future<void> _deleteItem(int itemkey) async {
    await _testBox.delete(itemkey);
    _refreshItems();

    ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("An item is deleted successfully")));
  }

  void _showForm(BuildContext ctx, int? itemKey) async {
    if (itemKey != null) {
      final exitItem =
          _items.firstWhere((element) => element['key'] == itemKey);
      _nameController.text = exitItem['name'];
      _idController.text = exitItem['id'];
      _phoneController.text = exitItem['phone'];
    }

    showModalBottomSheet(
        elevation: 5,
        isScrollControlled: true,
        context: ctx,
        builder: (_) => Container(
              padding: EdgeInsets.only(
                  bottom: MediaQuery.of(ctx).viewInsets.bottom,
                  left: 15.0,
                  right: 15.0,
                  top: 15.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  TextField(
                    controller: _nameController,
                    decoration: InputDecoration(hintText: 'name'),
                  ),
                  SizedBox(height: 15.0),
                  TextField(
                    controller: _idController,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(hintText: 'id'),
                  ),
                  SizedBox(height: 15.0),
                  TextField(
                    controller: _phoneController,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(hintText: 'phone'),
                  ),
                  SizedBox(height: 15.0),
                  ElevatedButton(
                    onPressed: () async {
                      if (itemKey == null) {
                        _createItem({
                          "name": _nameController.text,
                          "id": _idController.text,
                          "phone": _phoneController.text
                        });
                      }
                      if (itemKey != null) {
                        _updateItem(itemKey, {
                          "name": _nameController.text.trim(),
                          "id": _idController.text.trim(),
                          "phone": _phoneController.text.trim(),
                        });
                      }
                      _nameController.text = '';
                      _idController.text = '';
                      _phoneController.text = '';
                      Navigator.of(context).pop();
                    },
                    child: Text(itemKey == null ? "Submit" : "Update"),
                  )
                ],
              ),
            ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 125, 181, 255),
        elevation: 0.0,
        title: Text(
          "Hive App",
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.w800, fontSize: 25.0),
        ),
        centerTitle: true,
      ),
      body: ListView.builder(
          itemCount: _items.length,
          itemBuilder: (_, index) {
            final currentItem = _items[index];
            return Card(
              elevation: 3,
              color: Color.fromARGB(255, 180, 215, 235),
              margin: EdgeInsets.all(10.0),
              child: Padding(
                padding:
                    const EdgeInsets.only(left: 15.0, right: 15.0, top: 15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Name:${currentItem['name']}",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w800,
                          fontSize: 18.0),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Text(
                      "ID:${currentItem['id']}",
                      style: TextStyle(
                          color: Color.fromARGB(255, 83, 76, 76),
                          fontWeight: FontWeight.w800,
                          fontSize: 18.0),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Phone:${currentItem['phone']}",
                          style: TextStyle(
                              color: Color.fromARGB(255, 99, 88, 88),
                              fontWeight: FontWeight.w800,
                              fontSize: 18.0),
                        ),
                        Row(
                          children: [
                            IconButton(
                                icon: Icon(
                                  Icons.edit,
                                  color: Colors.black,
                                  size: 22.0,
                                ),
                                onPressed: () =>
                                    _showForm(context, currentItem['key'])),
                            IconButton(
                                icon: Icon(
                                  Icons.delete,
                                  color: Colors.black,
                                  size: 22.0,
                                ),
                                onPressed: () =>
                                    _deleteItem(currentItem['key'])),
                          ],
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                  ],
                ),
              ),
            );
          }),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _showForm(context, null),
        child: Icon(Icons.arrow_forward),
      ),
    );
  }
}
