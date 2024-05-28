import 'package:flutter/material.dart';
import 'package:flutter/services.dart'; // import for method channel

class StreamExamplePage extends StatefulWidget {
  const StreamExamplePage({super.key});

  @override
  State<StreamExamplePage> createState() => _StreamExamplePageState();
}

class _StreamExamplePageState extends State<StreamExamplePage> {
  static const stream = EventChannel('unique.identifier.method/stream');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Stream Method Channel Result:',
            ),
            StreamBuilder(
              stream: stream.receiveBroadcastStream(),
              builder: (context, snapshot) {
                return Text(
                  '${snapshot.data}',
                  style: Theme.of(context).textTheme.bodyMedium,
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
