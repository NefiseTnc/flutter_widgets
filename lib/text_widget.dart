import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  const TextWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Text Widget'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Column(
                children: const [
                  SizedBox(height: 10),
                  Text(
                    'Flutter text widget',
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Flutter text widget',
                    style: TextStyle(
                      color: Colors.deepOrange,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Flutter text widget',
                    style: TextStyle(
                      color: Colors.pink,
                      fontSize: 30,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Flutter text widget',
                    style: TextStyle(
                        color: Colors.purple,
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Flutter text widget',
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.lineThrough),
                  )
                ],
              ),
              const SizedBox(height: 20),
              Column(
                //Flutter'daki RichText widget'ı, metni birden çok stilde görüntülemek için kullanışlıdır. Bir metin widget'ına bir stil uygularsak, metnin tamamını yansıtacaktır. Aynı metne farklı stiller uygulamak için RichText widget'ını kullanacağız.Metin, bir dizi TextSpan widget'ı kullanılarak görüntülenir. Her TextSpan parçacığına farklı stil uygulayabiliriz.
                children: [
                  RichText(
                      text: const TextSpan(
                          text: 'Flutter ',
                          style: TextStyle(color: Colors.black54, fontSize: 24),
                          children: [
                        TextSpan(
                          text: 'RichText ',
                          style: TextStyle(
                            color: Colors.deepOrange,
                          ),
                        ),
                        TextSpan(text: 'Widget '),
                        TextSpan(
                            text: '...',
                            style:
                                TextStyle(decoration: TextDecoration.underline))
                      ]))
                ],
                //Yukarıdaki örnekte, RichText'in bir dış TextSpan, stil ve TextSpans'ın çocukları olduğunu gözlemleyebiliriz. Stili bir çocuğa uygularsak sadece o çocuğa yansıyacaktır. Bir çocuğa bir stil uygulamazsak, dış açıklığın stilini alacaktır.
              )
            ],
          ),
        ),
      ),
    );
  }
}
