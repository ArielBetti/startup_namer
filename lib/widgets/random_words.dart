import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

class RandomWords extends StatelessWidget {
  const RandomWords({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final suggestions = <WordPair>[];
    const biggerFont = TextStyle(fontSize: 18);

    return ListView.builder(
      padding: const EdgeInsets.all(16.0),
      itemBuilder: /*1*/ (context, i) {
        if (i.isOdd) return const Divider(); /*2*/

        final index = i ~/ 2; /*3*/
        if (index >= suggestions.length) {
          suggestions.addAll(generateWordPairs().take(10)); /*4*/
        }
        return ListTile(
          title: Text(
            suggestions[index].asPascalCase,
            style: biggerFont,
          ),
        );
      },
    );
  }
}
