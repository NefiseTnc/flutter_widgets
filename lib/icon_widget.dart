import 'package:flutter/material.dart';

class IconWidget extends StatefulWidget {
  const IconWidget({Key? key}) : super(key: key);

  @override
  State<IconWidget> createState() => _IconWidgetState();
}

class _IconWidgetState extends State<IconWidget> {
  int _volume = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Icon Widget'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const SizedBox(height: 50),
            SizedBox(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text('Icon : '),
                  Icon(
                    Icons.favorite,
                    color: Colors.pink,
                    size: 24.0,
                  ),
                  Icon(
                    Icons.audiotrack,
                    color: Colors.green,
                    size: 24.0,
                  ),
                  Icon(
                    Icons.beach_access,
                    color: Colors.blue,
                    size: 24.0,
                  )
                ],
              ),
            ),
            const SizedBox(height: 50),
            SizedBox(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text('Icon Button :'),
                      const SizedBox(width: 25),
                      Column(
                        children: [
                          IconButton(
                              onPressed: () {
                                setState(() {
                                  if (_volume < 100) {
                                    _volume += 10;
                                  } else if (_volume == 100) {
                                    _volume = 0;
                                  }
                                });
                              },
                              icon: const Icon(Icons.volume_up)),
                          Text('Volume $_volume'),
                        ],
                      ),
                      const SizedBox(width: 25),
                      Ink(
                        child: IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.android,
                              color: Colors.indigo,
                            )),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
