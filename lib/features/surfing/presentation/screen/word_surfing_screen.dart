import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learnwordsapp/di/setup_di.dart';
import 'package:learnwordsapp/features/surfing/presentation/bloc/word_card_block.dart';
import 'package:learnwordsapp/features/surfing/presentation/model/next_word_event.dart';
import 'package:learnwordsapp/features/surfing/presentation/model/word_card_state.dart';
import 'package:learnwordsapp/features/surfing/presentation/widget/word_card.dart';

class WordSurfingScreen extends StatefulWidget {
  const WordSurfingScreen({Key? key, required this.title}) : super(key: key);

  static const String routeKey = '/surfing';

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<WordSurfingScreen> createState() => _WordSurfingScreenState();
}

class _WordSurfingScreenState extends State<WordSurfingScreen> {
  late final WordCardBloc _wordCardBloc;

  @override
  void initState() {
    super.initState();
    _wordCardBloc = getIt.get<WordCardBloc>();
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return BlocProvider(
      create: (BuildContext context) => _wordCardBloc,
      child: Scaffold(
        appBar: AppBar(
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: Text(widget.title),
          backgroundColor: Colors.purple,
          actions: [
            IconButton(
                onPressed: () => {Navigator.pop(context)},
                icon: const Icon(Icons.list_alt))
          ],
        ),
        body: const CardAndButtonWidget(),
      ),
    );
  }
}

class CardAndButtonWidget extends StatelessWidget {
  const CardAndButtonWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.purple.shade50,
      constraints: const BoxConstraints.expand(),
      padding: const EdgeInsets.all(75),
      child: Column(
        children: [
          getWordCardWidget(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.all(25),
                    textStyle: const TextStyle(fontSize: 20)),
                onPressed: () {
                  BlocProvider.of<WordCardBloc>(context)
                      .add(const NextWordEvent());
                  // context.read<WordCardBloc>().add(const NextWordEvent());
                  // _wordCardBloc.add(const NextWordEvent());
                },
                child: const Text('Next')),
          )
        ],
      ),
    );
  }

  Widget getWordCardWidget() {
    return BlocBuilder<WordCardBloc, WordCardState>(builder: (context, state) {
      return state.word.fold(
          () => const Expanded(child: GreetingWidget()),
          (word) => Expanded(
                  child: WordCardWidget(
                word: word.title,
                translation: word.translation,
              )));
    });
  }
}

class GreetingWidget extends StatelessWidget {
  const GreetingWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(25),
      width: double.infinity,
      decoration: BoxDecoration(
          color: Colors.purple.shade100,
          borderRadius: const BorderRadius.vertical(
              top: Radius.circular(15), bottom: Radius.circular(15))),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Let's try to learn new words!",
            maxLines: 5,
            style: Theme.of(context).textTheme.headline4,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 24.0),
            child: Text(
              "Press the Next button.",
              maxLines: 5,
              style: Theme.of(context).textTheme.subtitle1,
            ),
          ),
        ],
      ),
    );
  }
}
