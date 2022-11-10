import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spacex_launch/data/repos/launch_repo.dart';
import 'package:spacex_launch/ui/widgets/custom_progress_indicator.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import '../../constants/styles.dart';
import '../../logic/bloc/launch_bloc.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final RefreshController _refreshController =
      RefreshController(initialRefresh: false);
  final ScrollController _customScrollViewController = ScrollController();
  final LaunchRepo _launchRepo = LaunchRepo();
  late final _launchBloc;

  void _onRefresh() {
    _launchBloc.add(const UpdateLaunch());
  }

  @override
  void initState() {
    super.initState();
    _launchBloc = BlocProvider.of<LaunchBloc>(context);
    _launchBloc.add(const GetLaunch());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text(
          "SpaceX Launches",
          style: TextStyle(
            color: Colors.blueGrey,
            fontSize: 24,
          ),
        ),
      ),
      body: SmartRefresher(
        controller: _refreshController,
        onRefresh: _onRefresh,
        child: CustomScrollView(
          physics: const BouncingScrollPhysics(),
          controller: _customScrollViewController,
          slivers: <Widget>[
            //Launch Info
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: const [
                        Text(
                          "The Final Launch",
                          style: TextStyle(
                            color: Colors.black87,
                            fontSize: 24,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 30),
                    BlocConsumer<LaunchBloc, LaunchState>(
                      listener: (context, state) {
                        if (state is LaunchLoaded) {
                          print("launch loaded");
                          _refreshController.refreshCompleted();
                          // _refreshController.loadComplete();
                        }
                      },
                      builder: (context, state) {
                        //The Final Launch Info
                        if (state is LaunchLoaded) {
                          return const FinalLaunch();
                          //The Error State
                        } else if (state is LaunchError) {
                          return Text(
                            state.message!,
                          );
                        } else {
                          //The Loading State
                          return const Center(child: CustomProgressIndicator());
                        }
                      },
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class FinalLaunch extends StatelessWidget {
  const FinalLaunch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LaunchBloc, LaunchState>(
      builder: (context, state) {
        if (state is LaunchLoaded) {
          return Column(
            children: [
              const Text(
                "Patch Info: ",
                style: kLaunchInfoTextStyle,
              ),
              Text(
                "Small: " + (state.launch.links['patch']['small'] ?? "null"),
                style: kLaunchInfoTextStyle,
              ),
              Text(
                "Large: " + (state.launch.links['patch']['large'] ?? "null"),
                style: kLaunchInfoTextStyle,
              ),
              Text(
                "Name: " + (state.launch.name ?? "null"),
                style: kLaunchInfoTextStyle,
              ),
              Text(
                "Details: " + (state.launch.details ?? "null"),
                style: kLaunchInfoTextStyle,
              ),
            ],
          );
        } else {
          return const SizedBox.shrink();
        }
      },
    );
  }
}
