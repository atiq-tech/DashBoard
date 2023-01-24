import 'package:bd_hive_app/home_page.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Hive.initFlutter();
  await Hive.openBox('testBox');
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

// class HomePage extends StatefulWidget {
//   const HomePage({super.key});

//   @override
//   State<HomePage> createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   TextEditingController _nameController = TextEditingController();
//   TextEditingController _idController = TextEditingController();
//   TextEditingController _phoneController = TextEditingController();

//   void _showForm(BuildContext ctx, int? itemKey) {
//     showModalBottomSheet(
//         elevation: 5,
//         isScrollControlled: true,
//         context: ctx,
//         builder: (_) => Container(
//               padding: EdgeInsets.only(
//                   bottom: MediaQuery.of(ctx).viewInsets.bottom,
//                   left: 15.0,
//                   right: 15.0,
//                   top: 15.0),
//               child: Column(
//                 mainAxisSize: MainAxisSize.max,
//                 crossAxisAlignment: CrossAxisAlignment.end,
//                 children: [
//                   TextField(
//                     controller: _nameController,
//                     decoration: InputDecoration(hintText: 'Name'),
//                   ),
//                   SizedBox(height: 15.0),
//                   TextField(
//                     controller: _idController,
//                     keyboardType: TextInputType.number,
//                     decoration: InputDecoration(hintText: 'Id'),
//                   ),
//                   SizedBox(height: 15.0),
//                   TextField(
//                     controller: _phoneController,
//                     keyboardType: TextInputType.number,
//                     decoration: InputDecoration(hintText: 'Phone'),
//                   ),
//                   SizedBox(height: 15.0),
//                   ElevatedButton(
//                     onPressed: () {
//                       _nameController.text = '';
//                       _idController.text = '';
//                       _phoneController.text = '';
//                       Navigator.of(context).pop();
//                     },
//                     child: Text(
//                       "Submit",
//                       style: TextStyle(
//                           color: Color.fromARGB(255, 255, 254, 254),
//                           fontWeight: FontWeight.w600,
//                           fontSize: 16.0),
//                     ),
//                   )
//                 ],
//               ),
//             ));
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(
//           "Hive App",
//           style: TextStyle(
//               color: Colors.black, fontWeight: FontWeight.w800, fontSize: 25.0),
//         ),
//         centerTitle: true,
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () => _showForm(context, null),
//         child: Icon(Icons.arrow_forward),
//       ),
//     );
//   }
// }
