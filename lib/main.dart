import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_demo/StackDemo.dart';

void main() {
//    print("Learning started");

//  for( var i = 1 ; i <= 10; i++ ) {
//    if(i%2==0) {
//      print(i);
//    }
//  }

//  add(3,4);

//  WidgetsFlutterBinding.ensureInitialized();

//  runApp(TimerApp());
//  runApp(TextUpdateDemo());
//  runApp(MyHomePage());
//  runApp(WordLIstApp());
//  runApp(CustomeListApp());
//  runApp(DialogApp());
//  runApp(DynamicListWithNavApp());
//  runApp(AnimationApp());
//  runApp(OpenBrowerApp());
//  runApp(DynamicListWithHttpApp(products: fetchProductList()));
//  Future<List<ProductHttp>> productList = fetchProductList();
//  runApp(DynamicListWithHttpApp(products: productList,));
//  runApp(DynamicListWithHttpApp());
  runApp(

//    WrapDemoApp()
//      TableDemoApp()
      StackDemoApp()
//      DynamicListWithSQLApp(products: SQLiteDbProvider.db.getAllProduct())
      );
//  runApp(MyApp());
}

//void add(int a,int b) {
//  int c;
//  c = a+b;
//  print(c);
//}

/*class TimerApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new TimerState();
  }

//  @override
//  TimerState createState() => TimerState();
}

class TimerState extends State<TimerApp> {
  static const duration = const Duration(seconds: 1);

  int secondsPassed = 0;
  bool isActive = false;

  Timer timer;

  void handleTick() {
    if (isActive) {
      setState(() {
        secondsPassed = secondsPassed + 1;
      });
    }
  }

  @override
  Widget build(BuildContext context) {

    if (timer == null)
      timer = Timer.periodic(duration, (Timer t) {
        handleTick();
      });

    int seconds = secondsPassed % 60;
    int minutes = secondsPassed ~/ 60;
    int hours = secondsPassed ~/ (60 * 60);

      return MaterialApp(
        title: 'Welcome to Flutter',
        home: Scaffold(
          appBar: AppBar(
            title: Text('Welcome to Flutter'),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    CustomTextContainer(
                      value: hours.toString().padLeft(2, '0'),
                      label: "Hrs",
                    ),
                    CustomTextContainer(
                      value: minutes.toString().padLeft(2, '0'),
                      label: "Min",
                    ),
                    CustomTextContainer(
                      value: seconds.toString().padLeft(2, '0'),
                      label: "Sec",
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(top: 20),
                  child: RaisedButton(
                    child: Text(isActive ? 'STOP' : 'START'),
                    onPressed: () {
                      setState(() {
                        isActive = !isActive;
                      });
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      );
  }
}

class CustomTextContainer extends StatelessWidget {
  CustomTextContainer({this.value, this.label});

  final String label;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 5),
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.black54,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Text('$value',
              style: TextStyle(
                  fontSize: 40,
                  color: Colors.white,
                  fontWeight: FontWeight.bold)),
          Text('$label',
              style: TextStyle(
                  fontSize: 15,
                  color: Colors.white70,
                  fontWeight: FontWeight.normal)),
        ],
      ),
    );
  }
}*/

/*class TextUpdateDemo extends StatelessWidget {
  // Text update
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'StateUpdateApp',
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      home: TextUpdatePage(),
    );
  }
}

class TextUpdatePage extends StatefulWidget {
  TextUpdatePage({Key key}) : super(key: key);

//  @override
//  State<StatefulWidget> createState() {
//    return StateTextUpdate();
//  }

  @override
  StateTextUpdate createState() => StateTextUpdate();
}

class StateTextUpdate extends State<TextUpdatePage> {
  String mText = "I will learn flutter";

  void updateText() {
    setState(() {
      mText = "I am learning flutter";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TextUpdateDemo"),
      ),
//      body: Container(
//        child: Align(
//          alignment: Alignment(-0.5, -0.5),
//          child: Text(mText),
//        ),
//      ),
//    body: Center(child: Container(width: 240,height: 240, color: Colors.black12, child: Align(alignment: FractionalOffset(1,1), child: FlutterLogo(size: 60,)),),),
      body: Container(
        constraints: BoxConstraints.expand(
          height: Theme.of(context).textTheme.display1.fontSize * 1.1 + 200.0,
        ),
        margin: const EdgeInsets.all(10),
        padding: const EdgeInsets.all(8.0),
        color: Colors.blue[600],
        alignment: Alignment.center,
        child: Text(mText,
            style: Theme.of(context)
                .textTheme
                .display1
                .copyWith(color: Colors.white)),
        transform: Matrix4.rotationZ(.1),
      ),
//      body: Center(child: Text(mText),),
      floatingActionButton: FloatingActionButton(
        onPressed: updateText,
        tooltip: "Update Text",
        child: Icon(Icons.update),
      ),
    );
  }
}*/

/*class WordLIstApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
//    final wordPair = WordPair.random();

    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.red,
      ),
      home: RandomWords(),
//      home: Scaffold(
//        appBar: AppBar(
//          title: Text("Welcome to flutter"),
//        ),
//        body: Center(
//          child: RandomWords(),
////          child: Text(wordPair.asPascalCase),
//        ),
//      ),
//      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class RandomWords extends StatefulWidget {
  @override
  RandomWordsState createState() => RandomWordsState();
}

class RandomWordsState extends State<RandomWords> {
  final _suggestion = <WordPair>[];
  final _bigText = TextStyle(fontSize: 18);
  final Set<WordPair> _saved = Set<WordPair>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Name Generator"),
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.list), onPressed: _pushSaved
          ),
        ],
      ),
      body: _buildSuggestions(),
    );
  }

  void _pushSaved() {
    Navigator.of(context).push(
        MaterialPageRoute<void>(
          builder: (BuildContext context) {
            final Iterable<ListTile> tiles = _saved.map(
                (WordPair wordpair){
                  return ListTile(title: Text(wordpair.asPascalCase, style: _bigText,),);
                },
            );

            final List<Widget> divided = ListTile.divideTiles(context: context, tiles: tiles).toList();

            return Scaffold(
                appBar: AppBar(
                  title: Text("Saved Suggestion"),
                ),
                body: ListView(children: divided),
            );

          },
        ),
    );
  }

  Widget _buildSuggestions() {
    return ListView.builder(
        padding: const EdgeInsets.all(10),
        itemBuilder: (context, i) {
          if (i.isOdd) return Divider();

          final index = i ~/ 2;
          if (index >= _suggestion.length) {
            _suggestion.addAll(generateWordPairs().take(10));
          }
          return _buildRow(_suggestion[index]);
        });
  }

  Widget _buildRow(WordPair pair) {
    final bool alreadySaved = _saved.contains(pair);
    return ListTile(
      title: Text(pair.asPascalCase, style: _bigText),
      trailing: Icon(
        alreadySaved ? Icons.favorite : Icons.favorite_border,
        color: alreadySaved ? Colors.red : null,
      ),
      onTap: () {
        setState(() {
          if (alreadySaved) {
            _saved.remove(pair);
          } else {
            _saved.add(pair);
          }
        });
      },
    );
  }
}*/

/*class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have clicked the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.display1,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}*/

//class MyApp extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return MyHomePage(title: "Hello World demo app");
//  }
//}
//class MyHomePage extends StatelessWidget {
//  MyHomePage({Key key, this.title}) : super(key: key);
//
//  final String title;
//
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//        appBar: AppBar(
//          title: Text("Demo"),
//        ),
//        body: Center(child: Text( 'Hello World', )),
////      body: Center(
////            child: Container(
////                decoration: BoxDecoration(color: Colors.red,),
////                margin: EdgeInsets.all(20),
////                padding: EdgeInsets.all(25), child: Center(
////              child:Text(
////                'Hello World', style: TextStyle(
////                color: Colors.white, letterSpacing: 0.5, fontSize: 20,
////              ),
////                textDirection: TextDirection.rtl,
////              ),
////            )
////            ),
////        ),
//    );
//
//  }
//}

//class CustomeListApp extends StatelessWidget {
//  // This widget is the root of your application.
//  @override
//  Widget build(BuildContext context) {
//    return MaterialApp(
//      title: 'Flutter Demo',
//      theme: ThemeData(
//        primarySwatch: Colors.blue,
//      ),
//      home: MyHomePage(title: 'Product layout demo home page'),
//    );
//  }
//}
//
//class MyHomePage extends StatelessWidget {
//  MyHomePage({Key key, this.title}) : super(key: key);
//  final String title;
//
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//      appBar: AppBar(
//        title: Text(this.title),
//      ),
////      body: Center(child: Text( 'Hello World', )),
//      body: ListView(
//        shrinkWrap: true,
//        padding: EdgeInsets.fromLTRB(2, 10, 2, 2),
//        children: <Widget>[
//          ProductBox(name: "Jit",description: "Jiten", price: 100, image: "logo.png",),
//          ProductBox(name: "ram",description: "Ramen", price: 50, image: "logo.png",),
//          ProductBox(name: "Kes",description: "Kesav", price: 10, image: "logo.png",),
//          ProductBox(name: "Lil",description: "Lalit", price: 80, image: "logo.png",),
//          ProductBox(name: "Raj",description: "Rajesh", price: 90, image: "logo.png",),
//          ProductBox(name: "Jit",description: "Jiten", price: 100, image: "logo.png",),
//          ProductBox(name: "ram",description: "Ramen", price: 50, image: "logo.png",),
//          ProductBox(name: "Kes",description: "Kesav", price: 10, image: "logo.png",),
//          ProductBox(name: "Lil",description: "Lalit", price: 80, image: "logo.png",),
//          ProductBox(name: "Raj",description: "Rajesh", price: 90, image: "logo.png",),
//        ],
//      ),
//    );
//  }
//}
//
//class ProductBox extends StatelessWidget {
//  ProductBox({Key key, this.name, this.description, this.price, this.image})
//      : super(key: key);
//
//  final String name;
//  final String description;
//  final int price;
//  final String image;
//
//  @override
//  Widget build(BuildContext context) {
//    return Container(
//      padding: EdgeInsets.all(2),
//      height: 120,
//      child: Card(
//        color: Colors.black12,
//        child: Row(
//          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//          children: <Widget>[
//            Image.asset("assets/logo.png"),
//            Expanded(
//              child: Container(
//                padding: EdgeInsets.all(2),
//                child: Column(
//                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                  children: <Widget>[
//                    Text(
//                      this.name,
//                      style: TextStyle(
//                          color: Colors.black,
//                          fontSize: 15,
//                          fontWeight: FontWeight.bold),
//                    ),
//                    Text(
//                      this.description,
//                      style: TextStyle(
//                          color: Colors.black,
//                          fontSize: 10,
//                          fontWeight: FontWeight.normal),
//                    ),
//                    Text(
//                      "Price: " + this.price.toString(),
//                      style: TextStyle(
//                          color: Colors.deepPurple,
//                          fontSize: 12,
//                          fontWeight: FontWeight.bold),
//                    ),
//                  ],
//                ),
//              ),
//            ),
//          ],
//        ),
//      ),
//    );
//  }
//}

//class DialogApp extends StatelessWidget {
//  // This widget is the root of your application.
//  @override
//  Widget build(BuildContext context) {
//    return MaterialApp(
//      title: 'Flutter Demo',
//      theme: ThemeData(
//        primarySwatch: Colors.blue,
//      ),
//      home: MyHomePage(title: 'Product layout demo home page'),
//    );
//  }
//}
//
//class MyHomePage extends StatelessWidget {
//  MyHomePage({Key key, this.title}) : super(key: key);
//
//  final String title;
//
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//      appBar: AppBar(
//        title: Text(this.title),
//      ),
//      body: Center(
//        child: GestureDetector(
//          onTap: () {
//            showDialog(context: context, builder: (BuildContext context) {
//              return AlertDialog(
//                title: Text("Hello World"),
//                content: Text("This is dialog"),
//                actions: <Widget>[
//                  FlatButton(
//                    onPressed: (){
//                      Navigator.of(context).pop();
//                    },
//                    child: Text("Close"),
//                  ),
//                ],
//              );
//            });
//          },
//          child: Text("Hello World"),
//        ),
//      ),
//    );
//  }
//}

//class MyApp extends StatefulWidget {
//  _MyAppState createState() => _MyAppState();
//}
//class _MyAppState extends State<MyApp> with SingleTickerProviderStateMixin {
//  Animation<double> animation;
//  AnimationController controller;
//
//  @override
//  void initState() {
//    super.initState();
//    controller = AnimationController(
//        duration: const Duration(seconds: 10), vsync: this);
//    animation = Tween<double>(begin: 0.0, end: 1.0).animate(controller);
//    controller.forward();
//  }
//  // This widget is the root of your application.
//  @override
//  Widget build(BuildContext context) {
//    controller.forward();
//    return MaterialApp(
//        title: 'Flutter Demo', theme: ThemeData(primarySwatch: Colors.blue,),
//        home: MyHomePage(title: 'Product layout demo home page', animation: animation,)
//    );
//  }
//  @override
//  void dispose() {
//    controller.dispose();
//    super.dispose();
//  }
//}

//class AnimationApp extends StatefulWidget {
//  @override
//  _MyAppState createState() => _MyAppState();
//}
//
//class _MyAppState extends State<AnimationApp> with SingleTickerProviderStateMixin {
//  Animation<double> animation;
//  AnimationController controller;
//
//  @override
//  void initState() {
//    controller = AnimationController(
//      duration: const Duration(seconds: 10),
//      vsync: this,
//    );
//    animation = Tween<double>(begin: 0.0, end: 1.0).animate(controller);
//    controller.forward();
//  }
//
//  @override
//  Widget build(BuildContext context) {
//    controller.forward();
//
//    return MaterialApp(
//      title: "ANimation",
//      theme: ThemeData(
//        primarySwatch: Colors.blue
//      ),
//      home: MyHomePage(title: "ANimation", animation: animation,),
//    );
//  }
//
//  @override
//  void dispose() {
//    controller.dispose();
//    super.dispose();
//  }
//}
//
//class MyHomePage extends StatelessWidget {
//  MyHomePage({Key key, this.title, this.animation}) : super(key: key);
//  final String title;
//  final Animation<double> animation;
//
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//        appBar: AppBar(title: Text("Product Listing")),
//        body: ListView(
//          shrinkWrap: true,
//          padding: const EdgeInsets.fromLTRB(2.0, 10.0, 2.0, 10.0),
//          children: <Widget>[
//            FadeTransition(
//                child: ProductBox(
//                    name: "iPhone",
//                    description: "iPhone is the stylist phone ever",
//                    price: 1000,
//                    image: "iphone.png"),
//                opacity: animation),
//            MyAnimatedWidget(
//                child: ProductBox(
//                    name: "Pixel",
//                    description: "Pixel is the most featureful phone ever",
//                    price: 800,
//                    image: "pixel.png"),
//                animation: animation),
//            ProductBox(
//                name: "Laptop",
//                description: "Laptop is most productive development tool",
//                price: 2000,
//                image: "laptop.png"),
//            ProductBox(
//                name: "Tablet",
//                description:
//                    "Tablet is the most useful device ever for meeting",
//                price: 1500,
//                image: "tablet.png"),
//            ProductBox(
//                name: "Pendrive",
//                description: "Pendrive is useful storage medium",
//                price: 100,
//                image: "pendrive.png"),
//            ProductBox(
//                name: "Floppy Drive",
//                description: "Floppy drive is useful rescue storage medium",
//                price: 20,
//                image: "floppy.png"),
//          ],
//        ));
//  }
//}
//
//class ProductBox extends StatelessWidget {
//  ProductBox({Key key, this.name, this.description, this.price, this.image})
//      : super(key: key);
//  final String name;
//  final String description;
//  final int price;
//  final String image;
//
//  Widget build(BuildContext context) {
//    return Container(
//        padding: EdgeInsets.all(2),
//        height: 140,
//        child: Card(
//            child: Row(
//                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                children: <Widget>[
//              Image.asset("assets/appimages/" + image),
//              Expanded(
//                  child: Container(
//                      padding: EdgeInsets.all(5),
//                      child: Column(
//                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                        children: <Widget>[
//                          Text(this.name,
//                              style: TextStyle(fontWeight: FontWeight.bold)),
//                          Text(this.description),
//                          Text("Price: " + this.price.toString()),
//                        ],
//                      )))
//            ])));
//  }
//}
//
//class MyAnimatedWidget extends StatelessWidget{
//  MyAnimatedWidget({this.child, this.animation});
//
//  Widget child;
//  Animation<double> animation;
//
//  @override
//  Widget build(BuildContext context) {
//    return Center(
//      child: AnimatedBuilder(
//        animation: animation,
//        builder: (context, child) => Container(
//          child: Opacity(opacity: animation.value, child: child,),
//        ),
//        child: child,
//      ),
//    );
//  }
//
//
//
//}

//class MyAnimatedWidget extends StatelessWidget {
//  MyAnimatedWidget({this.child, this.animation});
//
//  final Widget child;
//  final Animation<double> animation;
//
//  Widget build(BuildContext context) => Center(
//        child: AnimatedBuilder(
//            animation: animation,
//            builder: (context, child) => Container(
//                  child: Opacity(opacity: animation.value, child: child),
//                ),
//            child: child),
//      );
//}

//class DynamicListWithNavApp extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return MaterialApp(
//      title: "Dynamic List With Nav",
//      theme: ThemeData(primarySwatch: Colors.deepPurple),
//      home: DynamicListHomeApp(title: 'Dynamic Lists'),
//    );
//  }
//}
//
//class DynamicListHomeApp extends StatelessWidget {
//  DynamicListHomeApp({Key key, this.title}) : super(key: key);
//
//  final String title;
//  final items = Product.getProdcutList();
//
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//      appBar: AppBar(
//        title: Text(this.title),
//      ),
//      body: ListView.builder(
//        itemCount: this.items.length,
//        itemBuilder: (context, index) {
//          return GestureDetector(
//            child: ProductBox(
//              item: this.items[index],
//            ),
//            onTap: () {
//              Navigator.push(
//                  context,
//                  MaterialPageRoute(
//                      builder: (context) => ProductDetailsPage(
//                            items: this.items[index],
//                          )));
//            },
//          );
//        },
//      ),
//    );
//  }
//}
//
//class ProductBox extends StatelessWidget {
//  ProductBox({Key key, this.item}) : super(key: key);
//
//  Product item;
//
//  @override
//  Widget build(BuildContext context) {
//    return Container(
//      margin: EdgeInsets.all(1),
//      child: Card(
//        color: Colors.white,
//        child: Row(
//          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//          children: <Widget>[
//            Image.asset("assets/" + this.item.image),
//            Expanded(
//              child: Column(
//                mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                children: <Widget>[
//                  Text(this.item.name,
//                      style: TextStyle(
//                        fontSize: 20,
//                        fontWeight: FontWeight.bold,
//                        color: Colors.black,
//                      )),
//                  Text(this.item.description,
//                      style: TextStyle(
//                          fontSize: 10,
//                          fontWeight: FontWeight.normal,
//                          color: Colors.grey)),
//                  Text(this.item.price.toString(),
//                      style: TextStyle(
//                          fontSize: 15,
//                          fontWeight: FontWeight.bold,
//                          color: Colors.deepPurple)),
//                  RatingBar()
//
//                ],
//              ),
//            ),
//          ],
//        ),
//      ),
//    );
//  }
//}
//
//class ProductDetailsPage extends StatelessWidget {
//  ProductDetailsPage({Key key, this.items}) : super(key: key);
//
//  Product items;
//
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//      appBar: AppBar(
//        title: Text("Product Details Page"),
//      ),
//      body: Center(
//        child: Container(
//          width: MediaQuery.of(context).size.width,
//          padding: EdgeInsets.all(0),
//          color: Colors.black12,
//          child: Column(
//            mainAxisAlignment: MainAxisAlignment.start,
//            crossAxisAlignment: CrossAxisAlignment.start,
//            children: <Widget>[
//              FittedBox(
//                child: Image.asset("assets/" + this.items.image),
//                fit: BoxFit.fitWidth,
//              ),
//              Expanded(
//                child: Column(
//                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                  children: <Widget>[
//                    Text(
//                      this.items.name,
//                      style: TextStyle(
//                          fontSize: 30,
//                          fontWeight: FontWeight.bold,
//                          color: Colors.deepPurple),
//                    ),
//                    Text(
//                      this.items.description,
//                      style: TextStyle(
//                          fontSize: 15,
//                          fontWeight: FontWeight.normal,
//                          color: Colors.grey),
//                    ),
//                    Text(
//                      this.items.price.toString(),
//                      style: TextStyle(
//                          fontSize: 20,
//                          fontWeight: FontWeight.normal,
//                          color: Colors.purple),
//                    ),
//                    RatingBar()
//                  ],
//                ),
//              ),
//            ],
//          ),
//        ),
//      ),
//    );
//  }
//}
//
//class RatingBar extends StatefulWidget {
//  @override
//  State<StatefulWidget> createState() {
//    // TODO: implement createState
//    return RatingState();
//  }
//}
//
//class RatingState extends State<RatingBar> {
//  int ratting = 0;
//
//  void setRatingOne() {
//    setState(() {
//      ratting = 1;
//    });
//  }
//
//  void setRatingTwo() {
//    setState(() {
//      ratting = 2;
//    });
//  }
//
//  void setRatingThree() {
//    setState(() {
//      ratting = 3;
//    });
//  }
//
//  @override
//  Widget build(BuildContext context) {
//
//    double size = 20;
//
//    return Row(
//      mainAxisAlignment: MainAxisAlignment.center,
//      mainAxisSize: MainAxisSize.max,
//      children: <Widget>[
//        Container(
//          padding: EdgeInsets.all(0),
//          child: IconButton(
//            icon: (ratting >=1 ? Icon(Icons.star, size: size,) : Icon(Icons.star_border, size: size,)),
//            iconSize: size,
//            color: Colors.amber,
//            onPressed: setRatingOne,
//          ),
//
//        ),
//        Container(
//          padding: EdgeInsets.all(0),
//          child: IconButton(
//            icon: (ratting >=2 ? Icon(Icons.star, size: size,) : Icon(Icons.star_border, size: size,)),
//            iconSize: size,
//            color: Colors.amber,
//            onPressed: setRatingTwo,
//          ),
//
//        ),
//        Container(
//          padding: EdgeInsets.all(0),
//          child: IconButton(
//            icon: (ratting >=3 ? Icon(Icons.star, size: size,) : Icon(Icons.star_border, size: size,)),
//            iconSize: size,
//            color: Colors.amber,
//            onPressed: setRatingThree,
//          ),
//
//        ),
//      ],
//    );
//  }
//}
//
//class Product {
//  String name, description, image;
//  int price;
//
//  Product(this.name, this.description, this.price, this.image);
//
//  static List<Product> getProdcutList() {
//    List<Product> items = <Product>[];
//
//    items.add(Product("Bhavesh", "Bhavesh is ios developer", 50, "iphone.png"));
//    items.add(Product("Jiten", "Jiten is tablet developer", 100, "tablet.png"));
//    items.add(
//        Product("Jitendra", "Jitendra is ios developer", 50, "laptop.png"));
//    items.add(
//        Product("Kiran", "Kiran is pendrive developer", 50, "pendrive.png"));
//    items.add(Product("Rajesh", "Rajesh is ui developer", 50, "pixel.png"));
//    items.add(Product("Minesh", "Minesh have disk", 50, "floppydisk.png"));
//
//    return items;
//  }
//}

//class OpenBrowerApp extends StatelessWidget{
//  @override
//  Widget build(BuildContext context) {
//    return MaterialApp(
//      title: "Channel",
//      theme: ThemeData(
//        primarySwatch: Colors.red
//      ),
//      home: MyHomePage(title: "Channel Call"),
//    );
//  }
//}
//
//class MyHomePage extends StatelessWidget{
//  MyHomePage({Key key, this.title}):super(key:key);
//
//  final String title;
//  static const CHANNEL = const MethodChannel("flutter/demo/browser");
//
//  Future<Void> _openBrowser() async{
//    try{
//
//      final int result = await CHANNEL.invokeMethod("openBrowser", <String, String>{
//        'url':'http://www.tribitinfotech.in'
//      });
//
//    }
//    on PlatformException catch (e){
//      // Unable to open in browser
//      print(e);
//    }
//  }
//
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//      appBar: AppBar(
//        title: Text(this.title),
//      ),
//      body: Center(
//        child: RaisedButton(
//          child: Text("OPEN BROWSER"),
//          onPressed: _openBrowser,
//        ),
//      ),
//    );
//  }
//
//}

//class MyApp extends StatelessWidget{
//  @override
//  Widget build(BuildContext context) {
//    return MaterialApp(
//      title: "Channel",
//      theme: ThemeData(
//          primarySwatch: Colors.red
//      ),
//      home: MyHomePage(title: "Channel Call"),
//    );
//  }
//}
//
//class MyHomePage extends StatelessWidget{
//  MyHomePage({Key key, this.title}):super(key:key);
//
//  final String title;
//
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//      appBar: AppBar(
//        title: Text(this.title),
//      ),
//      body: Center(
//        child: RaisedButton(
//          child: Text("OPEN BROWSER"),
//          onPressed: () => MyBrowserPlugin().openBrowser("https://flutter.dev"),
//        ),
//      ),
//    );
//  }
//
//}

//Future<List<ProductHttp>> fetchProductList() async {
//  final response = await http.get("http://192.168.0.103:8000/products.json");
//  if (response.statusCode == 200) {
//    final parsed = json.decode(response.body).cast<Map<String, dynamic>>();
//    return parsed
//        .map<ProductHttp>((json) => ProductHttp.fromMap(json))
//        .toList();
//  } else {
//    throw Exception("Unable to parse api resonse");
//  }
//}
//
//class DynamicListWithHttpApp extends StatelessWidget {
//  final Future<List<ProductHttp>> products;
//
////
//  DynamicListWithHttpApp({Key key, this.products}) : super(key: key);
//
//  @override
//  Widget build(BuildContext context) {
//    return MaterialApp(
//      title: "Dynamic List With Nav",
//      theme: ThemeData(primarySwatch: Colors.deepPurple),
//      home: DynamicListHomeApp(
//        title: 'Dynamic Lists',
//        items: products,
//      ),
//    );
//  }
//}
//
//class DynamicListHomeApp extends StatelessWidget {
//  DynamicListHomeApp({Key key, this.title, this.items}) : super(key: key);
//
//  final String title;
//  final Future<List<ProductHttp>> items;
//
////  final items = Product.getProdcutList();
//
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//      appBar: AppBar(
//        title: Text(this.title),
//      ),
//      body: Container(
//        child: Center(
//          child: FutureBuilder<List<ProductHttp>>(
//            future: items,
//            builder: (context, snapshot) {
//              if (snapshot.hasError) print(snapshot.error);
//              return snapshot.hasData
//                  ? ProductBoxList(
//                      items: snapshot.data,
//                    )
//                  : Center(
//                      child: CircularProgressIndicator(),
//                    );
//            },
//          ),
//        ),
//      ),
////
//    );
//  }
//}
//
//class ProductBoxList extends StatelessWidget {
//  List<ProductHttp> items;
//
//  ProductBoxList({Key key, this.items}) : super(key: key);
//
//  @override
//  Widget build(BuildContext context) {
//    return ListView.builder(
//      itemCount: this.items.length,
//      itemBuilder: (context, index) {
//        return GestureDetector(
//          child: ProductBox(
//            item: this.items[index],
//          ),
//          onTap: () {
//            Navigator.push(
//                context,
//                MaterialPageRoute(
//                    builder: (context) => ProductDetailsPage(
//                          items: this.items[index],
//                        )));
//          },
//        );
//      },
//    );
//  }
//}
//
//class ProductBox extends StatelessWidget {
//  ProductBox({Key key, this.item}) : super(key: key);
//
//  ProductHttp item;
//
//  @override
//  Widget build(BuildContext context) {
//    return Container(
//      margin: EdgeInsets.all(1),
//      child: Card(
//        color: Colors.white,
//        child: Row(
//          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//          children: <Widget>[
//            Image.asset("assets/" + this.item.image),
//            Expanded(
//              child: Column(
//                mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                children: <Widget>[
//                  Text(this.item.name,
//                      style: TextStyle(
//                        fontSize: 20,
//                        fontWeight: FontWeight.bold,
//                        color: Colors.black,
//                      )),
//                  Text(this.item.description,
//                      style: TextStyle(
//                          fontSize: 10,
//                          fontWeight: FontWeight.normal,
//                          color: Colors.grey)),
//                  Text(this.item.price.toString(),
//                      style: TextStyle(
//                          fontSize: 15,
//                          fontWeight: FontWeight.bold,
//                          color: Colors.deepPurple)),
//                  RatingBar()
//                ],
//              ),
//            ),
//          ],
//        ),
//      ),
//    );
//  }
//}
//
//class ProductDetailsPage extends StatelessWidget {
//  ProductDetailsPage({Key key, this.items}) : super(key: key);
//
//  ProductHttp items;
//
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//      appBar: AppBar(
//        title: Text("Product Details Page"),
//      ),
//      body: Center(
//        child: Container(
//          width: MediaQuery.of(context).size.width,
//          padding: EdgeInsets.all(0),
//          color: Colors.black12,
//          child: Column(
//            mainAxisAlignment: MainAxisAlignment.start,
//            crossAxisAlignment: CrossAxisAlignment.start,
//            children: <Widget>[
//              FittedBox(
//                child: Image.asset("assets/" + this.items.image),
//                fit: BoxFit.fitWidth,
//              ),
//              Expanded(
//                child: Column(
//                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                  children: <Widget>[
//                    Text(
//                      this.items.name,
//                      style: TextStyle(
//                          fontSize: 30,
//                          fontWeight: FontWeight.bold,
//                          color: Colors.deepPurple),
//                    ),
//                    Text(
//                      this.items.description,
//                      style: TextStyle(
//                          fontSize: 15,
//                          fontWeight: FontWeight.normal,
//                          color: Colors.grey),
//                    ),
//                    Text(
//                      this.items.price.toString(),
//                      style: TextStyle(
//                          fontSize: 20,
//                          fontWeight: FontWeight.normal,
//                          color: Colors.purple),
//                    ),
//                    RatingBar()
//                  ],
//                ),
//              ),
//            ],
//          ),
//        ),
//      ),
//    );
//  }
//}
//
//class RatingBar extends StatefulWidget {
//  @override
//  State<StatefulWidget> createState() {
//    // TODO: implement createState
//    return RatingState();
//  }
//}
//
//class RatingState extends State<RatingBar> {
//  int ratting = 0;
//
//  void setRatingOne() {
//    setState(() {
//      ratting = 1;
//    });
//  }
//
//  void setRatingTwo() {
//    setState(() {
//      ratting = 2;
//    });
//  }
//
//  void setRatingThree() {
//    setState(() {
//      ratting = 3;
//    });
//  }
//
//  @override
//  Widget build(BuildContext context) {
//    double size = 20;
//
//    return Row(
//      mainAxisAlignment: MainAxisAlignment.center,
//      mainAxisSize: MainAxisSize.max,
//      children: <Widget>[
//        Container(
//          padding: EdgeInsets.all(0),
//          child: IconButton(
//            icon: (ratting >= 1
//                ? Icon(
//                    Icons.star,
//                    size: size,
//                  )
//                : Icon(
//                    Icons.star_border,
//                    size: size,
//                  )),
//            iconSize: size,
//            color: Colors.amber,
//            onPressed: setRatingOne,
//          ),
//        ),
//        Container(
//          padding: EdgeInsets.all(0),
//          child: IconButton(
//            icon: (ratting >= 2
//                ? Icon(
//                    Icons.star,
//                    size: size,
//                  )
//                : Icon(
//                    Icons.star_border,
//                    size: size,
//                  )),
//            iconSize: size,
//            color: Colors.amber,
//            onPressed: setRatingTwo,
//          ),
//        ),
//        Container(
//          padding: EdgeInsets.all(0),
//          child: IconButton(
//            icon: (ratting >= 3
//                ? Icon(
//                    Icons.star,
//                    size: size,
//                  )
//                : Icon(
//                    Icons.star_border,
//                    size: size,
//                  )),
//            iconSize: size,
//            color: Colors.amber,
//            onPressed: setRatingThree,
//          ),
//        ),
//      ],
//    );
//  }
//}

//class DynamicListWithSQLApp extends StatelessWidget {
//  final Future<List<ProductSQL>> products;
//
////
//  DynamicListWithSQLApp({Key key, this.products}) : super(key: key);
//
//  @override
//  Widget build(BuildContext context) {
//    return MaterialApp(
//      title: "Dynamic List With Nav",
//      theme: ThemeData(primarySwatch: Colors.deepPurple),
//      home: DynamicListHomeApp(
//        title: 'Dynamic List',
//        items: products,
//      ),
//    );
//  }
//}
//
//class DynamicListHomeApp extends StatelessWidget {
//  DynamicListHomeApp({Key key, this.title, this.items}) : super(key: key);
//
//  final String title;
//  final Future<List<ProductSQL>> items;
//
////  final items = SQLiteDbProvider.getProdcutList();
//
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//      appBar: AppBar(
//        title: Text(this.title),
//      ),
//      body: Container(
//        child: Center(
//          child: FutureBuilder<List<ProductSQL>>(
//            future: items,
//            builder: (context, snapshot) {
//              if (snapshot.hasError) print(snapshot.error);
//              return snapshot.hasData
//                  ? ProductBoxList(
//                items: snapshot.data,
//              )
//                  : Center(
//                child: CircularProgressIndicator(),
//              );
//            },
//          ),
//        ),
//      ),
////
//    );
//  }
//}
//
//class ProductBoxList extends StatelessWidget {
//  List<ProductSQL> items;
//
//  ProductBoxList({Key key, this.items}) : super(key: key);
//
//  @override
//  Widget build(BuildContext context) {
//    return ListView.builder(
//      itemCount: this.items.length,
//      itemBuilder: (context, index) {
//        return GestureDetector(
//          child: ProductBox(
//            item: this.items[index],
//          ),
//          onTap: () {
//            Navigator.push(
//                context,
//                MaterialPageRoute(
//                    builder: (context) => ProductDetailsPage(
//                      items: this.items[index],
//                    )));
//          },
//        );
//      },
//    );
//  }
//}
//
//class ProductBox extends StatelessWidget {
//  ProductBox({Key key, this.item}) : super(key: key);
//
//  ProductSQL item;
//
//  @override
//  Widget build(BuildContext context) {
//    return Container(
//      margin: EdgeInsets.all(1),
//      child: Card(
//        color: Colors.white,
//        child: Row(
//          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//          children: <Widget>[
//            Image.asset("assets/" + this.item.image),
//            Expanded(
//              child: Column(
//                mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                children: <Widget>[
//                  Text(this.item.name,
//                      style: TextStyle(
//                        fontSize: 20,
//                        fontWeight: FontWeight.bold,
//                        color: Colors.black,
//                      )),
//                  Text(this.item.description,
//                      style: TextStyle(
//                          fontSize: 10,
//                          fontWeight: FontWeight.normal,
//                          color: Colors.grey)),
//                  Text(this.item.price.toString(),
//                      style: TextStyle(
//                          fontSize: 15,
//                          fontWeight: FontWeight.bold,
//                          color: Colors.deepPurple)),
//                  RatingBar()
//                ],
//              ),
//            ),
//          ],
//        ),
//      ),
//    );
//  }
//}
//
//class ProductDetailsPage extends StatelessWidget {
//  ProductDetailsPage({Key key, this.items}) : super(key: key);
//
//  ProductSQL items;
//
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//      appBar: AppBar(
//        title: Text("Product Details Page"),
//      ),
//      body: Center(
//        child: Container(
//          width: MediaQuery.of(context).size.width,
//          padding: EdgeInsets.all(0),
//          color: Colors.black12,
//          child: Column(
//            mainAxisAlignment: MainAxisAlignment.start,
//            crossAxisAlignment: CrossAxisAlignment.start,
//            children: <Widget>[
//              FittedBox(
//                child: Image.asset("assets/" + this.items.image),
//                fit: BoxFit.fitWidth,
//              ),
//              Expanded(
//                child: Column(
//                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                  children: <Widget>[
//                    Text(
//                      this.items.name,
//                      style: TextStyle(
//                          fontSize: 30,
//                          fontWeight: FontWeight.bold,
//                          color: Colors.deepPurple),
//                    ),
//                    Text(
//                      this.items.description,
//                      style: TextStyle(
//                          fontSize: 15,
//                          fontWeight: FontWeight.normal,
//                          color: Colors.grey),
//                    ),
//                    Text(
//                      this.items.price.toString(),
//                      style: TextStyle(
//                          fontSize: 20,
//                          fontWeight: FontWeight.normal,
//                          color: Colors.purple),
//                    ),
//                    RatingBar()
//                  ],
//                ),
//              ),
//            ],
//          ),
//        ),
//      ),
//    );
//  }
//}
//
//class RatingBar extends StatefulWidget {
//  @override
//  State<StatefulWidget> createState() {
//    // TODO: implement createState
//    return RatingState();
//  }
//}
//
//class RatingState extends State<RatingBar> {
//  int ratting = 0;
//
//  void setRatingOne() {
//    setState(() {
//      ratting = 1;
//    });
//  }
//
//  void setRatingTwo() {
//    setState(() {
//      ratting = 2;
//    });
//  }
//
//  void setRatingThree() {
//    setState(() {
//      ratting = 3;
//    });
//  }
//
//  @override
//  Widget build(BuildContext context) {
//    double size = 20;
//
//    return Row(
//      mainAxisAlignment: MainAxisAlignment.center,
//      mainAxisSize: MainAxisSize.max,
//      children: <Widget>[
//        Container(
//          padding: EdgeInsets.all(0),
//          child: IconButton(
//            icon: (ratting >= 1
//                ? Icon(
//              Icons.star,
//              size: size,
//            )
//                : Icon(
//              Icons.star_border,
//              size: size,
//            )),
//            iconSize: size,
//            color: Colors.amber,
//            onPressed: setRatingOne,
//          ),
//        ),
//        Container(
//          padding: EdgeInsets.all(0),
//          child: IconButton(
//            icon: (ratting >= 2
//                ? Icon(
//              Icons.star,
//              size: size,
//            )
//                : Icon(
//              Icons.star_border,
//              size: size,
//            )),
//            iconSize: size,
//            color: Colors.amber,
//            onPressed: setRatingTwo,
//          ),
//        ),
//        Container(
//          padding: EdgeInsets.all(0),
//          child: IconButton(
//            icon: (ratting >= 3
//                ? Icon(
//              Icons.star,
//              size: size,
//            )
//                : Icon(
//              Icons.star_border,
//              size: size,
//            )),
//            iconSize: size,
//            color: Colors.amber,
//            onPressed: setRatingThree,
//          ),
//        ),
//      ],
//    );
//  }
//}

// class WrapDemoApp extends StatelessWidget{
//
//  @override
//  Widget build(BuildContext context) {
//    return MaterialApp(
//      title: "Wrap Demo",
//      theme: ThemeData(
//        primarySwatch:  Colors.blue
//      ),
//      home: WrapHomePage(),
//    );
//  }
//
// }
//
// class WrapHomePage extends StatefulWidget{
//  @override
//  State<StatefulWidget> createState() {
//    return WrapState();
//  }
//
// }
//
// class WrapState extends State<WrapHomePage>{
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//      appBar: AppBar(
//        title: Text("Wrap Demo")
//      ),
//      body: Wrap(
//        alignment: WrapAlignment.spaceBetween,
//        direction: Axis.horizontal,
//        spacing: 10,
//        runSpacing: 10,
//        children: <Widget>[
//          Chip(
//            avatar: CircleAvatar(backgroundColor: Colors.blue.shade900, child: Text('AH')),
//            label: Text('Hamilton'),
//          ),
//          Chip(
//            avatar: CircleAvatar(backgroundColor: Colors.blue.shade900, child: Text('AH')),
//            label: Text('Hamilton'),
//          ),
//          Chip(
//            avatar: CircleAvatar(backgroundColor: Colors.blue.shade900, child: Text('AH')),
//            label: Text('Hamilton'),
//          ),
//          Chip(
//            avatar: CircleAvatar(backgroundColor: Colors.blue.shade900, child: Text('AH')),
//            label: Text('H'),
//          ),
//          Chip(
//            avatar: CircleAvatar(backgroundColor: Colors.blue.shade900, child: Text('AH')),
//            label: Text('Hamilton'),
//          ),
//          Chip(
//            avatar: CircleAvatar(backgroundColor: Colors.blue.shade900, child: Text('AH')),
//            label: Text('Hamilton'),
//          ),
//          Chip(
//            avatar: CircleAvatar(backgroundColor: Colors.blue.shade900, child: Text('AH')),
//            label: Text('Hamilton'),
//          ),
//        ],
//      ),
//    );
//  }
//
// }

//class TableDemoApp extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return MaterialApp(
//      title: "Table Demo",
//      theme: ThemeData(primarySwatch: Colors.blue),
//      home: TableHomePage(),
//    );
//  }
//}
//
//class TableHomePage extends StatefulWidget {
//  @override
//  State<StatefulWidget> createState() {
//    return TableState();
//  }
//}
//
//class TableState extends State<TableHomePage> {
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//      appBar: AppBar(title: Text("Wrap Demo")),
//      body: Table(
////        columnWidths: {3: FractionColumnWidth(.2)},
//        defaultColumnWidth: FixedColumnWidth(150),
//        defaultVerticalAlignment: TableCellVerticalAlignment.middle,
//        border: TableBorder.all(),
//        children: [
//          TableRow(
//            children: [
//              Padding(
//                padding: EdgeInsets.all(8.0),
//                child: RaisedButton(
//                  child: Text("Button"),
//                ),
//              ),
//              Padding(
//                padding: EdgeInsets.all(8.0),
//                child: RaisedButton(
//                  child: Text("Button"),
//                ),
//              ),
//              Padding(
//                padding: EdgeInsets.all(8.0),
//                child: RaisedButton(
//                  child: Text("Button"),
//                ),
//              ),
//              Padding(
//                padding: EdgeInsets.all(8.0),
//                child: RaisedButton(
//                  child: Text("Button"),
//                ),
//              ),
//              Padding(
//                padding: EdgeInsets.all(8.0),
//                child: RaisedButton(
//                  child: Text("Button"),
//                ),
//              ),
//              Padding(
//                padding: EdgeInsets.all(8.0),
//                child: RaisedButton(
//                  child: Text("Button"),
//                ),
//              ),
//              Padding(
//                padding: EdgeInsets.all(8.0),
//                child: RaisedButton(
//                  child: Text("Button"),
//                ),
//              ),
//              Padding(
//                padding: EdgeInsets.all(8.0),
//                child: RaisedButton(
//                  child: Text("Button"),
//                ),
//              ),
//              Padding(
//                padding: EdgeInsets.all(8.0),
//                child: RaisedButton(
//                  child: Text("Button"),
//                ),
//              ),
//            ],
//          ),
//          TableRow(
//            children: [
//              Padding(
//                padding: EdgeInsets.all(8.0),
//                child: RaisedButton(
//                  child: Text("Button"),
//                ),
//              ),
//              Padding(
//                padding: EdgeInsets.all(8.0),
//                child: RaisedButton(
//                  child: Text("Button"),
//                ),
//              ),
//              Padding(
//                padding: EdgeInsets.all(8.0),
//                child: RaisedButton(
//                  child: Text("Button"),
//                ),
//              ),
//              Padding(
//                padding: EdgeInsets.all(8.0),
//                child: RaisedButton(
//                  child: Text("Button"),
//                ),
//              ),
//              Padding(
//                padding: EdgeInsets.all(8.0),
//                child: RaisedButton(
//                  child: Text("Button"),
//                ),
//              ),
//              Padding(
//                padding: EdgeInsets.all(8.0),
//                child: RaisedButton(
//                  child: Text("Button"),
//                ),
//              ),
//              Padding(
//                padding: EdgeInsets.all(8.0),
//                child: RaisedButton(
//                  child: Text("Button"),
//                ),
//              ),
//              Padding(
//                padding: EdgeInsets.all(8.0),
//                child: RaisedButton(
//                  child: Text("Button"),
//                ),
//              ),
//              Padding(
//                padding: EdgeInsets.all(8.0),
//                child: RaisedButton(
//                  child: Text("Button"),
//                ),
//              ),
//            ],
//          )
//        ],
//      ),
//    );
//  }
//}
