// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a ph_PH locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// ignore_for_file: unnecessary_brace_in_string_interps

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

// ignore: unnecessary_new
final messages = new MessageLookup();

// ignore: unused_element
final _keepAnalysisHappy = Intl.defaultLocale;

// ignore: non_constant_identifier_names
typedef MessageIfAbsent(String message_str, List args);

class MessageLookup extends MessageLookupByLibrary {
  get localeName => 'ph_PH';

  static m0(value) => "${value} km";

  static m1(value) => "${value} m";

  static m2(value) => "${value} min";

  static m12(distance) => "${distance}";

  static m13(value, distance) => "${value} ${distance}";

  static m3(value) => " ₱ ${value}";

  static m4(vehicle, duration, distance, location) => "Sumakay ${vehicle} para sa ${duration} ( ${distance} ) patungo sa ${location}";

  static m5(duration, distance, location) => "Maglakad ${duration} ( ${distance} ) papunta sa ${location}";

  static m6(url) => "I-download ang Jeepney App, ang pampublikong transport app para sa Metro Manila, sa ${url}";

  static m7(representatives) => "Mga Kinatawan: ${representatives}";

  static m8(routeContributors, osmContributors) => "Mga ruta: ${routeContributors} at lahat ng mga gumagamit na nag-upload ng mga ruta sa OpenStreetMap, tulad ng ${osmContributors}. \nMakipag-ugnay sa amin kung nais mong sumali sa komunidad ng OpenStreetMap!";

  static m9(teamMembers) => "Pangkat: ${teamMembers}";

  static m10(translators) => "Pagsasalin: ${translators}";

  static m14(value) => "${value}";

  static m11(version) => "Version ${version}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static _notInlinedMessages(_) => <String, Function> {
    "aboutContent" : MessageLookupByLibrary.simpleMessage("Binuo namin ang app na ito upang gawing madali para sa mga tao na gamitin ang sistema ng transportasyon sa Metro Manila at sa nakapalibot na lugar."),
    "aboutLicenses" : MessageLookupByLibrary.simpleMessage("Mga Lisensya"),
    "alertLocationServicesDeniedMessage" : MessageLookupByLibrary.simpleMessage("Mangyaring tiyakin na ang iyong aparato ay may GPS at ang mga setting ng lokasyon ay isinaaktibo."),
    "alertLocationServicesDeniedTitle" : MessageLookupByLibrary.simpleMessage("Walang lokasyon"),
    "appReviewDialogButtonAccept" : MessageLookupByLibrary.simpleMessage("Sumulat ng pagsusuri"),
    "appReviewDialogButtonDecline" : MessageLookupByLibrary.simpleMessage("Hindi ngayon"),
    "appReviewDialogContent" : MessageLookupByLibrary.simpleMessage("Suportahan kami sa isang pagsusuri sa Google Play Store."),
    "appReviewDialogTitle" : MessageLookupByLibrary.simpleMessage("Natutuwa sa Trufi?"),
    "chooseLocationPageSubtitle" : MessageLookupByLibrary.simpleMessage("Pan & zoom mapa sa ilalim ng pin"),
    "chooseLocationPageTitle" : MessageLookupByLibrary.simpleMessage("Pumili ng isang punto"),
    "commonCancel" : MessageLookupByLibrary.simpleMessage("Cancel"),
    "commonDestination" : MessageLookupByLibrary.simpleMessage("Destinasyon"),
    "commonError" : MessageLookupByLibrary.simpleMessage("Error"),
    "commonFailLoading" : MessageLookupByLibrary.simpleMessage("Nabigong i-load ang data"),
    "commonGoOffline" : MessageLookupByLibrary.simpleMessage("Mag-offline"),
    "commonGoOnline" : MessageLookupByLibrary.simpleMessage("Mag-online"),
    "commonNoInternet" : MessageLookupByLibrary.simpleMessage("Walang koneksyon sa internet."),
    "commonOK" : MessageLookupByLibrary.simpleMessage("OK"),
    "commonOrigin" : MessageLookupByLibrary.simpleMessage("Pinagmulan"),
    "commonUnknownError" : MessageLookupByLibrary.simpleMessage("Hindi kilalang error"),
    "description" : MessageLookupByLibrary.simpleMessage("Ang pinakamahusay na paraan upang maglakbay kasama ang mga dyip sa pamamagitan ng Valenzuela City."),
    "donate" : MessageLookupByLibrary.simpleMessage("Mag-donate"),
    "errorAmbiguousDestination" : MessageLookupByLibrary.simpleMessage("Ang tagaplano ng paglalakbay ay hindi sigurado sa lokasyon na nais mong puntahan. Mangyaring pumili mula sa mga sumusunod na pagpipilian, o mas tiyak."),
    "errorAmbiguousOrigin" : MessageLookupByLibrary.simpleMessage("Ang tagaplano ng paglalakbay ay hindi sigurado sa lokasyon na nais mong simulan. Mangyaring pumili mula sa mga sumusunod na pagpipilian, o mas tiyak."),
    "errorAmbiguousOriginDestination" : MessageLookupByLibrary.simpleMessage("Parehong pinagmulan at patutunguhan ay hindi maliwanag. Mangyaring pumili mula sa mga sumusunod na pagpipilian, o mas tiyak."),
    "errorNoBarrierFree" : MessageLookupByLibrary.simpleMessage("Parehong pinagmulan at patutunguhan ay hindi magagamit ang wheelchair"),
    "errorNoTransitTimes" : MessageLookupByLibrary.simpleMessage("Walang magagamit na mga oras ng pagbiyahe. Ang petsa ay maaaring lumipas o napakalayo sa hinaharap o maaaring hindi serbisyo ng transit para sa iyong paglalakbay sa oras na iyong pinili"),
    "errorOutOfBoundary" : MessageLookupByLibrary.simpleMessage("Hindi pwede ang biyahe. Maaari mong sinusubukan na planuhin ang isang paglalakbay sa labas ng hangganan ng data ng mapa."),
    "errorPathNotFound" : MessageLookupByLibrary.simpleMessage("Hindi pwede ang biyahe. Ang iyong panimula o pagtatapos ay maaaring hindi ligtas na ma-access (halimbawa, maaari kang magsimula sa isang tirahang kalye na konektado lamang sa isang highway)."),
    "errorServerCanNotHandleRequest" : MessageLookupByLibrary.simpleMessage("Ang kahilingan ay may mga error na ang server ay hindi nais o magproseso."),
    "errorServerTimeout" : MessageLookupByLibrary.simpleMessage("Ang tagaplano ng biyahe ay masyadong mahabang paraan upang maproseso ang iyong kahilingan. Subukang muli mamaya."),
    "errorServerUnavailable" : MessageLookupByLibrary.simpleMessage("Paumanhin. Pansamantalang hindi magagamit ang planner ng paglalakbay. Subukang muli mamaya."),
    "errorTrivialDistance" : MessageLookupByLibrary.simpleMessage("Ang pinagmulan ay nasa loob ng isang maliit na distansya ng patutunguhan."),
    "errorUnknownDestination" : MessageLookupByLibrary.simpleMessage("Hindi kilala ang patutunguhan. Maaari ka bang maging mas descriptive?"),
    "errorUnknownOrigin" : MessageLookupByLibrary.simpleMessage("Hindi kilala ang pinagmulan. Maaari ka bang maging mas descriptive?"),
    "errorUnknownOriginDestination" : MessageLookupByLibrary.simpleMessage("Ang parehong pinagmulan at patutunguhan ay hindi kilala. Maaari ka bang maging mas descriptive?"),
    "fare1" : MessageLookupByLibrary.simpleMessage("Para sa unang 4kms ang minimum na pamasahe ay 9 na PHP ang sumusunod na bawat kilometro ay may dagdag sa pamasahe na 1.50 PhP. Ang base fare o minimum fare ay 9 PHP na naaangkop sa lahat ng mga ruta sa NCR, Rehiyon 3 at Rehiyon 4."),
    "fare2" : MessageLookupByLibrary.simpleMessage("Discount para sa PWD, Senior Citizen, Student"),
    "fare3" : MessageLookupByLibrary.simpleMessage("Pamasahe"),
    "fare4" : MessageLookupByLibrary.simpleMessage("Lahat ng estudyante ay maaaring makakuha ng (20% discount mula Lunes hanggang Linggo kabilang na ang summer breaks, legal and special legal holidays. Hindi sakop ng pribilehiyong to ang mga Post-graduate students (kumukuha ng kursong medicine, law, masteral, doctoral degrees and the like) o kaya driving o dancing lessons."),
    "fare5" : MessageLookupByLibrary.simpleMessage("Students, persons with disabilities, and senior citizens are entitled to a 20 percent discount on fares everyday upon presentation of their identification cards."),
    "feedbackContent" : MessageLookupByLibrary.simpleMessage("The Land Transportation Franchising and Regulatory Board (LTFRB) has put up a complaint center around the clock. Aside from responding to complaints and grievances, the contact centers will respond to inquiries about any services rendered by the LTFRB."),
    "feedbackContent1" : MessageLookupByLibrary.simpleMessage("If you encounter violations involving drivers of public utility jeepneys, condition and state of public vehicle units and other public land transportation-related complaints you can report it via email and LTFRB Facebook where complainants send pictures and videos for evidence, and their 24/7 hotline number - 1342."),
    "feedbackContent2" : MessageLookupByLibrary.simpleMessage("In filing a complaint, the LTFRB will ask the person who reported to the hotline if they are willing to attend a hearing. If they are, the LTFRB will send the complaint to their Legal Division for scheduling and issuance of summons to both complainant and respondent. For complainants who do not want to attend a hearing, the LTFRB will send a Show Cause Order (SCO) or reprimand letter signed by the Chairman. The LTFRB will ask the respondent to reason out and explain why the driver or the operator should not be sanctioned for the reported violation. A response from the driver or operator must be received within 5 days from receipt of the SCO. The complainant will also receive a copy of the SCO and the response letter of the respondent. Sending of summons, SCOs, and reprimand letters are coursed through PhilPost."),
    "feedbackTitle" : MessageLookupByLibrary.simpleMessage("Mag-file ng isang Reklamo"),
    "followOnFacebook" : MessageLookupByLibrary.simpleMessage("Sundan kami sa Facebook"),
    "followOnInstagram" : MessageLookupByLibrary.simpleMessage("Sundan kami sa Instagram"),
    "followOnTwitter" : MessageLookupByLibrary.simpleMessage("Sundan kami sa Twitter"),
    "instructionDistanceKm" : m0,
    "instructionDistanceMeters" : m1,
    "instructionDurationMinutes" : m2,
    "instructionFare" : m12,
    "instructionFare2" : m13,
    "instructionFarePeso" : m3,
    "instructionRide" : m4,
    "instructionVehicleBus" : MessageLookupByLibrary.simpleMessage("Jeepney"),
    "instructionVehicleCar" : MessageLookupByLibrary.simpleMessage("Car"),
    "instructionVehicleGondola" : MessageLookupByLibrary.simpleMessage("Gondola"),
    "instructionVehicleMicro" : MessageLookupByLibrary.simpleMessage("Micro"),
    "instructionVehicleMinibus" : MessageLookupByLibrary.simpleMessage("Minibus"),
    "instructionVehicleTrufi" : MessageLookupByLibrary.simpleMessage("Trufi"),
    "instructionWalk" : m5,
    "menuAbout" : MessageLookupByLibrary.simpleMessage("Tungkol sa app"),
    "menuAppReview" : MessageLookupByLibrary.simpleMessage("I-rate ang app"),
    "menuConnections" : MessageLookupByLibrary.simpleMessage("Ipakita ang mga ruta"),
    "menuFeedback" : MessageLookupByLibrary.simpleMessage("Mag-ulat sa LTFRB"),
    "menuOnline" : MessageLookupByLibrary.simpleMessage("Regular"),
    "menuShareApp" : MessageLookupByLibrary.simpleMessage("Ibahagi ang app"),
    "menuTeam" : MessageLookupByLibrary.simpleMessage("Mga Setting"),
    "noRouteError" : MessageLookupByLibrary.simpleMessage("Paumanhin, hindi namin mahanap ang isang ruta. Ano ang gusto mong gawin?"),
    "noRouteErrorActionCancel" : MessageLookupByLibrary.simpleMessage("Subukan ang isa pang destinasyon"),
    "noRouteErrorActionReportMissingRoute" : MessageLookupByLibrary.simpleMessage("Iulat ang isang nawawalang ruta"),
    "noRouteErrorActionShowCarRoute" : MessageLookupByLibrary.simpleMessage("Ipakita ang ruta sa pamamagitan ng kotse"),
    "readOurBlog" : MessageLookupByLibrary.simpleMessage("Basahin ang aming blog"),
    "searchFailLoadingPlan" : MessageLookupByLibrary.simpleMessage("Nabigong i-load ang plano."),
    "searchHintDestination" : MessageLookupByLibrary.simpleMessage("Piliin ang patutunguhan"),
    "searchHintOrigin" : MessageLookupByLibrary.simpleMessage("Piliin ang panimulang punto"),
    "searchItemChooseOnMap" : MessageLookupByLibrary.simpleMessage("Pumili sa mapa"),
    "searchItemNoResults" : MessageLookupByLibrary.simpleMessage("Walang resulta"),
    "searchItemYourLocation" : MessageLookupByLibrary.simpleMessage("Iyong lokasyon"),
    "searchMapMarker" : MessageLookupByLibrary.simpleMessage("Map Marker"),
    "searchPleaseSelectDestination" : MessageLookupByLibrary.simpleMessage("Piliin ang patutunguhan"),
    "searchPleaseSelectOrigin" : MessageLookupByLibrary.simpleMessage("Piliin ang pinagmulan"),
    "searchTitleFavorites" : MessageLookupByLibrary.simpleMessage("Mga Paborito"),
    "searchTitlePlaces" : MessageLookupByLibrary.simpleMessage("Mga Lugar"),
    "searchTitleRecent" : MessageLookupByLibrary.simpleMessage("Kamakailan"),
    "searchTitleResults" : MessageLookupByLibrary.simpleMessage("Mga Resulta ng Paghahanap"),
    "shareAppText" : m6,
    "tagline" : MessageLookupByLibrary.simpleMessage("A Jeepney Navigation for Commuters using Android App"),
    "teamContent" : MessageLookupByLibrary.simpleMessage("Kami ay isang pang-internasyonal na pangkat na tinatawag na Trufi Association na nilikha ang app na ito sa tulong ng maraming mga boluntaryo! Nais mo bang mapagbuti ang Trufi App at maging bahagi ng aming pangkat?"),
    "teamSectionRepresentatives" : m7,
    "teamSectionRoutes" : m8,
    "teamSectionTeam" : m9,
    "teamSectionTranslations" : m10,
    "title" : MessageLookupByLibrary.simpleMessage("Jeepney App"),
    "titlehaha" : m14,
    "version" : m11
  };
}
