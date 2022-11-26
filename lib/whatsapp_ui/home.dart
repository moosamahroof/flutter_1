import 'package:flutter/material.dart';
import 'camera.dart';
import 'chat_view.dart';
import 'status_view.dart';
import 'calls_view.dart';

var floatindex = 1;

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    var page = [
      const Camera_view(),
      const Chat_view(),
      const Status_view(),
      const Calls_view(),
    ];
    var selectindex = 1;
    double Width = MediaQuery.of(context).size.width;
    double cameraWidth = Width / 24;
    double yourWidth = (Width - cameraWidth) / 5;
    yourWidth = 95;

    return Scaffold(
      body: DefaultTabController(
          initialIndex: selectindex,
          length: 4,
          child: _DefaultTabControllerListener(
            onTabSelected: (int ind) {
              setState(() {
                floatindex = ind;
              });
            },
            child: NestedScrollView(
                headerSliverBuilder:
                    (BuildContext context, bool innerBoxIsScrolled) {
                  return <Widget>[
                    SliverAppBar(
                      floating: true,
                      pinned: true,
                      backgroundColor: Colors.teal,
                      title: const Text('Whatsapp'),
                      actions: [
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.camera_alt_outlined)),
                        IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
                        PopupMenuButton(

                            // add icon, by default "3 dot" icon
                            // icon: Icon(Icons.book)
                            itemBuilder: (context) {
                          var mypop = DefaultTabController.of(context)!.index;
                          if (mypop == 0) {
                            return [
                              const PopupMenuItem<int>(
                                padding: EdgeInsets.only(left: 10, right: 50),
                                height: 30,
                                child: Text("Settings"),
                              ),
                            ];
                          } else if (mypop == 1) {
                            return [
                              const PopupMenuItem<int>(
                                child: Text("New group"),
                              ),
                              const PopupMenuItem<int>(
                                child: Text("New broadcast"),
                              ),
                              const PopupMenuItem<int>(
                                child: Text("Starred messages"),
                              ),
                              const PopupMenuItem<int>(
                                child: Text("Payments"),
                              ),
                              const PopupMenuItem<int>(
                                child: Text("Settings"),
                              ),
                            ];
                          } else if (mypop == 2) {
                            return [
                              const PopupMenuItem<int>(
                                child: Text("Status privacy"),
                              ),
                              const PopupMenuItem<int>(
                                child: Text("Settings"),
                              ),
                            ];
                          } else if (mypop == 3) {
                            return [
                              const PopupMenuItem<int>(
                                child: Text("Clear call log"),
                              ),
                              const PopupMenuItem<int>(
                                child: Text("Settings"),
                              ),
                            ];
                          }
                          return [];
                        }),
                      ],
                      bottom: TabBar(
                          labelPadding: EdgeInsets.symmetric(
                              horizontal:
                                  (Width - (cameraWidth + yourWidth * 3)) / 8),
                          isScrollable: true,
                          onTap: (int ind) {
                            setState(() {
                              floatindex = ind;
                            });
                          },
                          tabs: [
                            Container(
                              child: const Tab(
                                  icon: Icon(
                                Icons.groups,
                                size: 30,
                              )),
                              width: 25,
                            ),
                            Container(
                              child: const Tab(
                                text: "CHATS",
                              ),
                              width: yourWidth,
                            ),
                            Container(
                              child: const Tab(
                                text: "STATUS",
                              ),
                              width: yourWidth,
                            ),
                            Container(
                              child: const Tab(
                                text: "CALL",
                              ),
                              width: yourWidth,
                            ),
                          ]),
                    ),
                  ];
                },
                body: const TabBarView(
                  children: [
                    Camera_view(),
                    Chat_view(),
                    Status_view(),
                    Calls_view(),
                  ],
                )),
          )),
      floatingActionButton: myfloatAction(),
    );
  }
}

class myfloatAction extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    if (floatindex == 1) {
      return FloatingActionButton(onPressed: () {}, child: const Icon(Icons.message));
    } else if (floatindex == 2) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
              elevation: 10,
              mini: true,
              backgroundColor: Colors.grey.withOpacity(.4),
              onPressed: () {},
              child: Icon(
                Icons.create,
                color: Colors.black.withOpacity(.7),
              )),
          const SizedBox(
            height: 20,
          ),
          FloatingActionButton(onPressed: () {}, child: const Icon(Icons.camera_alt)),
        ],
      );
    } else if (floatindex == 3) {
      return FloatingActionButton(
          onPressed: () {}, child: const Icon(Icons.add_call));
    }
    return const Text('');
  }
}

/// Dynamic Floating action Button
class _DefaultTabControllerListener extends StatefulWidget {
  const _DefaultTabControllerListener(
      {Key? key, this.onTabSelected, required this.child})
      : super(key: key);

  final void Function(int index)? onTabSelected;
  final Widget child;

  @override
  _DefaultTabControllerListenerState createState() =>
      _DefaultTabControllerListenerState();
}

class _DefaultTabControllerListenerState
    extends State<_DefaultTabControllerListener> {
  late final void Function()? _listener;
  TabController? _tabController;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance?.addPostFrameCallback((_) {
      final tabController = DefaultTabController.of(context)!;
      _listener = () {
        final onTabSelected = widget.onTabSelected;
        if (onTabSelected != null) {
          onTabSelected(tabController.index);
        }
      };
      tabController.addListener(_listener!);
    });
  }

  @override
  void didChangeDependencies() {
    _tabController = DefaultTabController.of(context);
    super.didChangeDependencies();
  }

  @override
  void dispose() {
    if (_listener != null && _tabController != null) {
      _tabController!.removeListener(_listener!);
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return widget.child;
  }
}
