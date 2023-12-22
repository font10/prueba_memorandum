import 'package:flutter/material.dart';
import 'package:prueba_memorandum/misc/colors.dart';
import 'package:prueba_memorandum/services/beers_service.dart';

class BeerDetail extends StatefulWidget {
  final int id;
  const BeerDetail({super.key, required this.id});

  @override
  State<BeerDetail> createState() => _BeerDetailState();
}

class _BeerDetailState extends State<BeerDetail> {
  bool isLoading = false;
  List beer = [];

  @override
  void initState() {
    super.initState();
    print(widget.id);
    fetchBeer();
  }

  Future<void> fetchBeer() async {
    setState(() {
      isLoading = true;
    });
    final res = await BeersService.getBeerByIdService(widget.id);
    print(res);
    setState(() {
      beer = res as List;
      isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Beer Detail')),
        body: ListView.builder(
          padding: const EdgeInsets.all(12),
          itemCount: beer.length,
          itemBuilder: (context, index) {
            final item = beer[index];
            return Card(
                elevation: 0,
                child: Column(
                  children: [
                    CircleAvatar(
                      radius: 108,
                      child: CircleAvatar(
                        backgroundImage:
                            NetworkImage(item['image_url']), //NetworkImage
                        radius: 100,
                      ), //CircleAvatar
                    ),
                    SizedBox(height: 18),
                    Text(item['name'],
                        style: const TextStyle(
                          color: AppColors.blueDarkColor,
                          fontSize: 22.0,
                          fontWeight: FontWeight.w400,
                        )),
                  ],
                ));
          },
        ));
  }
}
