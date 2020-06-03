import 'package:artemis/artemis.dart';
import 'package:client/src/graphql/schema.graphql.dart';
import 'package:flutter/material.dart';

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  String response;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: View(
        onTap: _handleTap,
        response: response,
      ),
    );
  }

  void _handleTap() async {
    final pokemon = await _queryPokemon();
    setState(() {
      response =
          'name: ${pokemon.name}\nmaxHP: ${pokemon.number}\nnumber: ${pokemon.number}';
    });
  }

  Future<Simple$Query$Pokemon> _queryPokemon() async {
    final client = ArtemisClient('https://graphql-pokemon.now.sh/graphql');
    final query = SimpleQuery();
    final response = await client.execute(query);
    return response.data.pokemon;
  }
}

class View extends StatelessWidget {
  const View({
    @required this.onTap,
    this.response,
  });

  final VoidCallback onTap;
  final String response;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          body: Column(
            children: [
              Expanded(
                child: Center(
                  child: Text(response ?? 'no response'),
                ),
              ),
              Expanded(
                child: Center(
                  child: RaisedButton(
                    onPressed: onTap,
                    child: Text('Do request!'),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
