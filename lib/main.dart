import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int x=0;
  List<String> arr = ['images/image1.jpg',
    'images/image2.jpg',
    'images/image3.jpg',
    'images/image4.jpg',
    'images/image5.jpg',];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal[300],
        appBar: AppBar(
          title: const Text('Image Slider'),
          backgroundColor: Colors.teal,
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 30 , left: 5 , right: 5,),
                child: Container(
                  height: 250,
                  width: 600,
                  decoration: BoxDecoration(
                    color: Colors.teal,
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage(arr[x]),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 150,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FloatingActionButton(onPressed: (){
                    prevImage();
                  },
                    tooltip: 'next',
                    backgroundColor: Colors.teal,
                    child: const  Column(
                      children: [
                        SizedBox(height: 05,),
                        Icon(Icons.arrow_back),
                        Text('Prev')
                      ],
                    ),
                  ),
                  const SizedBox(width: 15,),
                  FloatingActionButton(onPressed: (){
                    nextImage();
                  },
                    tooltip: 'next',
                    backgroundColor: Colors.teal,
                    child:const  Column(
                      children: [
                        SizedBox(height: 05,),
                        Icon(Icons.arrow_forward_outlined),
                        Text('Next')
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
  void nextImage(){
    if(x == arr.length-1) {
      x%=(arr.length-1);
    }
    else
      {
        x++;
      }
    setState(() {});
  }
  void prevImage(){
    if(x == 0) {
      x=arr.length-1;
    }
    else
    {
      x--;
    }
    setState(() {});
  }
}
