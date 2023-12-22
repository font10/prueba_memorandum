import 'package:flutter/material.dart';
import 'package:prueba_memorandum/services/beers_service.dart';
import 'package:prueba_memorandum/widgets/beer_card_item.dart';
import 'package:prueba_memorandum/widgets/beer_list.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool isLoading = true;
  List beers = [];

  @override
  void initState() {
    super.initState();
    fetchTodo();
  }

  Future<void> fetchTodo() async {
    setState(() {
      isLoading = true;
    });
    final res = await BeersService.getAllBeersService();

    setState(() {
      beers = res as List;
      isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Beers App')),
      body: Visibility(
        visible: isLoading,
        replacement: RefreshIndicator(
          onRefresh: fetchTodo,
          child: Visibility(
            visible: beers.isNotEmpty,
            replacement: Center(
                child: Text('No Todo Item',
                    style: Theme.of(context).textTheme.headlineMedium)),
            child: BeerList(beers: beers),
          ),
        ),
        child: const Center(child: CircularProgressIndicator()),
      ),
    );
  }
}
