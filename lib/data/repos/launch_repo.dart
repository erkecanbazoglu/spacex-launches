import 'package:spacex_launch/data/models/launch.dart';
import 'package:spacex_launch/data/providers/launches.dart';

///Launch Repo

class LaunchRepo {
  LaunchRepo();

  //Launch API instance is initialized
  final LaunchesAPI _launchAPI = LaunchesAPI();

  ///Prepare the final launch
  Launch _prepareFinalLaunch(launch) {
    Launch _launch = getLaunchFromDynamic(launch: launch);
    return _launch;
  }

  ///Prepare all launches
  List<Launch> _prepareAllLaunches(launches) {
    List<Launch> _launches = [];
    for (int i = 0; i < launches.length; i++) {
      Launch launch = getLaunchFromDynamic(launch: launches[i]);
      _launches.add(launch);
    }
    return _launches;
  }

  //The dynamic data that comes from the API
  Launch getLaunchFromDynamic({required dynamic launch}) => Launch(
        autoUpdate: launch?["auto_update"],
        capsules: launch?["capsules"],
        cores: launch?["cores"],
        crew: launch?["crew"],
        dateLocal: launch?["date_local"],
        datePrecision: launch?["date_precision"],
        dateUnix: launch?["date_unix"],
        dateUtc: launch?["date_utc"],
        details: launch?["details"],
        failures: launch?["failures"],
        fairings: launch?["fairings"],
        flightNumber: launch?["flight_number"],
        id: launch?["id"],
        launchLibraryId: launch?["launch_library_id"],
        launchpad: launch?["launchpad"],
        links: launch?["links"],
        name: launch?["name"],
        net: launch?["net"],
        payloads: launch?["payloads"],
        rocket: launch?["rocket"],
        ships: launch?["ships"],
        staticFireDateUnix: launch?["static_fire_date_unix"],
        staticFireDateUtc: launch?["static_fire_date_utc"],
        success: launch?["success"],
        tbd: launch?["tbd"],
        upcoming: launch?["upcoming"],
        window: launch?["window"],
      );

  ///Prepare the Latest Launch
  Future<Launch> getFinalLaunch() async {
    dynamic latestLaunch = await _launchAPI.getFinalLaunch();
    Launch finalLaunch = _prepareFinalLaunch(latestLaunch);
    return finalLaunch;
  }

  ///Prepare all the Launches
  Future<List<Launch>> getAllLaunches() async {
    List<dynamic> tempLaunches = await _launchAPI.getAllLaunches();
    List<Launch> allLaunches = _prepareAllLaunches(tempLaunches);
    return allLaunches;
  }
}
