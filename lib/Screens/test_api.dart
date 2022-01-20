import 'package:chat_bud/Models/User.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:async';
import 'dart:collection';

User user = new User();

Future<List<User>> fetchQuote() async {
  final response = await http.get(Uri.parse('http://localhost:3000/users/all'),
      headers: {
        "Accept": "application/json",
        "Access-Control-Allow-Origin": "*"
      });

  if (response.statusCode == 200) {
    final parsed = json.decode(response.body).cast<Map<String, dynamic>>();
    return parsed.map<User>((json) => User.fromJson(json)).toList();
  } else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('Failed to load quote');
  }
}

class Quote extends StatefulWidget {
  @override
  _QuoteState createState() => _QuoteState();
}

class _QuoteState extends State<Quote> {
  late Future<List<User>> futureQuote;

  @override
  void initState() {
    super.initState();
    futureQuote = fetchQuote();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Quote'),
      ),
      body: Center(
        child: FutureBuilder<List<User>>(
          future: futureQuote,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return ListView.builder(
                itemCount: snapshot.data!.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text("${snapshot.data![index].username}"),
                    subtitle: Text("${snapshot.data![index].email}"),
                  );
                },
              );
            } else if (snapshot.hasError) {
              return Text("${snapshot.error}");
            }

            // By default, show a loading spinner.
            return CircularProgressIndicator(
              color: Colors.amber,
            );
          },
        ),
      ),
    );
  }
}
