import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:miniflux_app/presentation/views/user_feed/cubit/user_feed_cubit.dart';
import 'package:miniflux_app/presentation/views/user_feed/views/user_feed.dart';
import 'package:miniflux_app/utils/constants/strings.dart';

class MainHomePage extends StatefulWidget {
  const MainHomePage({super.key});

  @override
  State<MainHomePage> createState() => _MainHomePageState();
}

class _MainHomePageState extends State<MainHomePage>
    with TickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.read<UserFeedCubit>().getUserFeed();
        },
        child: const Icon(Icons.refresh),
      ),
      backgroundColor: Theme.of(context).cardTheme.shadowColor,
      // onDrawerChanged: (bool isOpen) {},
      // drawer: const HomeDrawer(),
      // appBar:
      body: NestedScrollView(
        floatHeaderSlivers: true,
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              title: const Text(
                ConstStrings.appTitle,
              ),
              pinned: true,
              floating: true,
              snap: true,
              bottom: PreferredSize(
                preferredSize: const Size.fromHeight(51),
                child: SizedBox(
                  // width: MediaQuery.of(context).size.width,
                  child: TabBar(
                      isScrollable: false,
                      controller: _tabController,
                      // labelColor: Theme.of(context).tabBarTheme.labelColor,
                      unselectedLabelColor: Colors.white30,
                      indicatorSize: TabBarIndicatorSize.tab,
                      indicatorWeight: 5,
                      physics: const BouncingScrollPhysics(),
                      indicator: UnderlineTabIndicator(
                        borderSide: BorderSide(
                          color: Theme.of(context).tabBarTheme.indicatorColor!,
                          width: 4,
                        ),
                      ),
                      tabs: const [
                        Tab(child: Text('HOME')),
                        Tab(child: Text('UNREAD')),
                        Tab(child: Text('FAVORITES')),
                      ]),
                ),
              ),
            ),
          ];
        },
        body: Column(
          children: <Widget>[
            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: const <Widget>[
                  UserFeed(),
                  Center(
                    child: Text(
                      'Tab 2',
                    ),
                  ),
                  Center(
                    child: Text(
                      'Tab 3',
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
