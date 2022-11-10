///Launch MODEL

class Launch {
  final bool? autoUpdate;
  final List<dynamic>? capsules;
  final List<dynamic>? cores;
  final List<dynamic>? crew;
  final String? dateLocal;
  final String? datePrecision;
  final int? dateUnix;
  final String? dateUtc;
  final String? details;
  final List<dynamic>? failures;
  final dynamic fairings;
  final int? flightNumber;
  final String? id;
  final String? launchLibraryId;
  final String? launchpad;
  final dynamic links;
  final String? name;
  final bool? net;
  final List<dynamic>? payloads;
  final String? rocket;
  final List<dynamic>? ships;
  final int? staticFireDateUnix;
  final String? staticFireDateUtc;
  final bool? success;
  final bool? tbd;
  final bool? upcoming;
  final int? window;

  Launch({
    required this.autoUpdate,
    required this.capsules,
    required this.cores,
    required this.crew,
    required this.dateLocal,
    required this.datePrecision,
    required this.dateUnix,
    required this.dateUtc,
    required this.details,
    required this.failures,
    required this.fairings,
    required this.flightNumber,
    required this.id,
    required this.launchLibraryId,
    required this.launchpad,
    required this.links,
    required this.name,
    required this.net,
    required this.payloads,
    required this.rocket,
    required this.ships,
    required this.staticFireDateUnix,
    required this.staticFireDateUtc,
    required this.success,
    required this.tbd,
    required this.upcoming,
    required this.window,
  });

  @override
  Launch copyWith({required Launch launch}) => Launch(
        autoUpdate: launch.autoUpdate,
        capsules: launch.capsules,
        cores: launch.cores,
        crew: launch.crew,
        dateLocal: launch.dateLocal,
        datePrecision: launch.datePrecision,
        dateUnix: launch.dateUnix,
        dateUtc: launch.dateUtc,
        details: launch.details,
        failures: launch.failures,
        fairings: launch.fairings,
        flightNumber: launch.flightNumber,
        id: launch.id,
        launchLibraryId: launch.launchLibraryId,
        launchpad: launch.launchpad,
        links: launch.links,
        name: launch.name,
        net: launch.net,
        payloads: launch.payloads,
        rocket: launch.rocket,
        ships: launch.ships,
        staticFireDateUnix: launch.staticFireDateUnix,
        staticFireDateUtc: launch.staticFireDateUtc,
        success: launch.success,
        tbd: launch.tbd,
        upcoming: launch.upcoming,
        window: launch.window,
      );
}

///Test Data (2006 - Launch Format)

// autoUpdate: true,
//     capsules: [],
//     cores: [
//       {
//         "core": "5e9e289df35918033d3b2623",
//         "flight": 1,
//         "gridfins": false,
//         "landing_attempt": false,
//         "landing_success": null,
//         "landing_type": null,
//         "landpad": null,
//         "legs": false,
//         "reused": false
//       }
//     ],
//     crew: [],
//     dateLocal: "2006-03-25T10:30:00+12:00",
//     datePrecision: "hour",
//     dateUnix: 1143239400,
//     dateUtc: "2006-03-24T22:30:00.000Z",
//     details: "Engine failure at 33 seconds and loss of vehicle",
//     failures: [
//       {"altitude": null, "reason": "merlin engine failure", "time": 33}
//     ],
//     fairings: {
//       "recovered": false,
//       "recovery_attempt": false,
//       "reused": false,
//       "ships": []
//     },
//     flightNumber: 1,
//     id: "5eb87cd9ffd86e000604b32a",
//     launchLibraryId: null,
//     launchpad: "5e9e4502f5090995de566f86",
//     links: {
//       "article":
//           "https://www.space.com/2196-spacex-inaugural-falcon-1-rocket-lost-launch.html",
//       "flickr": {"original": [], "small": []},
//       "patch": {
//         "large": "https://images2.imgbox.com/5b/02/QcxHUb5V_o.png",
//         "small": "https://images2.imgbox.com/94/f2/NN6Ph45r_o.png"
//       },
//       "presskit": null,
//       "reddit": {
//         "campaign": null,
//         "launch": null,
//         "media": null,
//         "recovery": null
//       },
//       "webcast": "https://www.youtube.com/watch?v=0a_00nJ_Y88",
//       "wikipedia": "https://en.wikipedia.org/wiki/DemoSat",
//       "youtube_id": "0a_00nJ_Y88"
//     },
//     name: "FalconSat",
//     net: false,
//     payloads: ["5eb0e4b5b6c3bb0006eeb1e1"],
//     rocket: "5e9d0d95eda69955f709d1eb",
//     ships: [],
//     staticFireDateUnix: 1142553600,
//     staticFireDateUtc: "2006-03-17T00:00:00.000Z",
//     success: false,
//     tbd: false,
//     upcoming: false,
//     window: 0,

///Test Data (2022 - Dynamic Format)

// dynamic launch = {
//     "auto_update": true,
//     "capsules": [],
//     "cores": [
//       {
//         "core": null,
//         "flight": null,
//         "gridfins": null,
//         "landing_attempt": null,
//         "landing_success": null,
//         "landing_type": null,
//         "landpad": null,
//         "legs": null,
//         "reused": null
//       }
//     ],
//     "crew": [],
//     "date_local": "2022-11-30T19:00:00-05:00",
//     "date_precision": "month",
//     "date_unix": 1669852800,
//     "date_utc": "2022-12-01T00:00:00.000Z",
//     "details": null,
//     "failures": [],
//     "fairings": {
//       "recovered": null,
//       "recovery_attempt": null,
//       "reused": null,
//       "ships": []
//     },
//     "flight_number": 203,
//     "id": "6243ae7daf52800c6e91925b",
//     "launch_library_id": null,
//     "launchpad": "5e9e4501f509094ba4566f84",
//     "links": {
//       "article": null,
//       "flickr": {"original": [], "small": []},
//       "patch": {"large": null, "small": null},
//       "presskit": null,
//       "reddit": {
//         "campaign": null,
//         "launch": null,
//         "media": null,
//         "recovery": null
//       },
//       "webcast": null,
//       "wikipedia": null,
//       "youtube_id": null
//     },
//     "name": "O3b mPower 3.4",
//     "net": false,
//     "payloads": ["6243b788af52800c6e91926b"],
//     "rocket": "5e9d0d95eda69973a809d1ec",
//     "ships": [],
//     "static_fire_date_unix": null,
//     "static_fire_date_utc": null,
//     "success": null,
//     "tbd": false,
//     "upcoming": true,
//     "window": null
//   };