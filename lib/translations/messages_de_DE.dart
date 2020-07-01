// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a de_DE locale. All the
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
  get localeName => 'de_DE';

  static m0(value) => "${value} km";

  static m1(value) => "${value} m";

  static m2(value) => "${value} min";

  static m3(value) => " ₱ ${value}";

  static m4(vehicle, duration, distance, location) => "${vehicle} ${duration} ( ${distance} ) bis ${location}";

  static m5(duration, distance, location) => "Laufen Sie ${duration} ( ${distance} ) zu ${location}";

  static m6(url) => "Laden Sie Jeepney App, die ÖPNV-App für Valenzuela City, unter ${url} herunter.";

  static m7(representatives) => "Vertreter: ${representatives}";

  static m8(routeContributors, osmContributors) => "Routen: ${routeContributors} und alle Benutzer, die Routen zu OpenStreetMap hochgeladen haben, z. B. ${osmContributors}. Kontaktieren Sie uns, wenn Sie der OpenStreetMap-Community beitreten möchten!";

  static m9(teamMembers) => "Team: ${teamMembers}";

  static m10(translators) => "Übersetzungen: ${translators}";

  static m11(version) => "Version ${version}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static _notInlinedMessages(_) => <String, Function> {
    "aboutContent" : MessageLookupByLibrary.simpleMessage("Wir haben diese App entwickelt, um Menschen die Nutzung des Transportsystems in Valenzuela City und Umgebung zu erleichtern."),
    "aboutLicenses" : MessageLookupByLibrary.simpleMessage("Lizenzen"),
    "alertLocationServicesDeniedMessage" : MessageLookupByLibrary.simpleMessage("Stellen Sie sicher, dass Ihr Gerät über GPS verfügt und die Standorteinstellungen aktiviert sind."),
    "alertLocationServicesDeniedTitle" : MessageLookupByLibrary.simpleMessage("Kein Ort"),
    "appReviewDialogButtonAccept" : MessageLookupByLibrary.simpleMessage("Eine Beurteilung schreiben"),
    "appReviewDialogButtonDecline" : MessageLookupByLibrary.simpleMessage("Nicht jetzt"),
    "appReviewDialogContent" : MessageLookupByLibrary.simpleMessage("Unterstützen Sie uns mit einer Bewertung im Google Play Store."),
    "appReviewDialogTitle" : MessageLookupByLibrary.simpleMessage("Trufi genießen?"),
    "chooseLocationPageSubtitle" : MessageLookupByLibrary.simpleMessage("Pan & Zoom Karte unter Pin"),
    "chooseLocationPageTitle" : MessageLookupByLibrary.simpleMessage("Wählen Sie einen Punkt"),
    "commonCancel" : MessageLookupByLibrary.simpleMessage("Stornieren"),
    "commonDestination" : MessageLookupByLibrary.simpleMessage("Ziel"),
    "commonError" : MessageLookupByLibrary.simpleMessage("Error"),
    "commonFailLoading" : MessageLookupByLibrary.simpleMessage("Daten konnten nicht geladen werden"),
    "commonGoOffline" : MessageLookupByLibrary.simpleMessage("Gehe offline"),
    "commonGoOnline" : MessageLookupByLibrary.simpleMessage("Online gehen"),
    "commonNoInternet" : MessageLookupByLibrary.simpleMessage("Keine Internetverbindung."),
    "commonOK" : MessageLookupByLibrary.simpleMessage("okay"),
    "commonOrigin" : MessageLookupByLibrary.simpleMessage("Ursprung"),
    "commonUnknownError" : MessageLookupByLibrary.simpleMessage("Unbekannter Fehler"),
    "description" : MessageLookupByLibrary.simpleMessage("Die beste Art, mit Jeepneys durch Valenzuela City zu reisen."),
    "donate" : MessageLookupByLibrary.simpleMessage("Spenden"),
    "errorAmbiguousDestination" : MessageLookupByLibrary.simpleMessage("Der Routenplaner ist sich nicht sicher, zu welchem Ort Sie gehen möchten. Bitte wählen Sie aus den folgenden Optionen aus oder gehen Sie genauer vor."),
    "errorAmbiguousOrigin" : MessageLookupByLibrary.simpleMessage("Der Routenplaner ist sich nicht sicher, von welchem Ort aus Sie starten möchten. Bitte wählen Sie aus den folgenden Optionen aus oder gehen Sie genauer vor."),
    "errorAmbiguousOriginDestination" : MessageLookupByLibrary.simpleMessage("Sowohl der Ursprung als auch der Bestimmungsort sind nicht eindeutig. Bitte wählen Sie aus den folgenden Optionen aus oder gehen Sie genauer vor."),
    "errorNoBarrierFree" : MessageLookupByLibrary.simpleMessage("Sowohl der Ausgangspunkt als auch das Ziel sind nicht für Rollstuhlfahrer zugänglich"),
    "errorNoTransitTimes" : MessageLookupByLibrary.simpleMessage("Keine Transitzeiten verfügbar. Das Datum liegt möglicherweise in der Vergangenheit oder zu weit in der Zukunft oder es gibt möglicherweise keinen Transitdienst für Ihre Reise zum von Ihnen gewählten Zeitpunkt."),
    "errorOutOfBoundary" : MessageLookupByLibrary.simpleMessage("Reise ist nicht möglich. Sie versuchen möglicherweise, eine Reise außerhalb der Kartendatengrenze zu planen."),
    "errorPathNotFound" : MessageLookupByLibrary.simpleMessage("Reise ist nicht möglich. Ihr Start- oder Endpunkt ist möglicherweise nicht sicher erreichbar (Sie starten beispielsweise in einer Wohnstraße, die nur mit einer Autobahn verbunden ist)."),
    "errorServerCanNotHandleRequest" : MessageLookupByLibrary.simpleMessage("Die Anforderung weist Fehler auf, die der Server nicht verarbeiten kann oder möchte."),
    "errorServerTimeout" : MessageLookupByLibrary.simpleMessage("Der Routenplaner dauert viel zu lange, um Ihre Anfrage zu bearbeiten. Bitte versuchen Sie es später noch einmal."),
    "errorServerUnavailable" : MessageLookupByLibrary.simpleMessage("Es tut uns leid. Der Routenplaner ist vorübergehend nicht verfügbar. Bitte versuchen Sie es später noch einmal."),
    "errorTrivialDistance" : MessageLookupByLibrary.simpleMessage("Der Ursprung liegt in trivialer Entfernung zum Ziel."),
    "errorUnknownDestination" : MessageLookupByLibrary.simpleMessage("Ziel ist unbekannt. Können Sie etwas aussagekräftiger sein?"),
    "errorUnknownOrigin" : MessageLookupByLibrary.simpleMessage("Herkunft ist unbekannt. Können Sie etwas aussagekräftiger sein?"),
    "errorUnknownOriginDestination" : MessageLookupByLibrary.simpleMessage("Sowohl Herkunft als auch Ziel sind unbekannt. Können Sie etwas aussagekräftiger sein?"),
    "fare1" : MessageLookupByLibrary.simpleMessage("Für die ersten 4 km beträgt der Mindesttarif 9 PHP-Nachfolgetarif 1,50 PhP pro km. Der Basistarif oder Mindesttarif beträgt 9 PHP für alle Strecken in NCR, Reg 3 und Reg 4."),
    "fare2" : MessageLookupByLibrary.simpleMessage("Rabatt für PWD, Senior Citizen, Studenten"),
    "fare3" : MessageLookupByLibrary.simpleMessage("Fahrpreis"),
    "fare4" : MessageLookupByLibrary.simpleMessage("Die Studenten können die zwanzig Prozent (20% Rabatt von Montag bis Sonntag, einschließlich der Sommerferien, gesetzlichen und besonderen gesetzlichen Feiertage) in Anspruch nehmen. Postgraduierte (Studenten, die Medizin, Jura, Magister, Doktorat und ähnliches studieren) können die genannte Ermäßigung nicht in Anspruch nehmen."),
    "fare5" : MessageLookupByLibrary.simpleMessage("Studenten, Menschen mit Behinderungen und Senioren erhalten gegen Vorlage ihres Personalausweises täglich 20 Prozent Ermäßigung auf die Tarife."),
    "feedbackContent" : MessageLookupByLibrary.simpleMessage("Das Land Transportation Franchising and Regulatory Board (LTFRB) hat rund um die Uhr eine Beschwerdestelle eingerichtet. Neben der Beantwortung von Beschwerden und Beschwerden werden die Kontaktzentren auch Anfragen zu den Dienstleistungen der LTFRB beantworten."),
    "feedbackContent1" : MessageLookupByLibrary.simpleMessage("Wenn Sie auf Verstöße in Bezug auf Fahrer von Jeepneys der öffentlichen Versorgungsbetriebe, Zustand und Zustand der öffentlichen Fahrzeugeinheiten und andere Beschwerden im Zusammenhang mit dem öffentlichen Landverkehr stoßen, können Sie dies per E-Mail und LTFRB Facebook melden, wo die Beschwerdeführer Bilder und Videos als Beweismittel einsenden, sowie ihre 24/7-Hotline-Nummer - 1342."),
    "feedbackContent2" : MessageLookupByLibrary.simpleMessage("Bei der Einreichung einer Beschwerde fragt der LTFRB die Person, die sich bei der Hotline gemeldet hat, ob sie bereit ist, an einer Anhörung teilzunehmen. Ist dies der Fall, sendet das LTFRB die Beschwerde an die Rechtsabteilung, die die Vorladung des Beschwerdeführers und des Beklagten plant und durchführt. Für Beschwerdeführer, die nicht an einer Anhörung teilnehmen möchten, sendet das LTFRB eine vom Vorsitzenden unterzeichnete Vorladung oder einen Verweis. Das LTFRB wird den Beklagten auffordern, die Gründe zu begründen und zu erklären, warum der Fahrer oder der Betreiber für den gemeldeten Verstoß nicht bestraft werden sollte. Eine Antwort des Fahrers oder Betreibers muss innerhalb von 5 Tagen nach Erhalt der SCO eingehen. Der Beschwerdeführer erhält auch eine Kopie der SCO und des Antwortschreibens des Beklagten. Das Versenden von Vorladungen, SCOs und Verweisschreiben wird über PhilPost abgewickelt."),
    "feedbackTitle" : MessageLookupByLibrary.simpleMessage("Eine Beschwerde einreichen"),
    "followOnFacebook" : MessageLookupByLibrary.simpleMessage("Folge uns auf Facebook"),
    "followOnInstagram" : MessageLookupByLibrary.simpleMessage("Folge uns auf Instagram"),
    "followOnTwitter" : MessageLookupByLibrary.simpleMessage("Folge uns auf Twitter"),
    "instructionDistanceKm" : m0,
    "instructionDistanceMeters" : m1,
    "instructionDurationMinutes" : m2,
    "instructionFarePeso" : m3,
    "instructionRide" : m4,
    "instructionVehicleBus" : MessageLookupByLibrary.simpleMessage("Jeep"),
    "instructionVehicleCar" : MessageLookupByLibrary.simpleMessage("Auto"),
    "instructionVehicleGondola" : MessageLookupByLibrary.simpleMessage("Gondel"),
    "instructionVehicleMicro" : MessageLookupByLibrary.simpleMessage("Mikro"),
    "instructionVehicleMinibus" : MessageLookupByLibrary.simpleMessage("Kleinbus"),
    "instructionVehicleTrufi" : MessageLookupByLibrary.simpleMessage("Trufi"),
    "instructionWalk" : m5,
    "menuAbout" : MessageLookupByLibrary.simpleMessage("Über"),
    "menuAppReview" : MessageLookupByLibrary.simpleMessage("Bewerten Sie die App"),
    "menuConnections" : MessageLookupByLibrary.simpleMessage("Routen anzeigen"),
    "menuFeedback" : MessageLookupByLibrary.simpleMessage("Bericht an LTFRB"),
    "menuOnline" : MessageLookupByLibrary.simpleMessage("Reguläres"),
    "menuShareApp" : MessageLookupByLibrary.simpleMessage("Teile die App"),
    "menuTeam" : MessageLookupByLibrary.simpleMessage("Fahrpreis"),
    "noRouteError" : MessageLookupByLibrary.simpleMessage("Entschuldigung, wir konnten keine Route finden. Was möchten Sie tun?"),
    "noRouteErrorActionCancel" : MessageLookupByLibrary.simpleMessage("Versuchen Sie es mit einem anderen Ziel"),
    "noRouteErrorActionReportMissingRoute" : MessageLookupByLibrary.simpleMessage("Eine fehlende Route melden"),
    "noRouteErrorActionShowCarRoute" : MessageLookupByLibrary.simpleMessage("Route mit dem Auto anzeigen"),
    "readOurBlog" : MessageLookupByLibrary.simpleMessage("Lesen Sie unseren Blog"),
    "searchFailLoadingPlan" : MessageLookupByLibrary.simpleMessage("Fehler beim Laden des Plans."),
    "searchHintDestination" : MessageLookupByLibrary.simpleMessage("Ziel auswählen"),
    "searchHintOrigin" : MessageLookupByLibrary.simpleMessage("Wählen Sie den Startpunkt"),
    "searchItemChooseOnMap" : MessageLookupByLibrary.simpleMessage("Wählen Sie auf der Karte"),
    "searchItemNoResults" : MessageLookupByLibrary.simpleMessage("Keine Ergebnisse"),
    "searchItemYourLocation" : MessageLookupByLibrary.simpleMessage("Ihr Standort"),
    "searchMapMarker" : MessageLookupByLibrary.simpleMessage("Kartenmarkierung"),
    "searchPleaseSelectDestination" : MessageLookupByLibrary.simpleMessage("Ziel aussuchen"),
    "searchPleaseSelectOrigin" : MessageLookupByLibrary.simpleMessage("Herkunft auswählen"),
    "searchTitleFavorites" : MessageLookupByLibrary.simpleMessage("Favoriten"),
    "searchTitlePlaces" : MessageLookupByLibrary.simpleMessage("Setzt"),
    "searchTitleRecent" : MessageLookupByLibrary.simpleMessage("Kürzlich"),
    "searchTitleResults" : MessageLookupByLibrary.simpleMessage("Suchergebnisse"),
    "shareAppText" : m6,
    "tagline" : MessageLookupByLibrary.simpleMessage("Eine Jeepney-Navigation für Pendler mit Android App"),
    "teamContent" : MessageLookupByLibrary.simpleMessage("Wir sind ein internationales Team mit dem Namen Trufi Association, das diese App mit Hilfe vieler Freiwilliger erstellt hat! Möchtest du mithelfen, die Trufi App zu verbessern und Teil unseres Teams sein?"),
    "teamSectionRepresentatives" : m7,
    "teamSectionRoutes" : m8,
    "teamSectionTeam" : m9,
    "teamSectionTranslations" : m10,
    "title" : MessageLookupByLibrary.simpleMessage("Jeepney App"),
    "version" : m11
  };
}
