import 'package:flutter/material.dart';

import '../platform_channels/platform_channel.dart';
import 'stream_example_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var examplePlatformChannel = ExamplePlatformChannel();

  String _result = '';
  String nameRequest = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextFormField(
                onChanged: (val) => nameRequest = val,
                decoration: const InputDecoration(hintText: 'Name'),
              ),
            ),
            const Text(
              'Method Chaneel Result:',
            ),
            Text(
              _result,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          FloatingActionButton(
            heroTag: 'hr1',
            onPressed: () async {
              _result = await examplePlatformChannel.callSimpleMethodChannel();
              setState(() {});
            },
            tooltip: 'Call Method Channel',
            child: const Text('1'),
          ),
          FloatingActionButton(
            heroTag: 'hr2',
            onPressed: () async {
              _result = await examplePlatformChannel
                  .callSimpleMethodChannelWithParams(nameRequest);
              setState(() {});
            },
            tooltip: 'Call Method Channel with param',
            child: const Text('2'),
          ),
          FloatingActionButton(
            heroTag: 'hr3',
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const StreamExamplePage(),
                ),
              );
            },
            tooltip: 'Go to Outher Example',
            child: const Text('3'),
          ),
        ],
      ),
    );
  }
}
