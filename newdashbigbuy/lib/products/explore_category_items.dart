import 'package:flutter/material.dart';
import 'package:newdashbigbuy/models/explore_model.dart';

class ExploreCategoryItems extends StatefulWidget {
  const ExploreCategoryItems({
    Key? key,
  }) : super(key: key);

  @override
  State<ExploreCategoryItems> createState() => _ExploreCategoryItemsState();
}

class _ExploreCategoryItemsState extends State<ExploreCategoryItems> {
  final exploredata = ExploreModel.generatedMySourecList();
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemCount: exploredata.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 15.0,
            crossAxisSpacing: 15.0,
            childAspectRatio: 4 / 4),
        itemBuilder: (context, index) {
          return Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(3.0),
                border: Border.all(color: Colors.blue)),
            child: Column(
              children: [
                Expanded(
                    flex: 4,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 5, 5, 5),
                        image: DecorationImage(
                            image: AssetImage('${exploredata[index].img}'),
                            fit: BoxFit.cover),
                      ),
                    )),
                Expanded(
                    flex: 1,
                    child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 4, 108, 192),
                      ),
                      child: Center(
                          child: Text(
                        '${exploredata[index].title}',
                        style: TextStyle(color: Colors.white, fontSize: 16.0),
                      )),
                    )),
              ],
            ),
          );
        });
  }
}
