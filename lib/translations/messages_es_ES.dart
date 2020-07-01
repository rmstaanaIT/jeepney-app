// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a es_ES locale. All the
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
  get localeName => 'es_ES';

  static m0(value) => "${value} km";

  static m1(value) => "${value} m";

  static m2(value) => "${value} min";

  static m4(vehicle, duration, distance, location) => "Viaje en ${vehicle} por ${duration} ( ${distance} ) a ${location}";

  static m5(duration, distance, location) => "Camina ${duration} ( ${distance} ) a ${location}";

  static m6(url) => "Descargue Jeepney App, la aplicación de transporte público para Valenzuela City, en ${url}";

  static m7(representatives) => "Representantes: ${representatives}";

  static m8(routeContributors, osmContributors) => "Rutas: ${routeContributors} y todos los usuarios que subieron rutas a OpenStreetMap, como ${osmContributors}. ¡Contáctanos si quieres unirte a la comunidad OpenStreetMap!";

  static m9(teamMembers) => "Equipo: ${teamMembers}";

  static m10(translators) => "Traducciones: ${translators}";

  static m11(version) => "Versión ${version}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static _notInlinedMessages(_) => <String, Function> {
    "aboutContent" : MessageLookupByLibrary.simpleMessage("Hemos desarrollado esta aplicación para facilitar que las personas utilicen el sistema de transporte en Valenzuela City y sus alrededores."),
    "aboutLicenses" : MessageLookupByLibrary.simpleMessage("Licencias"),
    "alertLocationServicesDeniedMessage" : MessageLookupByLibrary.simpleMessage("Asegúrese de que su dispositivo tenga GPS y que la configuración de Ubicación esté activada."),
    "alertLocationServicesDeniedTitle" : MessageLookupByLibrary.simpleMessage("Ninguna ubicación"),
    "appReviewDialogButtonAccept" : MessageLookupByLibrary.simpleMessage("Escribir un comentario"),
    "appReviewDialogButtonDecline" : MessageLookupByLibrary.simpleMessage("Ahora no"),
    "appReviewDialogContent" : MessageLookupByLibrary.simpleMessage("Apóyanos con una reseña en Google Play Store."),
    "appReviewDialogTitle" : MessageLookupByLibrary.simpleMessage("¿Estás disfrutando de Trufi?"),
    "chooseLocationPageSubtitle" : MessageLookupByLibrary.simpleMessage("Mapa panorámico y zoom debajo del pin"),
    "chooseLocationPageTitle" : MessageLookupByLibrary.simpleMessage("Elige un punto"),
    "commonCancel" : MessageLookupByLibrary.simpleMessage("Cancelar"),
    "commonDestination" : MessageLookupByLibrary.simpleMessage("Destino"),
    "commonError" : MessageLookupByLibrary.simpleMessage("Error"),
    "commonFailLoading" : MessageLookupByLibrary.simpleMessage("Error al cargar datos"),
    "commonGoOffline" : MessageLookupByLibrary.simpleMessage("Salir de línea"),
    "commonGoOnline" : MessageLookupByLibrary.simpleMessage("Ir en línea"),
    "commonNoInternet" : MessageLookupByLibrary.simpleMessage("Sin conexión a Internet."),
    "commonOK" : MessageLookupByLibrary.simpleMessage("Okay"),
    "commonOrigin" : MessageLookupByLibrary.simpleMessage("Origen"),
    "commonUnknownError" : MessageLookupByLibrary.simpleMessage("Error desconocido"),
    "description" : MessageLookupByLibrary.simpleMessage("La mejor forma de viajar en jeepneys por Valenzuela City."),
    "donate" : MessageLookupByLibrary.simpleMessage("Donar"),
    "errorAmbiguousDestination" : MessageLookupByLibrary.simpleMessage("El planificador de viajes no está seguro de la ubicación a la que desea ir. Seleccione entre las siguientes opciones o sea más específico."),
    "errorAmbiguousOrigin" : MessageLookupByLibrary.simpleMessage("El planificador de viajes no está seguro de la ubicación desde la que desea comenzar. Seleccione entre las siguientes opciones o sea más específico."),
    "errorAmbiguousOriginDestination" : MessageLookupByLibrary.simpleMessage("Tanto el origen como el destino son ambiguos. Seleccione entre las siguientes opciones o sea más específico."),
    "errorNoBarrierFree" : MessageLookupByLibrary.simpleMessage("Tanto el origen como el destino no son accesibles para sillas de ruedas."),
    "errorNoTransitTimes" : MessageLookupByLibrary.simpleMessage("No hay tiempos de tránsito disponibles. La fecha puede ser pasada o muy lejana en el futuro o puede que no haya servicio de tránsito para su viaje en el momento que elija."),
    "errorOutOfBoundary" : MessageLookupByLibrary.simpleMessage("El viaje no es posible. Quizás esté intentando planificar un viaje fuera del límite de datos del mapa."),
    "errorPathNotFound" : MessageLookupByLibrary.simpleMessage("El viaje no es posible. Es posible que su punto de inicio o finalización no sea accesible de manera segura (por ejemplo, puede estar comenzando en una calle residencial conectada solo a una carretera)."),
    "errorServerCanNotHandleRequest" : MessageLookupByLibrary.simpleMessage("La solicitud tiene errores que el servidor no está dispuesto o no puede procesar."),
    "errorServerTimeout" : MessageLookupByLibrary.simpleMessage("El planificador de viajes tarda demasiado en procesar su solicitud. Por favor, inténtelo de nuevo más tarde."),
    "errorServerUnavailable" : MessageLookupByLibrary.simpleMessage("Lo sentimos. El planificador de viajes no está disponible temporalmente. Por favor, inténtelo de nuevo más tarde."),
    "errorTrivialDistance" : MessageLookupByLibrary.simpleMessage("El origen está a una distancia trivial del destino."),
    "errorUnknownDestination" : MessageLookupByLibrary.simpleMessage("El destino es desconocido. ¿Puedes ser un poco más descriptivo?"),
    "errorUnknownOrigin" : MessageLookupByLibrary.simpleMessage("El origen es desconocido. ¿Puedes ser un poco más descriptivo?"),
    "errorUnknownOriginDestination" : MessageLookupByLibrary.simpleMessage("Tanto el origen como el destino son desconocidos. ¿Puedes ser un poco más descriptivo?"),
    "feedbackContent" : MessageLookupByLibrary.simpleMessage("¿Tiene quejas o desea presentar informes de jeepneys de servicios públicos (PUJ) en mora? Asegúrese de agregar el número de placa y el número de contacto *, para que podamos responderle."),
    "feedbackTitle" : MessageLookupByLibrary.simpleMessage("Presentar una queja"),
    "followOnFacebook" : MessageLookupByLibrary.simpleMessage("Síguenos en Facebook"),
    "followOnInstagram" : MessageLookupByLibrary.simpleMessage("Síguenos en Instagram"),
    "followOnTwitter" : MessageLookupByLibrary.simpleMessage("Síguenos en Twitter"),
    "instructionDistanceKm" : m0,
    "instructionDistanceMeters" : m1,
    "instructionDurationMinutes" : m2,
    "instructionRide" : m4,
    "instructionVehicleBus" : MessageLookupByLibrary.simpleMessage("todoterreno"),
    "instructionVehicleCar" : MessageLookupByLibrary.simpleMessage("Coche"),
    "instructionVehicleGondola" : MessageLookupByLibrary.simpleMessage("Góndola"),
    "instructionVehicleMicro" : MessageLookupByLibrary.simpleMessage("Micro"),
    "instructionVehicleMinibus" : MessageLookupByLibrary.simpleMessage("Microbús"),
    "instructionVehicleTrufi" : MessageLookupByLibrary.simpleMessage("Trufi"),
    "instructionWalk" : m5,
    "menuAbout" : MessageLookupByLibrary.simpleMessage("Acerca de"),
    "menuAppReview" : MessageLookupByLibrary.simpleMessage("Califica la aplicación"),
    "menuConnections" : MessageLookupByLibrary.simpleMessage("Mostrar rutas"),
    "menuFeedback" : MessageLookupByLibrary.simpleMessage("Informar a LTFRB"),
    "menuOnline" : MessageLookupByLibrary.simpleMessage("En línea"),
    "menuShareApp" : MessageLookupByLibrary.simpleMessage("Comparte la aplicación"),
    "menuTeam" : MessageLookupByLibrary.simpleMessage("Equipo"),
    "noRouteError" : MessageLookupByLibrary.simpleMessage("Lo sentimos, no pudimos encontrar una ruta. ¿Qué quieres hacer?"),
    "noRouteErrorActionCancel" : MessageLookupByLibrary.simpleMessage("Prueba otro destino"),
    "noRouteErrorActionReportMissingRoute" : MessageLookupByLibrary.simpleMessage("Informar una ruta faltante"),
    "noRouteErrorActionShowCarRoute" : MessageLookupByLibrary.simpleMessage("Mostrar ruta en coche"),
    "readOurBlog" : MessageLookupByLibrary.simpleMessage("Lee nuestro blog"),
    "searchFailLoadingPlan" : MessageLookupByLibrary.simpleMessage("Error al cargar el plan."),
    "searchHintDestination" : MessageLookupByLibrary.simpleMessage("Elige destino"),
    "searchHintOrigin" : MessageLookupByLibrary.simpleMessage("Elige un punto de partida"),
    "searchItemChooseOnMap" : MessageLookupByLibrary.simpleMessage("Elige en el mapa"),
    "searchItemNoResults" : MessageLookupByLibrary.simpleMessage("No hay resultados"),
    "searchItemYourLocation" : MessageLookupByLibrary.simpleMessage("Tu ubicación"),
    "searchMapMarker" : MessageLookupByLibrary.simpleMessage("Marcador de mapa"),
    "searchPleaseSelectDestination" : MessageLookupByLibrary.simpleMessage("Seleccionar destino"),
    "searchPleaseSelectOrigin" : MessageLookupByLibrary.simpleMessage("Seleccionar origen"),
    "searchTitleFavorites" : MessageLookupByLibrary.simpleMessage("Favoritos"),
    "searchTitlePlaces" : MessageLookupByLibrary.simpleMessage("Lugares"),
    "searchTitleRecent" : MessageLookupByLibrary.simpleMessage("Reciente"),
    "searchTitleResults" : MessageLookupByLibrary.simpleMessage("Resultados de la búsqueda"),
    "shareAppText" : m6,
    "tagline" : MessageLookupByLibrary.simpleMessage("Transporte público en Valenzuela City"),
    "teamContent" : MessageLookupByLibrary.simpleMessage("Somos un equipo internacional llamado Trufi Association y hemos desarrollado esta app con la ayuda de muchos voluntarios. ¿Quieres mejorar la Trufi App y ser parte de nuestro equipo?"),
    "teamSectionRepresentatives" : m7,
    "teamSectionRoutes" : m8,
    "teamSectionTeam" : m9,
    "teamSectionTranslations" : m10,
    "title" : MessageLookupByLibrary.simpleMessage("Jeepney App"),
    "version" : m11
  };
}
