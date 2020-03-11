import 'package:flare_flutter/flare_controller.dart';
import 'package:flare_flutter/flare.dart';
import 'package:flare_flutter/flare_actor.dart';
import 'package:flare_dart/math/mat2d.dart';
import 'package:flutter/material.dart';
import 'dart:math' as Math;
import 'dart:io';
import 'LessonAppBar.dart';
import 'LessonAppBar.dart';


void main() => runApp(RestartWidget(
  child: Sample2(),
));

class RestartWidget extends StatefulWidget {
  RestartWidget({this.child});

  final Widget child;

  static void restartApp(BuildContext context) {
    context.findAncestorStateOfType<_RestartWidgetState>().restartApp();
  }

  @override
  _RestartWidgetState createState() => _RestartWidgetState();
}

class _RestartWidgetState extends State<RestartWidget> {
  Key key = UniqueKey();

  void restartApp() {
    setState(() {
      key = UniqueKey();
    });
  }

  @override
  Widget build(BuildContext context) {
    return KeyedSubtree(
      key: key,
      child: widget.child,
    );
  }
}

class Sample2 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
      floatingActionButton: Container(
          padding: EdgeInsets.only(left: 16.0),
          height: 50,
          child: Stack(
            children: [
              Align(
                alignment: Alignment.bottomLeft,
                child: RaisedButton(
                  color: Colors.orange,
                  onPressed: () {RestartWidget.restartApp(context);},
                  child: const Text(
                      'Retry',
                      style: TextStyle(fontSize: 20)
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: RaisedButton(
                  color: Colors.orange,
                  onPressed: () {},
                  child: const Text(
                      'Next',
                      style: TextStyle(fontSize: 20)
                  ),
                ),
              ),
            ],
          ),
      ),
      body: Material(
        child: CustomScrollView(
          slivers: [
            SliverPersistentHeader(
              delegate: MySliverAppBar(expandedHeight: 300, minExpandedHeight: 100),
              pinned: true,

            ),
            SliverList(
              delegate: SliverChildListDelegate([
                SizedBox(
                  height: 400.0,
                    child: Center(
                      child: Container(
                        height: 30,
                        width: 250,
                        child: Stack(
                          children: [
                            Align(
                              child: Text("Reviwed words", style: TextStyle(fontSize: 17),),
                              alignment: Alignment.topLeft,
                            ),
                            Align(
                              child: Text("7/7", style: TextStyle(fontSize: 17),),
                              alignment: Alignment.topRight,
                            ),
                            Align(
                              alignment: Alignment.bottomCenter,
                              child: Container(
                                color: Colors.green,
                                height: 5,
                              ),
                            ),
                          ],
                      ),
                    ),
                  ),
                ),
                Card(
                  child: Container(
                    padding: const EdgeInsets.all(16.0),
                    height: 60,
                    child: Stack(
                        children: [
                          Align(
                            child: Text("SomeText",
                              style: TextStyle(
                                fontSize: 22.0,
                              ),
                            ),
                            alignment: Alignment.centerLeft,
                          ),
                          Align(
//                                      child:  GestureDetector(
//                                        onTap: () {
//                                          SetState()
//                                        },
                            child:  Container(
                              width: 30,
                              height: 30,
                              child: new FlareActor(
                                "assets/animations/playstop.flr",
                                fit: BoxFit.cover,
                                alignment: Alignment.center,
                              ),
//                                        ),
                            ),
                          ),
                        ]
                    ),
                  ),
                ),
                Card(
                  child: Container(
                    padding: const EdgeInsets.all(16.0),
                    height: 60,
                    child: Stack(
                        children: [
                          Align(
                            child: Text("SomeText",
                              style: TextStyle(
                                fontSize: 22.0,
                              ),
                            ),
                            alignment: Alignment.centerLeft,
                          ),
                          Align(
//                                      child:  GestureDetector(
//                                        onTap: () {
//                                          SetState()
//                                        },
                            child:  Container(
                              width: 30,
                              height: 30,
                              child: new FlareActor(
                                "assets/animations/playstop.flr",
                                fit: BoxFit.cover,
                                alignment: Alignment.center,
                              ),
//                                        ),
                            ),
                          ),
                        ]
                    ),
                  ),
                ),
                Card(
                  child: Container(
                    padding: const EdgeInsets.all(16.0),
                    height: 60,
                    child: Stack(
                        children: [
                          Align(
                            child: Text("SomeText",
                              style: TextStyle(
                                fontSize: 22.0,
                              ),
                            ),
                            alignment: Alignment.centerLeft,
                          ),
                          Align(
//                                      child:  GestureDetector(
//                                        onTap: () {
//                                          SetState()
//                                        },
                            child:  Container(
                              width: 30,
                              height: 30,
                              child: new FlareActor(
                                "assets/animations/playstop.flr",
                                fit: BoxFit.cover,
                                alignment: Alignment.center,
                              ),
//                                        ),
                            ),
                          ),
                        ]
                    ),
                  ),
                ),
                Card(
                  child: Container(
                    padding: const EdgeInsets.all(16.0),
                    height: 60,
                    child: Stack(
                        children: [
                          Align(
                            child: Text("SomeText",
                              style: TextStyle(
                                fontSize: 22.0,
                              ),
                            ),
                            alignment: Alignment.centerLeft,
                          ),
                          Align(
//                                      child:  GestureDetector(
//                                        onTap: () {
//                                          SetState()
//                                        },
                            child:  Container(
                              width: 30,
                              height: 30,
                              child: new FlareActor(
                                "assets/animations/playstop.flr",
                                fit: BoxFit.cover,
                                alignment: Alignment.center,
                              ),
//                                        ),
                            ),
                          ),
                        ]
                    ),
                  ),
                ),
                SizedBox(
                  height: 50.0,
                ),
            ],
          ),
        ),]
        ),
        ),
      ),
    );
  }
}

class MySliverAppBar extends SliverPersistentHeaderDelegate {
  final double expandedHeight;
  final double minExpandedHeight;

  MySliverAppBar({@required this.expandedHeight, this.minExpandedHeight});

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Stack(
      fit: StackFit.expand,
      overflow: Overflow.visible,
      children: [
        Container(
          decoration: BoxDecoration(boxShadow: [
            BoxShadow(
              color: Colors.black,
              blurRadius: 20.0, // has the effect of softening the shadow
              spreadRadius: 2.0, // has the effect of extending the shadow
              offset: Offset(
                1.0, // horizontal, move right 10
                1.0, // vertical, move down 10
              ),
            )
          ],),
          child: new FlareActor(
            "assets/images/largeTriang.flr",
            fit: BoxFit.cover,
            alignment: Alignment.center,
          ),
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                width: 30,
                height: 90,
                margin: const EdgeInsets.only(left: 20.0, top: 10.0),
                child: FlareActor(
                  "assets/images/ranking.flr",
                  fit: BoxFit.contain,
                  alignment: Alignment.center,
                ),
            ),
            Expanded(
              child: Container(
                  height: 90,
                  width: 200,
                  child: Column(
                    children: <Widget>[
                      Container(
                          padding: const EdgeInsets.only(top: 20, bottom: 5.0),
                          child: Text(
                            "Say Hi, Say Gooodbay",
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.white
                            ),
                          )
                      ),
                      animatedTitle(),
                      Container(
                          padding: const EdgeInsets.only(top: 5),
                          child: Text(
                            "10 coins",
                            style: TextStyle(
                                fontSize: 17,
                                color: Colors.white
                            ),
                          )
                      ),
                    ],
                  )
              ),
            ),
            GestureDetector(
              onTap: () => exit(0),
              child: Container(
                height: 70,
                margin: const EdgeInsets.only(right: 20.0, top: 10.0),
                child: Icon(
                  Icons.clear,
                  color: Colors.white,
                  size: 30.0,
                  semanticLabel: 'Text to announce in accessibility modes',),
              ),
            ),

          ]
        ),
        Positioned(
          top: expandedHeight / 3 - shrinkOffset,
          left: 0,
          child: Opacity(
            opacity: (1 - shrinkOffset / expandedHeight * 2) < 0 ? 0 : (1 - shrinkOffset / expandedHeight * 2),
              child: SizedBox(
                height: 270,
                width: MediaQuery.of(context).size.width,
                child: Stack(
                  children: <Widget>[
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        height: 100,
                        width: 110,
                        child: BannerRefill(),
                      ),
                    ),
                    Container(
                      height: 270,
                      child: AvatarAnimated(),
                    ),
                    Center(
                      child: new CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 75,
                      ),
                    ),
                    Center(
                      child: Container(
                        height: 150,
                        child: AvatarProgress(),
                      ),
                    ),
                    Center(
                      child: new CircleAvatar(
                        backgroundColor: Colors.white,
                        backgroundImage: ExactAssetImage("assets/images/doggo.jpeg"),
                        radius: 60,
                      ),
                    ),
                    Positioned(
                      left: MediaQuery.of(context).size.width/2 - 30,
                      top: expandedHeight - 90,
                      child: AnimatedScoreText(),//Text("100/100", style: TextStyle(fontSize: 15, color: Colors.white)),
                    )

                  ],
                )
              ),
            ),
          ),
      ],
    );
  }

  @override
  double get maxExtent => expandedHeight;

  @override
  double get minExtent => minExpandedHeight;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) => true;
}

//class AnimatedPlay extends StatefulWidget {
//  AnimatedPlayState createState() => AnimatedPlayState();
//}

//class AnimatedPlayState extends State<AnimatedPlay> with SingleTickerProviderStateMixin {
//
//  double _rockAmount = 1;
//  double _speed = 0.5;
//  double _rockTime = 1;
//  bool _isPaused = false;
//
//  ActorAnimation _rock;
//
//  @override
//  void initialize(FlutterActorArtboard artboard) {
//    _rock = artboard.getAnimation("Animations");
//  }
//
//  @override
//  void setViewTransform(Mat2D viewTransform) {}
//
//  @override
//  bool advance(FlutterActorArtboard artboard, double elapsed) {
//    if (_rockTime >= _rock.duration)
//      return false;
//    _rockTime += elapsed * _speed;
//    _rock.apply(_rockTime % _rock.duration, artboard, _rockAmount);
//    return true;
//  }
//
//  Widget build(BuildContext context) {
//    return Container(
//        child: FlareActor("assets/animations/circles.flr",
//            alignment: Alignment.center,
//            isPaused: _isPaused,
//            fit: BoxFit.fitHeight,
//            animation: "Animations",
//            controller: this
//        )
//    );
//  }
//}

class AnimatedScoreText extends StatefulWidget {
  AnimatedScoreTextState createState() => AnimatedScoreTextState();
}

class AnimatedScoreTextState extends State<AnimatedScoreText> with SingleTickerProviderStateMixin {

  AnimationController _titleController;
  Animation<double> _animation;

  initState() {
    super.initState();
    _titleController = new AnimationController(vsync: this,
        duration: new Duration(seconds: 4));
    Tween tween = new Tween<double>(begin: 0, end: 100);
    _animation = tween.animate(_titleController);
    _titleController.addListener((){
      setState((){});
    });
    _titleController.forward();
  }

  @override
  dispose() {
    _titleController.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {

    return Container(
      child: Text(
          (_animation.value).round().toString() + "/100",
        style: TextStyle(color: Colors.white, fontSize: 18),
      ),
    );
  }
}

class animatedTitle extends StatefulWidget {
  animatedTitleState createState() => animatedTitleState();
}

class animatedTitleState extends State<animatedTitle> with SingleTickerProviderStateMixin {

  AnimationController _titleController;
  Animation<double> _lineScale;

  initState() {
    super.initState();
    _titleController = new AnimationController(vsync: this,
        duration: new Duration(seconds: 4));
    Tween tween = new Tween<double>(begin: 0, end: 200.0, );
    _lineScale = tween.animate(_titleController);
    _titleController.addListener((){
      setState((){});
    });
    _titleController.forward();
  }

  @override
  dispose() {
    _titleController.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {

    return Container(
            height: 2,
            width: _lineScale.value,
            color: Colors.white,
    );
  }
}

class AvatarAnimated extends StatefulWidget {

  @override
  _AvatarAnimatedState createState() => _AvatarAnimatedState();
}

class _AvatarAnimatedState extends State<AvatarAnimated> with FlareController {

  double _rockAmount = 1;
  double _speed = 0.5;
  double _rockTime = 1;
  bool _isPaused = false;

  ActorAnimation _rock;

  @override
  void initialize(FlutterActorArtboard artboard) {
    _rock = artboard.getAnimation("Animations");
  }

  @override
  void setViewTransform(Mat2D viewTransform) {}

  @override
  bool advance(FlutterActorArtboard artboard, double elapsed) {
    if (_rockTime >= _rock.duration)
      return false;
    _rockTime += elapsed * _speed;
    _rock.apply(_rockTime % _rock.duration, artboard, _rockAmount);
    return true;
  }

  @override
  Widget build(BuildContext context) {
    return new Container(
      child: new Stack(
        children: [
          Positioned.fill(
              child: FlareActor("assets/animations/circles.flr",
                  alignment: Alignment.center,
                  isPaused: _isPaused,
                  fit: BoxFit.fitHeight,
                  animation: "Animations",
                  controller: this
              )
          )
        ],
      ),
    );
  }
}

class AvatarProgress extends StatefulWidget {

  @override
  _AvatarProgressState createState() => _AvatarProgressState();
}

class _AvatarProgressState extends State<AvatarProgress> with FlareController {

  double _rockAmount = 1;
  double _speed = 0.3;
  double _rockTime = 0;
  bool _isPaused = false;

  ActorAnimation _rock;

  @override
  void initialize(FlutterActorArtboard artboard) {
    _rock = artboard.getAnimation("Animations");
  }

  @override
  void setViewTransform(Mat2D viewTransform) {}

  @override
  bool advance(FlutterActorArtboard artboard, double elapsed) {
    if (_rockTime >= _rock.duration) {
      _rock.apply(_rock.duration, artboard, _rockAmount);
      return false;
    }
    _rockTime += elapsed * _speed;

    _rock.apply(_rockTime % _rock.duration, artboard, _rockAmount);
    return true;
  }

  @override
  Widget build(BuildContext context) {
    return new Container(
      child: new Stack(
        children: [
          Positioned.fill(
              child: FlareActor("assets/animations/progress.flr",
                  alignment: Alignment.center,
                  isPaused: _isPaused,
                  fit: BoxFit.fitHeight,
                  animation: "Animations",
                  controller: this
              )
          ),
        ],
      ),
    );
  }
}

class BannerRefill extends StatefulWidget {

  @override
  _BannerRefillState createState() => _BannerRefillState();
}

List<Color> exampleColors = <Color>[Colors.red, Colors.green, Colors.blue];

class _BannerRefillState extends State<BannerRefill> with FlareController {

  FlutterColorFill _fill;

  void initialize(FlutterActorArtboard artboard) {
    // Find our "Num 2" shape and get its fill so we can change it programmatically.
    FlutterActorShape shape = artboard.getNode("bannerShape");
    _fill = shape?.fill as FlutterColorFill;
  }

  @override
  void setViewTransform(Mat2D viewTransform) {}

  @override
  bool advance(FlutterActorArtboard artboard, double elapsed) {
    // advance is called whenever the flare artboard is about to update (before it draws).
    Color nextColor = exampleColors[_counter % exampleColors.length];
    if (_fill != null) {
      _fill.uiColor = nextColor;
    }
    // Return false as we don't need to be called again. You'd return true if you wanted to manually animate some property.
    return false;
  }

  int _counter = 0;
  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
      // advance the controller
      isActive.value = true;
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
    return new GestureDetector(
      child: new FlareActor(
          "assets/images/banner.flr", // You can find the example project here: https://www.2dimensions.com/a/castor/files/flare/change-color-example
          fit: BoxFit.fill,
          alignment: Alignment.center,
          controller: this
      ),
      onTap: _incrementCounter,
    );
  }
}
