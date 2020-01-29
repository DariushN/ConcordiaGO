library concordia_constants;

import 'package:google_maps_flutter/google_maps_flutter.dart';

// Loyola Buildings Names, Initials and Coordinates
//TODO

// SGW Building Names, Initials and Coordinates
//TODO
// Real names need to be added (https://www.concordia.ca/maps/sgw-campus.html)

const String H_BUILDING_NAME = "Hall";
const String H_BUILDING_INITIAL = "H";
const double H_BUILDING_LATITUDE = 45.497249;
const double H_BUILDING_LONGITUDE = -73.578954;

const String EV_BUILDING_NAME = "EV";
const String EV_BUILDING_INITIAL = "EV";
const double EV_BUILDING_LATITUDE = 45.495406;
const double EV_BUILDING_LONGITUDE = -73.577996;

const String LB_BUILDING_NAME = "Library";
const String LB_BUILDING_INITIAL = "LB";
const double LB_BUILDING_LATITUDE = 45.496849;
const double LB_BUILDING_LONGITUDE = -73.578053;

const String MB_BUILDING_NAME = "JMSB";
const String MB_BUILDING_INITIAL = "MB";
const double MB_BUILDING_LATITUDE = 45.495495;
const double MB_BUILDING_LONGITUDE = -73.579169;

const String FG_BUILDING_NAME = "Faubourg";
const String FG_BUILDING_INITIAL = "FG";
const double FG_BUILDING_LATITUDE = 45.494354;
const double FG_BUILDING_LONGITUDE = -73.578428;

var buildingCoords = [
  {
    'Building': 'Hall Building',
    'code': 'H',
    'xcoords': [45.4973844, 45.4968314, 45.4971750, 45.4977167],
    'ycoords': [-73.5783540, -73.5788502, -73.5795483, -73.5790450],
  },
  {
    'Building': 'Webster Library',
    'code': 'LB',
    'xcoords': [45.496694, 45.497285, 45.496898, 45.4965677, 45.4965014, 45.4962589],
    'ycoords': [-73.578627, -73.578069, -73.577263, -73.5776063, -73.5774675, -73.5776955],
  },
  {
    'Building': 'John Molson Building',
    'code': 'MB',
    'xcoords': [45.495367, 45.495532, 45.495191, 45.495014],
    'ycoords': [-73.579374, -73.579189, -73.578513, -73.578711],
  },
  {
    'Building': 'EV Building',
    'code': 'EV',
    'xcoords': [45.4955790, 45.4958504, 45.4956582, 45.4960314, 45.4958349, 45.4952187],
    'ycoords': [-73.5787570, -73.5784720, -73.5780395, -73.5777019, -73.5772469, -73.5778870],
  },
  {
    'Building': 'Faubourg St-Catherines Building',
    'code': 'FG',
    'xcoords': [45.4942960, 45.4943677, 45.4942380, 45.4941722],
    'ycoords': [-73.5785193, -73.5784375, -73.5782266, -73.5783051],
  },
  {
    'Building': 'ECA B-Annex',
    'code': 'B',
    'xcoords': [45.497805, 45.497846, 45.497915, 45.497882],
    'ycoords': [-73.579460, -73.579522, -73.579456, -73.579391],
  },
  {
    'Building': 'CB Building',
    'code': 'CB',
    'xcoords': [
      45.4952441,
      45.4954030,
      45.4950591,
      45.4949339,
      45.4950613,
      45.4950291,
      45.4951059,
      45.4951346,
      45.4951940,
      45.4951630
    ],
    'ycoords': [
      -73.5738566,
      -73.5741855,
      -73.5745154,
      -73.5742506,
      -73.5741292,
      -73.5740662,
      -73.5739901,
      -73.5740531,
      -73.5739947,
      -73.5739347
    ],
  },
  {
    'Building': 'CI Annex',
    'code': 'CI',
    'xcoords': [45.497370, 45.497402, 45.497580, 45.4975439],
    'ycoords': [-73.579938, -73.580014, -73.579835, -73.5797592],
  },
  {
    'Building': 'CL Annex',
    'code': 'CL',
    'xcoords': [45.494251, 45.4941404, 45.4943390, 45.494465],
    'ycoords': [-73.578928, -73.5790782, -73.579427, -73.579285],
  },
  {
    'Building': 'D Annex',
    'code': 'D',
    'xcoords': [45.497742, 45.4977059, 45.497810, 45.497848],
    'ycoords': [-73.579410, -73.5793390, -73.579235, -73.579311],
  },
  {
    'Building': 'EN Annex',
    'code': 'EN',
    'xcoords': [45.496874, 45.4968502, 45.4969461, 45.496964],
    'ycoords': [-73.579808, -73.5797612, -73.5796669, -73.579705],
  },
  {
    'Building': 'ER Building',
    'code': 'ER',
    'xcoords': [45.496588, 45.496454, 45.496392, 45.496524],
    'ycoords': [-73.579785, -73.579893, -73.579752, -73.579629],
  },
  {
    'Building': 'FA Annex',
    'code': 'FA',
    'xcoords': [45.496852, 45.496945, 45.4969075, 45.496817],
    'ycoords': [-73.5797514, -73.579659, -73.579581, -73.579675],
  },
  {
    'Building': 'Faubourg Building',
    'code': 'FB',
    'xcoords': [45.494694, 45.494395, 45.494646, 45.494912],
    'ycoords': [-73.578029, -73.577519, -73.577214, -73.577766],
  },
  {
    'Building': 'Guy-De Maisonneuve Building',
    'code': 'GM',
    'xcoords': [45.495943, 45.495730, 45.495807, 45.496026],
    'ycoords': [-73.578975, -73.578626, -73.578558, -73.578903],
  },
  {
    'Building': 'Grey Nuns Building',
    'code': 'GN',
    'xcoords': [45.494110, 45.494024, 45.493350, 45.493436],
    'ycoords': [-73.576226, -73.576009, -73.576693, -73.576848],
  },
  {
    'Building': 'GS Building',
    'code': 'GS',
    'xcoords': [45.496639, 45.496507, 45.496473, 45.496592],
    'ycoords': [-73.581134, -73.581239, -73.581118, -73.581031],
  },
  {
    'Building': 'K Annex',
    'code': 'K',
    'xcoords': [45.497834, 45.497794, 45.497705, 45.497737],
    'ycoords': [-73.579535, -73.579470, -73.579558, -73.579630],
  },
  {
    'Building': 'LD Building',
    'code': 'LD',
    'xcoords': [45.496525, 45.496561, 45.496856, 45.496856],
    'ycoords': [-73.577388, -73.577459, -73.577164, -73.577164],
  },
  {
    'Building': 'Learning Square Building',
    'code': 'LS',
    'xcoords': [45.495952, 45.496111, 45.496177, 45.496156, 45.496188, 45.496052],
    'ycoords': [-73.579633, -73.579479, -73.579643, -73.579669, -73.579741, -73.579866],
  },
  {
    'Building': 'M Annex',
    'code': 'M',
    'xcoords': [45.497291, 45.497323, 45.497420, 45.497390],
    'ycoords': [-73.579778, -73.579845, -73.579751, -73.579681],
  },
  {
    'Building': 'MI Annex',
    'code': 'MI',
    'xcoords': [45.497777, 45.497809, 45.497645, 45.497621, 45.497694, 45.497682],
    'ycoords': [-73.579171, -73.579230, -73.579398, -73.579352, -73.579282, -73.579259],
  },
  {
    'Building': 'MU Annex',
    'code': 'MU',
    'xcoords': [45.497750, 45.497919, 45.497957, 45.497783],
    'ycoords': [-73.579628, -73.579464, -73.579541, -73.579698],
  },
  {
    'Building': 'P Annex',
    'code': 'P',
    'xcoords': [45.496584, 45.496675, 45.496720, 45.496626],
    'ycoords': [-73.579181, -73.579082, -73.579167, -73.579266],
  },
  {
    'Building': 'PR Annex',
    'code': 'PR',
    'xcoords': [45.496961, 45.497060, 45.497045, 45.496947],
    'ycoords': [-73.579973, -73.579867, -73.579839, -73.579941],
  },
  {
    'Building': 'Q Annex',
    'code': 'Q',
    'xcoords': [45.496554, 45.496582, 45.496670, 45.496643],
    'ycoords': [-73.579121, -73.579173, -73.579082, -73.579030],
  },
  {
    'Building': 'R Annex',
    'code': 'R',
    'xcoords': [45.496713, 45.496802, 45.496834, 45.496747],
    'ycoords': [-73.579424, -73.579330, -73.579400, -73.579483],
  },
  {
    'Building': 'RR Annex',
    'code': 'RR',
    'xcoords': [45.496649, 45.496791, 45.496756, 45.496613],
    'ycoords': [-73.579476, -73.579333, -73.579259, -73.579402],
  },
  {
    'Building': 'S Annex',
    'code': 'S',
    'xcoords': [45.497366, 45.497487, 45.497459, 45.497436, 45.497424, 45.497329],
    'ycoords': [-73.579931, -73.579815, -73.579756, -73.579776, -73.579762, -73.579860],
  },
  {
    'Building': 'Samuel Bronfman Building',
    'code': 'SB',
    'xcoords': [45.496533, 45.496541, 45.496621, 45.496672],
    'ycoords': [-73.586209, -73.586041, -73.585972, -73.586086],
  },
  {
    'Building': 'T Annex',
    'code': 'T',
    'xcoords': [45.496665, 45.496742, 45.496711, 45.496631],
    'ycoords': [-73.579336, -73.579256, -73.579189, -73.579269],
  },
  {
    'Building': 'Toronto Dominion Building',
    'code': 'TD',
    'xcoords': [45.494949, 45.495031, 45.495089, 45.495019],
    'ycoords': [-73.578178, -73.578083, -73.578230, -73.578318],
  },
  {
    'Building': 'V Annex',
    'code': 'V',
    'xcoords': [45.496968, 45.497069, 45.497085, 45.496981],
    'ycoords': [-73.579983, -73.579890, -73.579915, -73.580015],
  },
  {
    'Building': 'Visual Arts Building',
    'code': 'VA',
    'xcoords': [45.495406, 45.495670, 45.496167, 45.496060, 45.495809, 45.495656],
    'ycoords': [-73.573769, -73.574302, -73.573799, -73.573585, -73.573826, -73.573509],
  }, //Loyola Buildings start below this
  {
    'Building': 'Administration Building',
    'code': 'AD',
    'xcoords': [
      45.457794,
      45.457911,
      45.457982,
      45.457963,
      45.458270,
      45.458294,
      45.458369,
      45.458250,
      45.458170,
      45.458202,
      45.458087,
      45.458059,
      45.457999,
      45.458019,
      45.457915,
      45.457874
    ],
    'ycoords': [
      -73.639837,
      -73.640125,
      -73.640068,
      -73.640010,
      -73.639766,
      -73.639820,
      -73.639762,
      -73.639449,
      -73.639509,
      -73.639613,
      -73.639690,
      -73.639635,
      -73.639673,
      -73.639757,
      -73.639833,
      -73.639778
    ],
  },
  {
    'Building': 'BB Annex',
    'code': 'BB',
    'xcoords': [45.459695, 45.459782, 45.459809, 45.459723],
    'ycoords': [-73.639171, -73.639099, -73.639169, -73.639237],
  },
  {
    'Building': 'BH Annex',
    'code': 'BH',
    'xcoords': [45.459693, 45.459777, 45.459750, 45.459665],
    'ycoords': [-73.639160, -73.639089, -73.639026, -73.639092],
  },
  {
    'Building': 'Central Building',
    'code': 'CC',
    'xcoords': [45.458075, 45.458215, 45.458509, 45.458379],
    'ycoords': [-73.640015, -73.639907, -73.640686, -73.640794],
  },
  {
    'Building': 'Communications Studies and Journalism Building',
    'code': 'CJ',
    'xcoords': [
      45.457407,
      45.457358,
      45.457213,
      45.457227,
      45.457277,
      45.457421,
      45.457470,
      45.457429,
      45.457485,
      45.457619,
      45.457727,
      45.457757,
      45.457825,
      45.457646,
      45.457600,
      45.457335,
      45.457298,
      45.457273,
      45.457178
    ],
    'ycoords': [
      -73.640214,
      -73.640078,
      -73.640010,
      -73.639883,
      -73.639799,
      -73.639777,
      -73.639823,
      -73.640028,
      -73.640154,
      -73.640045,
      -73.640321,
      -73.640300,
      -73.640487,
      -73.640625,
      -73.640502,
      -73.640717,
      -73.640640,
      -73.640651,
      -73.640394
    ],
  },
  {
    'Building': 'Stinger Dome',
    'code': 'DO',
    'xcoords': [45.457361, 45.456951, 45.457901, 45.458319],
    'ycoords': [-73.637086, -73.636361, -73.635263, -73.635970],
  },
  {
    'Building': 'F.C. Smith Building',
    'code': 'FC',
    'xcoords': [45.458652, 45.458581, 45.458540, 45.458482, 45.458516, 45.458381, 45.458516, 45.458715, 45.458739],
    'ycoords': [
      -73.639694,
      -73.639578,
      -73.639596,
      -73.639436,
      -73.639420,
      -73.639038,
      -73.638938,
      -73.639422,
      -73.639620
    ],
  },
  {
    'Building': 'Centre for Structural and Functional Genomics',
    'code': 'GE',
    'xcoords': [45.456942, 45.456797, 45.457033, 45.457169],
    'ycoords': [-73.640739, -73.640355, -73.640180, -73.640566],
  },
  {
    'Building': 'Hingston Hall - HA Wing',
    'code': 'HA',
    'xcoords': [45.459431, 45.459668, 45.459479, 45.459248],
    'ycoords': [-73.641546, -73.641350, -73.640895, -73.641066],
  },
  {
    'Building': 'Hingston Hall - HB Wing',
    'code': 'HB',
    'xcoords': [45.459367, 45.459530, 45.459104, 45.458962, 45.459001, 45.458968],
    'ycoords': [-73.641503, -73.641935, -73.642258, -73.641905, -73.641885, -73.641809],
  },
  {
    'Building': 'Hingston Hall - HC Wing',
    'code': 'HC',
    'xcoords': [45.459526, 45.459817, 45.459886, 45.459620],
    'ycoords': [-73.642026, -73.641843, -73.642011, -73.642268],
  },
  {
    'Building': 'Applied Science Hub',
    'code': 'HU',
    'xcoords': [45.458201, 45.458635, 45.459225, 45.458789],
    'ycoords': [-73.641672, -73.641371, -73.642782, -73.643153],
  },
  {
    'Building': 'Jesuit Residence',
    'code': 'JR',
    'xcoords': [45.458401, 45.458539, 45.458627, 45.458491],
    'ycoords': [-73.643157, -73.643065, -73.643307, -73.643392],
  },
  {
    'Building': 'Perform Centre',
    'code': 'PC',
    'xcoords': [45.457018, 45.456692, 45.456939, 45.457266],
    'ycoords': [-73.637827, -73.636991, -73.636797, -73.637620],
  },
  {
    'Building': 'Physical Services Building',
    'code': 'PS',
    'xcoords': [45.4597016, 45.459403, 45.459332, 45.459286, 45.459597, 45.459964],
    'ycoords': [-73.640309, -73.639525, -73.639574, -73.639461, -73.639221, -73.640121],
  },
  {
    'Building': 'Oscar Peterson Concert Hall',
    'code': 'PT',
    'xcoords': [45.459216, 45.459344, 45.459477, 45.459351],
    'ycoords': [-73.638938, -73.639228, -73.639135, -73.638829],
  },
  {
    'Building': 'Psychology Building',
    'code': 'PY',
    'xcoords': [45.459270, 45.458875, 45.458759, 45.459107],
    'ycoords': [-73.640520, -73.640812, -73.640400, -73.640121],
  },
  {
    'Building': 'Recreation and Athletics Complex',
    'code': 'RA',
    'xcoords': [45.457002, 45.456704, 45.456397, 45.456691],
    'ycoords': [-73.637889, -73.637133, -73.637384, -73.638130],
  },
  {
    'Building': 'Jesuit Hall and Conference Centre',
    'code': 'RF',
    'xcoords': [
      45.458806,
      45.458505,
      45.458484,
      45.458548,
      45.458509,
      45.458427,
      45.458380,
      45.458473,
      45.458418,
      45.458538,
      45.458591,
      45.458681
    ],
    'ycoords': [
      -73.641156,
      -73.641373,
      -73.641318,
      -73.641264,
      -73.641138,
      -73.641199,
      -73.641079,
      -73.641009,
      -73.640854,
      -73.640762,
      -73.640876,
      -73.640802
    ],
  },
  {
    'Building': 'Student Centre',
    'code': 'SC',
    'xcoords': [45.459279, 45.459158, 45.458995, 45.459106],
    'ycoords': [-73.639276, -73.638991, -73.639122, -73.639414],
  },
  {
    'Building': 'Saint Ignatius of Loyola',
    'code': 'SI',
    'xcoords': [45.457642, 45.458045, 45.457964, 45.457576],
    'ycoords': [-73.642569, -73.642281, -73.642060, -73.642402],
  },
  {
    'Building': 'Richard J. Renaud Science Complex',
    'code': 'SP',
    'xcoords': [45.456991, 45.457199, 45.457529, 45.458163, 45.458321, 45.457676, 45.457638, 45.457433],
    'ycoords': [-73.640830, -73.640683, -73.641478, -73.641006, -73.641422, -73.641946, -73.641845, -73.641996],
  },
  {
    'Building': 'Terrebonne Building',
    'code': 'TA',
    'xcoords': [45.459934, 45.459980, 45.460074, 45.460036],
    'ycoords': [-73.640868, -73.640966, -73.640891, -73.640800],
  },
  {
    'Building': 'Vanier Extension',
    'code': 'VE',
    'xcoords': [45.458823, 45.459040, 45.458853, 45.458619],
    'ycoords': [-73.638272, -73.638853, -73.639007, -73.638457],
  },
  {
    'Building': 'Vanier Library',
    'code': 'VL',
    'xcoords': [45.458886, 45.459108, 45.459295, 45.459127, 45.459208, 45.459083, 45.458909, 45.458939],
    'ycoords': [-73.638176, -73.638796, -73.638651, -73.638209, -73.638133, -73.637873, -73.638000, -73.638191],
  },
];

const CameraPosition sgwCampus = CameraPosition(
  target: LatLng(45.495835, -73.578789),
  zoom: 15.5,
);

const CameraPosition loyolaCampus = CameraPosition(
  target: LatLng(45.458257, -73.640450),
  zoom: 15.5,
);