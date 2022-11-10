import 'dart:convert' as convert;
import 'package:http/http.dart' as http;

///Launches Provider

class LaunchesAPI {
  ///SpaceX Launches API
  Future<List<dynamic>> _getSpaceXLaunches() async {
    var url = Uri.https('api.spacexdata.com', 'v4/launches');

    var response = await http.get(url);
    print('Response status: ${response.statusCode}');

    List<dynamic> _launchesList = convert.jsonDecode(response.body);

    ///Reversing the list order so that the most recent launch comes first
    List<dynamic> _reversedLaunches = List.from(_launchesList.reversed);
    return _reversedLaunches;
  }

  ///Only the Final Launch
  Future<dynamic> getFinalLaunch() async {
    List<dynamic> _launches = await _getSpaceXLaunches();
    return _launches.first;
  }

  ///All the Launches
  Future<List<dynamic>> getAllLaunches() async {
    List<dynamic> _launches = await _getSpaceXLaunches();
    return _launches;
  }
}
