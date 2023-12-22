import 'package:flutter/material.dart';
import 'package:prueba_memorandum/screens/BeerDetail.dart';

class BeerCardItem extends StatelessWidget {
  const BeerCardItem({
    super.key,
    required this.beer,
  });

  final Map beer;

  @override
  Widget build(BuildContext context) {
    void navigateBeerDetail(int id) async {
      final route = MaterialPageRoute(builder: (context) => BeerDetail(id: id));
      await Navigator.push(context, route);
    }

    return InkWell(
      onTap: () {
        navigateBeerDetail(beer['id']);
      },
      child: Card(
        elevation: 0,
        child: ListTile(
          title: Text(beer['tagline']),
          subtitle: Text(beer['description'].substring(0, 40)),
          leading: CircleAvatar(
            radius: 28,
            backgroundImage: NetworkImage(beer['image_url']),
          ),
        ),
      ),
    );
  }
}
