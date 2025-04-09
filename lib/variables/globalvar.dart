import 'package:flutter/material.dart';

int languageStatus = 0;
const String appName = "MD Exam";

String get shareText => languageStatus == 0
    ? "Estoy usando MD Exam para enterarte de lo ultimo de examenes, puedes bajar la app en Google Play o Apple Store"
    : "I'm using MD Exam to stay updated on the latest exams. You can download the app from Google Play or Apple Store";

String get appHomeTitle => languageStatus==0 ? "Banco de preguntas para el examen de residencias médicas":"Question bank for the medical residency exam";

String get appHomeWelcome => languageStatus == 0 ? "Te damos la bienvenida" : "Welcome";

String get appMembershipTitle => languageStatus == 0 ? "Planes de suscripción" : "Subscription plans";
String get appMembershipDaysPreTitle => languageStatus == 0 ? "Te quedan" : "You have";
String get appMembershipDaysSubTitle => languageStatus == 0 ? "días de suscripción" : "subscription days";
String get appMembershipDays0Title => languageStatus == 0 ? "No tienes más días de suscripción." : "You have no more subscription days.";

String get menuContentTitle => languageStatus == 0 ? "CONTENIDO" : "CONTENT";
String get menuCPanelTitle => languageStatus == 0 ? "ADMINISTRACION" : "ADMINISTRATION";
String get menuContactUSTitle => languageStatus == 0 ? "CONTACTO" : "CONTACT";
String get menuContactUSWhatsappTitle => languageStatus == 0 ? "Whatsapp" : "Whatsapp";
String get menuLnaguagetitle => languageStatus == 0 ? "Idioma" : "Language";

String get menuCPanelUserAddTitle => languageStatus == 0 ? "Nuevo Usuario" : "New User";
String get menuCPanelUserLoginTitle => languageStatus == 0 ? "Ingresar" : "Login";
String get menuCPanelUserListTitle => languageStatus == 0 ? "Usuarios" : "Users";
String get menuCPanelUserLostPasswordTitle => languageStatus == 0 ? "Olvidé la contraseña" : "Forgot Password";
String get menuCPanelUserLogoutTitle => languageStatus == 0 ? "Salir" : "Logout";
String get menuCPanelUserDeleteTitle => languageStatus == 0 ? "Eliminar cuenta" : "Delete Account";

String get menuABMListTitle => languageStatus == 0 ? "MANTENIMIENTO" : "MAINTENANCE";
String get menuCityTitle => languageStatus == 0 ? "Ciudades" : "Cities";
String get menuPublicationCategorieTitle => languageStatus == 0 ? "Categorías" : "Categories";
String get menuVehicleTypeTitle => languageStatus == 0 ? "Tipo de Vehículo" : "Vehicle Type";
String get menuPaymentMethodTitle => languageStatus == 0 ? "Métodos de Pago" : "Payment Methods";
String get menuStreamingPlatformTitle => languageStatus == 0 ? "Plataformas de Streaming" : "Streaming Platforms";
String get menuArtistTypeTitle => languageStatus == 0 ? "Tipo de Artistas" : "Artist Type";
String get menuStampTitle => languageStatus == 0 ? "Sellos" : "Labels";
String get menuGenderTitle => languageStatus == 0 ? "Generos" : "Genres";
String get menuLanguageTitle => languageStatus == 0 ? "Idiomas" : "Languages";
String get menuAlbumFormatTitle => languageStatus == 0 ? "Formatos de Album" : "Album Formats";
String get menuPriceCategoryTitle => languageStatus == 0 ? "Categorías de Precios" : "Price Categories";
String get menuLicenseTypeTitle => languageStatus == 0 ? "Tipos de Licencias" : "License Types";
String get menuTerritoryTitle => languageStatus == 0 ? "Territorios" : "Territories";
String get menuCountryTitle => languageStatus == 0 ? "Paises" : "Countries";
String get menuArtistCommissionHistoryConceptTitle => languageStatus == 0 ? "Conceptos Comisiones" : "Commission Concepts";
String get menuCreditCardTitle => languageStatus == 0 ? "Mis tarjetas" : "My Credit Cards";
String get menuParameterTitle => languageStatus == 0 ? "Parámetros" : "Parameters";
String get menuPublicationStatuTitle => languageStatus == 0 ? "Estados de la Publicación" : "Publication Status";
String get menuReviewTellUsTitle => languageStatus == 0 ? "Reseña Cuéntanos" : "Review - Tell Us";
String get menu1095AFormTitle => languageStatus == 0 ? "formulario 1095-A" : "Form 1095-A";
String get menuWorkWithUsTitle => languageStatus == 0 ? "Trabaja con Nosotros" : "Work With Us";

String get menuProfilerListTitle => languageStatus == 0 ? "PERFILES" : "PROFILES";
String get menuProfilerCommerceTitle => languageStatus == 0 ? "Managers" : "Managers";
String get menuProfilerDeliveryTitle => languageStatus == 0 ? "Deliverys" : "Delivery";
String get menuProfilerCustomerTitle => languageStatus == 0 ? "Clientes" : "Customers";

String get menuProfilerAdministratorMembershipListTitle => languageStatus == 0 ? "Membresias" : "Memberships";
String get menuProfilerAdministratorCategoryListTitle => languageStatus == 0 ? "Categorías/Etiquetas" : "Categories/Tags";
String get menuProfilerAdministratorQuestionListTitle => languageStatus == 0 ? "Preguntas/Respuestas" : "Questions/Answers";
String get menuProfilerAdministratorFlashcardCategoryListTitle => languageStatus == 0 ? "(Flashcards) Categorías/Etiquetas" : "(Flashcards) Categories/Tags";
String get menuProfilerAdministratorVideoCategoryListTitle => languageStatus == 0 ? "(Videoclases) Categorías/Etiquetas" : "(Video Classes) Categories/Tags";
String get menuProfilerAdministratorVideoListTitle => languageStatus == 0 ? "(Videoclases) Subir Videoclase" : "(Video Classes) Upload Video";
String get menuProfilerAdministratorFlashcardQuestionListTitle => languageStatus == 0 ? "(Flashcards) Preguntas/Respuestas" : "(Flashcards) Questions/Answers";

String get menuProfilerCustomerListTitle => languageStatus == 0 ? "USUARIO" : "USER";
String get menuProfilerCustomerMyExamsTitle => languageStatus == 0 ? "Cuestionarios realizados" : "Completed Exams";
String get menuProfilerCustomerFlashcardMyExamsTitle => languageStatus == 0 ? "Flashcards realizados" : "Completed Flashcards";
String get menuProfilerCustomerProgressMyExamsTitle => languageStatus == 0 ? "Mi Progreso" : "My Progress";
String get menuProfilerCustomerAboutUsTitle => languageStatus == 0 ? "Nosotros" : "About Us";
String get menuProfilerCustomerFrequentQuestionsTitle => languageStatus == 0 ? "Preguntas frecuentes" : "FAQ";
String get menuProfilerCustomerAgentContactForPhoneTitle => languageStatus == 0 ? "Contactar Agente por Teléfono" : "Contact Agent by Phone";
String get menuProfilerCustomerAgentContactForEmailTitle => languageStatus == 0 ? "Contactar Agente por Email" : "Contact Agent by Email";
String get menuProfilerCustomerReferAFriendTitle => languageStatus == 0 ? "Referir a un amigo" : "Refer a Friend";
String get menuProfilerCustomerReferAFriendSubTitle => languageStatus == 0 ? "GANA 25 DOLARES POR CADA AMIGO QUE REFIERAS" : "EARN \$25 FOR EACH FRIEND YOU REFER";
String get menuProfilerCustomerSecurityPoliticsTitle => languageStatus == 0 ? "Políticas de Seguridad" : "Security Policies";
String get menuProfilerCustomerRefundPoliticsTitle => languageStatus == 0 ? "Políticas de Reembolso" : "Refund Policy";
String get menuProfilerCustomerCancellationPolicyTitle => languageStatus == 0 ? "Políticas de Cancelación" : "Cancellation Policy";
String get menuProfilerCustomerContactTitle => languageStatus == 0 ? "Contactar" : "Contact";

const Color primaryColor = Color.fromRGBO(2, 82, 145, 1);
const Color gridTitleColor = Colors.white;
const Color customBackcolor = Color.fromRGBO(254, 254, 254, 1);

String get preferenceIsLogin => "isLogin";
String get preferenceLoginUsername => "LoginUsername";
String get preferenceAdStart => "AdStartCount";
String get preferencePositionPermissionAccept => "PositionPermissionAccept";

String get abmSaveTitle => languageStatus == 0 ? "Guardar" : "Save";
String get abmBackPressedTitle => languageStatus == 0 ? "Edición" : "Edit";
String get abmBackPressedContent => languageStatus == 0 ? "¿Está seguro que quiere salir?" : "Are you sure you want to exit?";
String get abmBackPressedNo => languageStatus == 0 ? "No" : "No";
String get abmBackPressedYes => languageStatus == 0 ? "Si" : "Yes";

String get abmDeleteTitle => languageStatus == 0 ? "Borrar" : "Delete";
String get abmExhaustedTitle => languageStatus == 0 ? "Marcar como Agotado" : "Mark as Out of Stock";
String get abmVolverAPublicarTitle => languageStatus == 0 ? "Volver a publicar este artículo" : "Republish this item";
String get abmPublicacionDeleteTitle => languageStatus == 0 ? "Eliminar publicación" : "Delete publication";

String get abmDeleteAlertTitle => languageStatus == 0 ? "Registro" : "Record";
String get abmDeleteAlertContent => languageStatus == 0 ? "¿Desea borrar el registro?" : "Do you want to delete the record?";
String get abmDeleteAlertPressedNo => languageStatus == 0 ? "No" : "No";
String get abmDeleteAlertPressedYes => languageStatus == 0 ? "Si" : "Yes";

String get abmExhaustedAlertTitle => languageStatus == 0 ? "Registro" : "Record";
String get abmExhaustedAlertContent => languageStatus == 0 ? "¿Desea marcar como agotado?" : "Do you want to mark it as out of stock?";
String get abmExhaustedAlertPressedNo => languageStatus == 0 ? "No" : "No";
String get abmExhaustedAlertPressedYes => languageStatus == 0 ? "Si" : "Yes";

String get userLoginTitleTitle => languageStatus == 0 ? "Bienvenidos MD Exam" : "Welcome to MD Exam";
String get userLoginCaptionTitle => languageStatus == 0 ? "Anticipa lo dificil gestionando lo facil" : "Anticipate the difficult by managing the simple";
String get userLoginTitle => languageStatus == 0 ? "Iniciar sesión" : "Login";
String get userLoginAddUserTitleTitle => languageStatus == 0 ? "si aún no tienes cuenta" : "if you don't have an account yet";
String get userLoginAddUserTitle2Title => languageStatus == 0 ? "Inscribirse" : "Sign Up";
String get userLoginAddUserTitle => languageStatus == 0 ? "Registrarse" : "Register";
String get userLoginFieldUsernameHint => languageStatus == 0 ? "¿Cuál es su email?" : "What is your email?";
String get userLoginFieldUsernameLabel => languageStatus == 0 ? "Email *" : "Email *";
String get userLoginFieldUsernameError => languageStatus == 0 ? "Debe ingresar un email" : "You must enter an email";
String get userLoginFieldPasswordHint => languageStatus == 0 ? "¿Cual es su contraseña?" : "What is your password?";
String get userLoginFieldPasswordLabel => languageStatus == 0 ? "Contraseña *" : "Password *";
String get userLoginFieldPasswordError => languageStatus == 0 ? "Debe ingresar una contraseña" : "You must enter a password";

String get userLostPasswordTitle => languageStatus == 0 ? "Recuperar Contraseña" : "Recover Password";
String get userLostPasswordSendPassword => languageStatus == 0 ? "Te enviamos las instrucciones para recuperar tu contraseña" : "We sent you the instructions to recover your password";
String get userLostPasswordFieldUsernameHint => languageStatus == 0 ? "¿Cuál es su email?" : "What is your email?";
String get userLostPasswordFieldUsernameLabel => languageStatus == 0 ? "Email *" : "Email *";
String get userLostPasswordFieldUsernameError => languageStatus == 0 ? "Debe ingresar un email" : "You must enter an email";

String get userListTitle => languageStatus == 0 ? "Usuarios" : "Users";
String get userListAddTitle => languageStatus == 0 ? "Agregar usuario" : "Add User";
String get userABMTitle => languageStatus == 0 ? "Usuario" : "User";
String get userABMSaveTitle => languageStatus == 0 ? "Guardar" : "Save";
String get userABMNewSaved => languageStatus == 0 ? "Usuario creado correctamente" : "User created successfully";
String get userABMModifySaved => languageStatus == 0 ? "Usuario modificado correctamente" : "User updated successfully";
String get userABMModifyDelete => languageStatus == 0 ? "Usuario borrado correctamente" : "User deleted successfully";
String get userABMFieldCanListUsersLabel => languageStatus == 0 ? "Puede trabajar con Lista de Usuarios" : "Can manage User List";
String get userABMFieldEnabledLabel => languageStatus == 0 ? "Habilitado" : "Enabled";
String get userABMFieldIsAdministratorLabel => languageStatus == 0 ? "Es Administrador" : "Is Administrator";
String get userABMFieldIsCommerceLabel => languageStatus == 0 ? "Es Manager" : "Is Manager";
String get userABMFieldIsDeliveryLabel => languageStatus == 0 ? "Es Delivery" : "Is Delivery";
String get userABMFieldIsCustomerLabel => languageStatus == 0 ? "Es Cliente" : "Is Customer";
String get userProgressBarNowTitle => languageStatus == 0 ? "Ahora" : "Now";
String get userProgressBarAgoTitle => languageStatus == 0 ? "Hace 30 días" : "30 days ago";

String get userDocumentListTitle => languageStatus == 0 ? "Documentos" : "Documents";
String get userDocumentABMDocumentsTitle => languageStatus == 0 ? "Documentos" : "Documents";
String get userDocumentABMSaveTitle => languageStatus == 0 ? "Guardar" : "Save";
String get userDocumentABMTitle => languageStatus == 0 ? "Documento" : "Document";
String get userDocumentABMNewSaved => languageStatus == 0 ? "Documento creado correctamente" : "Document created successfully";
String get userDocumentABMModifySaved => languageStatus == 0 ? "Documento modificado correctamente" : "Document updated successfully";
String get userDocumentABMModifyDelete => languageStatus == 0 ? "Documento borrado correctamente" : "Document deleted successfully";
String get userDocumentABMFieldTitleHint => languageStatus == 0 ? "Titulo" : "Title";
String get userDocumentABMFieldTitleLabel => userDocumentABMFieldTitleHint;
String get userDocumentABMFieldTitleError => languageStatus == 0 ? "Debe ingresar un Titulo" : "You must enter a title";
String get userDocumentABMFieldIsImageLabel => languageStatus == 0 ? "Es Image" : "Is Image";
String get userDocumentABMFieldFilenameError => languageStatus == 0 ? "Debe agregar un archivo" : "You must upload a file";
String get userDocumentABMSaving => languageStatus == 0 ? "Guardando" : "Saving";
String get userDocumentABMDeleting => languageStatus == 0 ? "Eliminando" : "Deleting";


const String userABMNewNotSelectTypeError =
    "Debe indicar si es Administrador/Manager/Delivery/Cliente";

const String firebaseCustomUserKey = "/appusers";
const String firebaseCustomUserDocumentKey = "/appuserdocuments";
const String firebaseCustomUserMembershipKey = "/appusermemberships";
const String firebaseCustomUserMembershipPurchaseKey =
    "/appusermembershippurchases";
const String firebaseCustomArtistProfilerKey = "/artistprofilers";
const String firebaseCustomCityKey = "/citys";
const String firebaseCustomVehicleTypeKey = "/vehicletypes";
const String firebaseCustomParameterKey = "/parameters";
const String firebaseCustomCreditCardKey = "/creditCards";
const String firebaseCustomAlbumKey = "/albums";
const String firebaseCustomPaymentMethodKey = "/paymentmethods";
const String firebaseCustomPickUpTimeKey = "/pickuptimes";
const String firebaseCustomPublicationKey = "/publications";
const String firebaseCustomZoneKey = "/zones";
const String firebaseCustomServiceKey = "/services";
const String firebaseCustomSaleKey = "/sales";
const String firebaseCustomPublicationStatuKey = "/publicationstatus";
const String firebaseCustomShoppingCartKey = "/shoppingCarts";
const String firebaseCustomPreSaleKey = "/presales";
const String firebaseCustomReviewTellUsKey = "/reviewtelluss";
const String firebaseCustomReviewKey = "/reviews";
const String firebaseCustomFormAddKey = "/formadds";
const String firebaseCustomUserExamKey = "/appuserexams";
const String firebaseCustomCategoryKey = "/categorys";
const String firebaseCustomMembershipKey = "/memberships";
const String firebaseCustomQuestionKey = "/questions";
const String firebaseCustomUserFlashcardExamKey = "/appuserflashcardexams";
const String firebaseCustomFlashcardCategoryKey = "/flashcardcategorys";
const String firebaseCustomFlashcardQuestionKey = "/flashcardquestions";
const String firebaseCustomVideoCategoryKey = "/videocategorys";
const String firebaseCustomVideoKey = "/videos";

const String firebaseCustomArtistPaymentKey = "/artistpayments";
const String firebaseCustomDeliveryStatusKey = "/deliverystatus";
const String firebaseCustomMetricKey = "/metrics";
const String firebaseCustomStreamingPlatformKey = "/streamingplatforms";
const String firebaseCustomArtistTypeKey = "/artisttypes";
const String firebaseCustomStampKey = "/stamps";
const String firebaseCustomGenderKey = "/genders";
const String firebaseCustomLanguageKey = "/languages";
const String firebaseCustomAlbumFormatKey = "/albumformats";
const String firebaseCustomPriceCategoryKey = "/pricecategorys";
const String firebaseCustomLicenseTypeKey = "/licensetypes";
const String firebaseCustomTerritoryKey = "/territorys";
const String firebaseCustomSongKey = "/songs";
const String firebaseCustomArtistStreamingPlatformUploadKey =
    "artiststreamingplatformuploads";
const String firebaseCustomPublicationCategorieKey = "/publicationcategories";
const String firebaseCustomCountryKey = "/countrys";
const String firebaseCustomArtistCommissionHistoryConceptKey =
    "/artistcommissionhistoryconcepts";
const String firebaseCustomArtistCommissionHistoryKey =
    "/artistcommissionhistorys";

const String firebaseCustomCommerceProfilerKey = "/commerceprofilers";
const String firebaseCustomDeliveryProfilerKey = "/deliveryprofilers";
const String firebaseCustomCustomerProfilerKey = "/customerprofilers";

const String firebaseCustomAzulPaymentKey = "/azulPayments";
const String firebaseCustomMessagingTokenKey = "/messagingtokens";
const String firebaseCustomLoginPositionKey = "/loginpositions";
const String postTimePreText = "hace";
const String postTimePosTextMinutes = "minutos";
const String postTimePosTextHours = "horas";
const String postTimePosTextDays = "días";

const String commerceProfilerViewUrlDefault =
    "https://firebasestorage.googleapis.com/v0/b/comagiheadfltdfhgovapp-d4e5b.appsp444ot.com/o/images%2Fcommerceprofilerdefault.png?alt=media&token=0fa28bd1-25aa-4c81-b36c-20cce035cd39";

const String deliveryProfilerViewUrlDefault =
    "https://firebases22torage.go2ogleapis.com/v0/b/comagidfdheafflthgovapp-d4e5b.appsp444ot.com/o/images%2Fcommerceprofilerdefault.png?alt=media&token=0fa28bd1-25aa-4c81-b36c-20cce035cd39";

const String customerProfilerViewUrlDefault =
    "https://firebase3434storage.go3434ogleapis.com/v0/b/comagidfdfhedfaltffhgovapp-d4e5b.appsp444ot.com/o/images%2Fcommerceprofilerdefault.png?alt=media&token=0fa28bd1-25aa-4c81-b36c-20cce035cd39";

const String albumViewUrlDefault =
    "https://firebasestorage.googleapis.com/v0/b/comagihdfealthgovapp-d4e5b.appspot.com/o/images%2Fcommerceprofilerdefault.png?alt=media&token=0fa28bd1-25aa-4c81-b36c-20cce035cd39";

String get commerceProfilerEditTitle => languageStatus == 0 ? "Perfil" : "Profile";
String get commerceProfilerEditFieldNameTitle => languageStatus == 0 ? "Nombre:" : "Name:";
String get commerceProfilerEditFieldNameHintText => languageStatus == 0 ? "Ingresá el nombre del negocio" : "Enter the business name";
String get commerceProfilerEditFieldLastNameTitle => languageStatus == 0 ? "Apellido:" : "Last Name:";
String get commerceProfilerEditFieldLastNameHintText => languageStatus == 0 ? "Ingresá el apellido" : "Enter the last name";
String get commerceProfilerEditFieldEmailTitle => languageStatus == 0 ? "Correo electrónico:" : "Email:";
String get commerceProfilerEditFieldEmailHintText => languageStatus == 0 ? "Ingresá el Correo electrónico" : "Enter the email";
String get commerceProfilerEditFieldBusinessNameTitle => languageStatus == 0 ? "Negocio - Nombre" : "Business - Name";
String get commerceProfilerEditFieldBusinessNameHintText => languageStatus == 0 ? "Ingresá el nombre del negocio" : "Enter the business name";
String get commerceProfilerEditFieldBusinessAddressTitle => languageStatus == 0 ? "Negocio - Dirección" : "Business - Address";
String get commerceProfilerEditFieldBusinessAddressHintText => languageStatus == 0 ? "Ingresá la dirección del negocio" : "Enter the business address";
String get commerceProfilerEditFieldContactPhoneTitle => languageStatus == 0 ? "Teléfono de contacto" : "Contact phone";
String get commerceProfilerEditFieldContactPhoneHintText => languageStatus == 0 ? "Ingresá el teléfono de contacto" : "Enter the contact phone number";
String get commerceProfilerEditFieldLatitudeTitle => languageStatus == 0 ? "Latitud" : "Latitude";
String get commerceProfilerEditFieldLatitudeHintText => languageStatus == 0 ? "Ingresá la latitud" : "Enter the latitude";
String get commerceProfilerEditFieldLongitudeTitle => languageStatus == 0 ? "Longitud" : "Longitude";
String get commerceProfilerEditFieldLongitudeHintText => languageStatus == 0 ? "Ingresá la longitud" : "Enter the longitude";
String get commerceProfilerEditFieldPhoneTitle => languageStatus == 0 ? "Teléfono:" : "Phone:";
String get commerceProfilerEditFieldPhoneHintText => languageStatus == 0 ? "Ingresá el Teléfono" : "Enter the phone number";
String get commerceProfilerEditFieldAddressTitle => languageStatus == 0 ? "Dirección:" : "Address:";
String get commerceProfilerEditFieldAddressHintText => languageStatus == 0 ? "Ingresá la Dirección" : "Enter the address";
String get commerceProfilerEditFieldCityTitle => languageStatus == 0 ? "Ciudad:" : "City:";
String get commerceProfilerEditSaveTitle => languageStatus == 0 ? "Guardar" : "Save";
String get commerceProfilerEditSaved => languageStatus == 0 ? "Perfil modificado correctamente" : "Profile updated successfully";

String get customerOwnerProductsTitleTitle => languageStatus == 0 ? "Nuestros Productos" : "Our Products";
String get customerHomeSearchTextHintText => languageStatus == 0 ? "¿Que seguro quieres pedir?" : "What insurance do you want to request?";
String get customerHomeFavoritePublicationCategorieTitle => languageStatus == 0 ? "Marcas" : "Brands";
String get customerHomeFavoritePublicationTitle => languageStatus == 0 ? "Repuestos populares" : "Popular Spare Parts";
String get customerHomePublicationTitle => languageStatus == 0 ? "Publicaciones" : "Publications";

String get customerProfilerEditTitle => languageStatus == 0 ? "Perfil" : "Profile";
String get customerProfilerEditFieldNameTitle => languageStatus == 0 ? "Nombre:" : "Name:";
String get customerProfilerEditFieldNameHintText => languageStatus == 0 ? "Ingresá tu nombre" : "Enter your name";
String get customerProfilerEditFieldLastNameTitle => languageStatus == 0 ? "Apellido:" : "Last Name:";
String get customerProfilerEditFieldLastNameHintText => languageStatus == 0 ? "Ingresá tu apellido" : "Enter your last name";
String get customerProfilerEditFieldAddressTitle => languageStatus == 0 ? "Dirección:" : "Address:";
String get customerProfilerEditFieldAddressHintText => languageStatus == 0 ? "Ingresá tu dirección" : "Enter your address";
String get customerProfilerEditFieldContactPhoneTitle => languageStatus == 0 ? "Teléfono:" : "Phone:";
String get customerProfilerEditFieldContactPhoneHintText => languageStatus == 0 ? "Ingresá tu teléfono" : "Enter your phone number";
String get customerProfilerEditFieldPaypalAccountTitle => languageStatus == 0 ? "Paypal:" : "Paypal:";
String get customerProfilerEditFieldPaypalAccountHintText => languageStatus == 0 ? "Ingresá tu cuenta paypal" : "Enter your Paypal account";
String get customerProfilerEditFieldCityTitle => languageStatus == 0 ? "Ciudad:" : "City:";
String get customerProfilerEditFieldCityHintText => languageStatus == 0 ? "Ingresá tu ciudad" : "Enter your city";
String get customerProfilerEditSaveTitle => languageStatus == 0 ? "Guardar" : "Save";
String get customerProfilerEditSaved => languageStatus == 0 ? "Perfil modificado correctamente" : "Profile updated successfully";

String get captureImageGalleryHeroTag => languageStatus == 0 ? "Imagen de Galería" : "Gallery Image";
String get captureImageGalleryTooltip => languageStatus == 0 ? "Seleccione una Imagen de la Galería" : "Select an image from the gallery";
String get captureImageGalleryHeroTag01 => captureImageGalleryHeroTag;
String get captureImageGalleryTooltip01 => captureImageGalleryTooltip;
String get captureImageGalleryHeroTag02 => captureImageGalleryHeroTag;
String get captureImageGalleryTooltip02 => captureImageGalleryTooltip;
String get captureImageGalleryHeroTag03 => captureImageGalleryHeroTag;
String get captureImageGalleryTooltip03 => captureImageGalleryTooltip;

String get captureImageCameraHeroTag => languageStatus == 0 ? "Imagen de Cámara" : "Camera Image";
String get captureImageCameraTooltip => languageStatus == 0 ? "Capture una Imagen con la Cámara" : "Capture an image with the camera";
String get captureImageCameraHeroTag01 => captureImageCameraHeroTag;
String get captureImageCameraTooltip01 => captureImageCameraTooltip;
String get captureImageCameraHeroTag02 => captureImageCameraHeroTag;
String get captureImageCameraTooltip02 => captureImageCameraTooltip;
String get captureImageCameraHeroTag03 => captureImageCameraHeroTag;
String get captureImageCameraTooltip03 => captureImageCameraTooltip;

const String artistProfilerViewUrlDefault =
    "https://firebasestorage.googleapis.com/v0/b/comagihedfalthgovapp-d4e5b.appspot.com/o/images%2Fdeliveryprofilerdefault.png?alt=media&token=1d6a1551-77b1-488d-8b26-1aa626228b56";

String get deliveryProfilerEditTitle => languageStatus == 0 ? "Perfil" : "Profile";
String get deliveryProfilerEditFieldNameTitle => languageStatus == 0 ? "Nombre:" : "Name:";
String get deliveryProfilerEditFieldNameHintText => languageStatus == 0 ? "Ingresá el nombre" : "Enter the name";
String get deliveryProfilerEditFieldLastNameTitle => languageStatus == 0 ? "Apellido:" : "Last Name:";
String get deliveryProfilerEditFieldLastNameHintText => languageStatus == 0 ? "Ingresá el apellido" : "Enter the last name";
String get deliveryProfilerEditFieldContactPhoneTitle => languageStatus == 0 ? "Teléfono:" : "Phone:";
String get deliveryProfilerEditFieldContactPhoneHintText => languageStatus == 0 ? "Ingresá el teléfono" : "Enter the phone number";
String get deliveryProfilerEditFieldVehicleTypeTitle => languageStatus == 0 ? "Tipo de Vehículo:" : "Vehicle Type:";
String get deliveryProfilerEditFieldVehicleTypeHintText => languageStatus == 0 ? "Ingresá el tipo de vehículo" : "Enter the vehicle type";
String get deliveryProfilerEditFieldVehicleMarkTitle => languageStatus == 0 ? "Marca:" : "Brand:";
String get deliveryProfilerEditFieldVehicleMarkHintText => languageStatus == 0 ? "Ingresá la marca del vehículo" : "Enter the vehicle brand";
String get deliveryProfilerEditFieldVehiclePatentTitle => languageStatus == 0 ? "Patente:" : "License Plate:";
String get deliveryProfilerEditFieldVehiclePatentHintText => languageStatus == 0 ? "Ingresá la patente del vehículo" : "Enter the license plate";
String get deliveryProfilerEditFieldCityTitle => languageStatus == 0 ? "Ciudad:" : "City:";
String get deliveryProfilerEditFieldCityHintText => languageStatus == 0 ? "Ingresá la ciudad" : "Enter the city";
String get deliveryProfilerEditFieldEmailTitle => languageStatus == 0 ? "Correo electrónico:" : "Email:";
String get deliveryProfilerEditFieldEmailHintText => languageStatus == 0 ? "Ingresá el correo electrónico" : "Enter the email";
String get deliveryProfilerEditSaveTitle => languageStatus == 0 ? "Guardar" : "Save";
String get deliveryProfilerEditSaved => languageStatus == 0 ? "Perfil modificado correctamente" : "Profile updated successfully";

String get artistProfilerEditTitle => languageStatus == 0 ? "Perfil" : "Profile";
String get artistProfilerEditFieldNameTitle => languageStatus == 0 ? "Nombre:" : "Name:";
String get artistProfilerEditFieldNameHintText => languageStatus == 0 ? "Ingresá el nombre del artista" : "Enter artist's name";
String get artistProfilerEditFieldLastNameTitle => languageStatus == 0 ? "Apellido:" : "Last Name:";
String get artistProfilerEditFieldLastNameHintText => languageStatus == 0 ? "Ingresá el apellido del artista" : "Enter artist's last name";
String get artistProfilerEditFieldDocumentTitle => languageStatus == 0 ? "Documento:" : "Document:";
String get artistProfilerEditFieldDocumentHintText => languageStatus == 0 ? "Ingresá el documento del artista" : "Enter artist's document";
String get artistProfilerEditFieldEmailTitle => languageStatus == 0 ? "Correo electronico:" : "Email:";
String get artistProfilerEditFieldEmailHintText => languageStatus == 0 ? "Ingresá el Correo electronico" : "Enter artist's email";
String get artistProfilerEditFieldPhoneTitle => languageStatus == 0 ? "Teléfono:" : "Phone:";
String get artistProfilerEditFieldPhoneHintText => languageStatus == 0 ? "Ingresá el Teléfono" : "Enter phone number";
String get artistProfilerEditFieldCityTitle => languageStatus == 0 ? "Ciudad:" : "City:";
String get artistProfilerEditFieldCityHintText => languageStatus == 0 ? "Ingesáa la Ciudad" : "Enter the City";
String get artistProfilerEditFieldAddressTitle => languageStatus == 0 ? "Direción:" : "Address:";
String get artistProfilerEditFieldAddressHintText => languageStatus == 0 ? "Ingresá la Direción" : "Enter the address";
String get artistProfilerEditFieldZipCodeTitle => languageStatus == 0 ? "Código Postal:" : "Zip Code:";
String get artistProfilerEditFieldZipCodeHintText => languageStatus == 0 ? "Ingresá el Código Postal" : "Enter the Zip Code";
String get artistProfilerEditFieldPaymentMethodTitle => languageStatus == 0 ? "Método de Pago" : "Payment Method";
String get artistProfilerEditFieldAccountPaymentMethodTitle => languageStatus == 0 ? "Cuenta:" : "Account:";
String get artistProfilerEditFieldAccountPaymentMethodHintText => languageStatus == 0 ? "Ingresá la Cuenta" : "Enter Account";
String get artistProfilerEditFieldAccountBankTitle => languageStatus == 0 ? "Banco:" : "Bank:";
String get artistProfilerEditFieldAccountBankHintText => languageStatus == 0 ? "Ingresá el Banco" : "Enter Bank";
String get artistProfilerEditFieldCountryTitle => languageStatus == 0 ? "Pais" : "Country";
String get artistProfilerEditFieldLanguageTitle => languageStatus == 0 ? "Idioma" : "Language";
String get artistProfilerEditFieldIsCompanyTitle => languageStatus == 0 ? "Es Empresa" : "Is Company";
String get artistProfilerEditFieldCompanyNameTitle => languageStatus == 0 ? "Nombre empresa:" : "Company Name:";
String get artistProfilerEditFieldCompanyNameHintText => languageStatus == 0 ? "Ingresá el Nombre de la empresa" : "Enter company name";
String get artistProfilerEditFieldCompanyTaxNumberTitle => languageStatus == 0 ? "Código Fiscal:" : "Tax Code:";
String get artistProfilerEditFieldCompanyTaxNumberHintText => languageStatus == 0 ? "Ingresá el Código Fiscal" : "Enter Tax Code";
String get artistProfilerEditSaveTitle => languageStatus == 0 ? "Guardar" : "Save";
String get artistProfilerEditSaved => languageStatus == 0 ? "Perfil modificado correctamente" : "Profile updated successfully";

String get serviceStatusModelValueNewCaption => languageStatus == 0 ? "Nuevo" : "New";
String get serviceStatusModelValueAsignCaption => languageStatus == 0 ? "Asignado" : "Assigned";
String get serviceStatusModelValueEndCaption => languageStatus == 0 ? "En Punto/Domicilio" : "At Point/Address";
String get serviceStatusModelValueCancelCaption => languageStatus == 0 ? "Cancelado" : "Canceled";
String get serviceStatusModelValueInPointCaption => languageStatus == 0 ? "En punto" : "At point";
String get serviceStatusModelValueReceivedCaption => languageStatus == 0 ? "Recibido" : "Received";
String get serviceStatusModelValueTakePhotoCaption => languageStatus == 0 ? "Tomar Foto" : "Take Photo";
String get serviceStatusModelValuePhotoTakenCaption => languageStatus == 0 ? "Foto Tomada" : "Photo Taken";

String get deliveryStatusModelValueNewCaption => languageStatus == 0 ? "Recibimos tu pedido" : "We received your order";
String get deliveryStatusModelValueLocalEndCaption => languageStatus == 0 ? "El local preparó tu pedido" : "Store prepared your order";
String get deliveryStatusModelValueDeliveryTakenCaption => languageStatus == 0 ? "Tu pedido está en camino" : "Your order is on the way";
String get deliveryStatusModelValueDeliveryEndCaption => languageStatus == 0 ? "Hemos entregado tu pedido" : "We have delivered your order";
String get deliveryStatusModelValueSaleCancelCaption => languageStatus == 0 ? "Compra cancelada" : "Purchase canceled";

String get artistPaymentStatusModelValueWithoutRequestingCaption => languageStatus == 0 ? "Sin Solicitar" : "Not Requested";
String get artistPaymentStatusModelValueRequestedCaption => languageStatus == 0 ? "Solicitado" : "Requested";
String get artistPaymentStatusModelValuePaidCaption => languageStatus == 0 ? "Pagado" : "Paid";
String get artistPaymentStatusModelValueRejectedCaption => languageStatus == 0 ? "Rechazado" : "Rejected";
String get artistPaymentStatusModelValueCancelErrorCaption => languageStatus == 0 ? "Cancel Error" : "Cancel Error";

String get cityListTitle => languageStatus == 0 ? "Ciudades" : "Cities";
String get cityListAddTitle => languageStatus == 0 ? "Agregar ciudad" : "Add city";
String get cityABMTitle => languageStatus == 0 ? "Ciudad" : "City";
String get cityABMSaveTitle => languageStatus == 0 ? "Guardar" : "Save";
String get cityABMNewSaved => languageStatus == 0 ? "Ciudad creada correctamente" : "City created successfully";
String get cityABMModifySaved => languageStatus == 0 ? "Ciudad modificada correctamente" : "City updated successfully";
String get cityABMModifyDelete => languageStatus == 0 ? "Ciudad borrada correctamente" : "City deleted successfully";
String get cityABMFieldTitleHint => languageStatus == 0 ? "¿Como se llama la ciudad?" : "What is the city name?";
String get cityABMFieldTitleLabel => languageStatus == 0 ? "Descripción" : "Description";
String get cityABMFieldTitleError => languageStatus == 0 ? "Debe ingresar una descripción" : "You must enter a description";
String get cityABMFieldAverageDeliveryTimeHint => languageStatus == 0 ? "¿Tiempo Promedio de Entrega (minutos)?" : "Average Delivery Time (minutes)?";
String get cityABMFieldAverageDeliveryTimeLabel => languageStatus == 0 ? "Tiempo Promedio de Entrega (minutos)" : "Average Delivery Time (minutes)";
String get cityABMFieldAverageDeliveryTimeError => languageStatus == 0 ? "Debe ingresar el tiempo promedio de entrega" : "You must enter the average delivery time";
String get cityABMZoneButtonTitle => languageStatus == 0 ? "Zonas" : "Zones";

String get vehicleTypeListTitle => languageStatus == 0 ? "Tipos de Vehículos" : "Vehicle Types";
String get vehicleTypeABMTitle => languageStatus == 0 ? "Tipo de Vehículo" : "Vehicle Type";
String get vehicleTypeListAddTitle => languageStatus == 0 ? "Agregar tipo de vehículo" : "Add vehicle type";
String get vehicleTypeABMSaveTitle => languageStatus == 0 ? "Guardar" : "Save";
String get vehicleTypeABMNewSaved => languageStatus == 0 ? "Tipo de vehículo creado correctamente" : "Vehicle type created successfully";
String get vehicleTypeABMModifySaved => languageStatus == 0 ? "Tipo de vehículo modificado correctamente" : "Vehicle type updated successfully";
String get vehicleTypeABMModifyDelete => languageStatus == 0 ? "Tipo de vehículo borrado correctamente" : "Vehicle type deleted successfully";
String get vehicleTypeABMFieldTitleHint => languageStatus == 0 ? "¿Como se llama el tipo de vehículo?" : "What is the vehicle type name?";
String get vehicleTypeABMFieldTitleLabel => languageStatus == 0 ? "Descripción" : "Description";
String get vehicleTypeABMFieldTitleError => languageStatus == 0 ? "Debe ingresar una descripción" : "You must enter a description";

String get paymentMethodListTitle => languageStatus == 0 ? "Métodos de Pagos" : "Payment Methods";
String get paymentMethodListAddTitle => languageStatus == 0 ? "Agregar método de pago" : "Add payment method";
String get paymentMethodABMTitle => languageStatus == 0 ? "Método de Pago" : "Payment Method";
String get paymentMethodABMSaveTitle => languageStatus == 0 ? "Guardar" : "Save";
String get paymentMethodABMNewSaved => languageStatus == 0 ? "Método de Pago creado correctamente" : "Payment method created successfully";
String get paymentMethodABMModifySaved => languageStatus == 0 ? "Método de Pago modificado correctamente" : "Payment method updated successfully";
String get paymentMethodABMModifyDelete => languageStatus == 0 ? "Método de Pago borrado correctamente" : "Payment method deleted successfully";
String get paymentMethodABMFieldKey2Hint => languageStatus == 0 ? "¿Como se llama la clave única?" : "What is the unique key name?";
String get paymentMethodABMFieldKey2Label => languageStatus == 0 ? "Clave única" : "Unique key";
String get paymentMethodABMFieldKey2Error => languageStatus == 0 ? "Debe ingresar la clave única" : "You must enter the unique key";
String get paymentMethodABMFieldTitleHint => languageStatus == 0 ? "¿Como se llama el método de pago?" : "What is the payment method name?";
String get paymentMethodABMFieldTitleLabel => languageStatus == 0 ? "Descripción" : "Description";
String get paymentMethodABMFieldTitleError => languageStatus == 0 ? "Debe ingresar una descripción" : "You must enter a description";
String get paymentMethodABMFieldEnabledLabel => languageStatus == 0 ? "Habilitado" : "Enabled";

String get creditCardListTitle => languageStatus == 0 ? "Tarjetas" : "Credit Cards";
String get creditCardListAddTitle => languageStatus == 0 ? "Agregar tarjeta" : "Add card";
String get creditCardABMTitle => languageStatus == 0 ? "Tarjeta" : "Card";
String get creditCardABMSaveTitle => languageStatus == 0 ? "Guardar" : "Save";
String get creditCardABMNewSaved => languageStatus == 0 ? "Tarjeta creada correctamente" : "Card created successfully";
String get creditCardABMModifySaved => languageStatus == 0 ? "Tarjeta modificada correctamente" : "Card updated successfully";
String get creditCardABMModifyDelete => languageStatus == 0 ? "Tarjeta borrada correctamente" : "Card deleted successfully";
String get creditCardABMFieldNumberHint => languageStatus == 0 ? "¿Cual es el número de tarjeta?" : "What is the card number?";
String get creditCardABMFieldNumberLabel => languageStatus == 0 ? "Número de tarjeta" : "Card Number";
String get creditCardABMFieldNumberError => languageStatus == 0 ? "Debe ingresar un número de tarjeta" : "You must enter a card number";
String get creditCardABMFieldHeadlineHint => languageStatus == 0 ? "¿Como se llama el titular de la tarjeta?" : "What is the cardholder's name?";
String get creditCardABMFieldHeadlineLabel => languageStatus == 0 ? "Titular (Nombre/Apellido)" : "Cardholder (Name/Surname)";
String get creditCardABMFieldHeadlineError => languageStatus == 0 ? "Debe ingresar un titular de la tarjeta" : "You must enter a cardholder";
String get creditCardABMFieldExpirationMonthHint => languageStatus == 0 ? "Mes de Expiración de la tarjeta" : "Card Expiration Month";
String get creditCardABMFieldExpirationMonthLabel => languageStatus == 0 ? "Mes de Expiración" : "Expiration Month";
String get creditCardABMFieldExpirationMonthError => languageStatus == 0 ? "Debe ingresar un mes de expiración" : "You must enter an expiration month";
String get creditCardABMFieldExpirationYearHint => languageStatus == 0 ? "Año de Expiración de la tarjeta" : "Card Expiration Year";
String get creditCardABMFieldExpirationYearLabel => languageStatus == 0 ? "Año de Expiración" : "Expiration Year";
String get creditCardABMFieldExpirationYearError => languageStatus == 0 ? "Debe ingresar un año de expiración" : "You must enter an expiration year";
String get creditCardABMFieldVerificationDigitHint => languageStatus == 0 ? "Dígito Seguridad" : "Security Code";
String get creditCardABMFieldVerificationDigitLabel => languageStatus == 0 ? "Dígito Seguridad" : "Security Code";
String get creditCardABMFieldVerificationDigitError => languageStatus == 0 ? "Debe ingresar el Dígito seguridad" : "You must enter the security code";

const String publicationPriceUnit = "RD\$";
// Continuation of globalvar.dart with localization support

String get publicationABMFieldCaptionHint => languageStatus == 0 ? "¿Titulo de la publicación?" : "Publication title?";
String get publicationABMFieldCaptionLabel => languageStatus == 0 ? "Título (Español)" : "Title (English)";
String get publicationABMFieldCaptionError => languageStatus == 0 ? "Debe ingresar un título" : "You must enter a title";

String get publicationABMFieldBodyHint => languageStatus == 0 ? "¿Detalles?" : "Details?";
String get publicationABMFieldBodyLabel => languageStatus == 0 ? "Detalles (Español)" : "Details (English)";
String get publicationABMFieldBodyError => languageStatus == 0 ? "Debe ingresar un detalle" : "You must enter details";

String get publicationABMFieldIsEnabledLabel => languageStatus == 0 ? "Habilitado" : "Enabled";

String get publicationABMFieldPositionHint => languageStatus == 0 ? "¿Orden?" : "Order?";
String get publicationABMFieldPositionLabel => languageStatus == 0 ? "Orden" : "Order";
String get publicationABMFieldPositionError => languageStatus == 0 ? "Debe ingresar un orden" : "You must enter an order";

String get publicationABMFieldLink1Title => languageStatus == 0 ? "Link 1" : "Link 1";
String get publicationABMFieldLink1CaptionHint => languageStatus == 0 ? "Link 1 - Titulo" : "Link 1 - Title";
String get publicationABMFieldLink1CaptionLabel => languageStatus == 0 ? "Link 1 - Titulo" : "Link 1 - Title";
String get publicationABMFieldLink1CaptionError => languageStatus == 0 ? "Debe ingresar el titulo del Link1" : "You must enter Link 1 title";

String get publicationABMFieldLink2Title => languageStatus == 0 ? "Link 2" : "Link 2";
String get publicationABMFieldLink2CaptionHint => languageStatus == 0 ? "Link 2 - Titulo" : "Link 2 - Title";
String get publicationABMFieldLink2CaptionLabel => languageStatus == 0 ? "Link 2 - Titulo" : "Link 2 - Title";
String get publicationABMFieldLink2CaptionError => languageStatus == 0 ? "Debe ingresar el titulo del Link2" : "You must enter Link 2 title";

String get publicationABMFieldLink3Title => languageStatus == 0 ? "Link 3" : "Link 3";
String get publicationABMFieldLink3CaptionHint => languageStatus == 0 ? "Link 3 - Titulo" : "Link 3 - Title";
String get publicationABMFieldLink3CaptionLabel => languageStatus == 0 ? "Link 3 - Titulo" : "Link 3 - Title";
String get publicationABMFieldLink3CaptionError => languageStatus == 0 ? "Debe ingresar el titulo del Link3" : "You must enter Link 3 title";

String get publicationABMFieldLink4Title => languageStatus == 0 ? "Link 4" : "Link 4";
String get publicationABMFieldLink4CaptionHint => languageStatus == 0 ? "Link 4 - Titulo" : "Link 4 - Title";
String get publicationABMFieldLink4CaptionLabel => languageStatus == 0 ? "Link 4 - Titulo" : "Link 4 - Title";
String get publicationABMFieldLink4CaptionError => languageStatus == 0 ? "Debe ingresar el titulo del Link4" : "You must enter Link 4 title";

String get publicationABMFieldLink5Title => languageStatus == 0 ? "Link 5" : "Link 5";
String get publicationABMFieldLink5CaptionHint => languageStatus == 0 ? "Link 5 - Titulo" : "Link 5 - Title";
String get publicationABMFieldLink5CaptionLabel => languageStatus == 0 ? "Link 5 - Titulo" : "Link 5 - Title";
String get publicationABMFieldLink5CaptionError => languageStatus == 0 ? "Debe ingresar el titulo del Link5" : "You must enter Link 5 title";


const String publicationABMFieldLinkUrlHint = "Url";
const String publicationABMFieldLinkUrlLabel = "Url";

// Continuation of globalvar.dart with localization for publication and pickup time

String get publicationABMFieldDescriptionHint => languageStatus == 0 ? "¿Descripción de la publicación?" : "Publication description?";
String get publicationABMFieldDescriptionLabel => languageStatus == 0 ? "Descripción" : "Description";
String get publicationABMFieldDescriptionError => languageStatus == 0 ? "Debe ingresar una descripción" : "You must enter a description";

String get publicationABMFieldPriceHint => languageStatus == 0 ? "¿precio?" : "Price?";
String get publicationABMFieldPriceLabel => languageStatus == 0 ? "Precio" : "Price";
String get publicationABMFieldPriceError => languageStatus == 0 ? "Debe ingresar un precio" : "You must enter a price";

String get publicationABMFieldPublicationCategorieHint => languageStatus == 0 ? "¿Categoría?" : "Category?";
String get publicationABMFieldPublicationCategorieLabel => languageStatus == 0 ? "Categoría" : "Category";
String get publicationABMFieldPublicationCategorieError => languageStatus == 0 ? "Debe ingresar una categoría" : "You must enter a category";

String get publicationABMFieldPublicationStatuHint => languageStatus == 0 ? "¿Estado?" : "Status?";
String get publicationABMFieldPublicationStatuLabel => languageStatus == 0 ? "Estado" : "Status";
String get publicationABMFieldPublicationStatuError => languageStatus == 0 ? "Debe ingresar un estado" : "You must enter a status";

String get publicationABMFieldStockHint => languageStatus == 0 ? "¿Disponibilidad?" : "Availability?";
String get publicationABMFieldStockLabel => languageStatus == 0 ? "Disponibilidad" : "Availability";
String get publicationABMFieldStockError => languageStatus == 0 ? "Debe ingresar la disponibilidad" : "You must enter availability";

String get publicationABMFieldImage01Error => languageStatus == 0 ? "Debe asociar una imagen" : "You must attach an image";

String get publicationListTitle => languageStatus == 0 ? "Tus publicaciones" : "Your publications";
String get publicationListAddTitle => languageStatus == 0 ? "Agregar publicación" : "Add publication";
String get publicationABMTitle => languageStatus == 0 ? "Publicación" : "Publication";
String get publicationABMSaveTitle => languageStatus == 0 ? "Guardar" : "Save";
String get publicationABMNewSaved => languageStatus == 0 ? "Publicación creada correctamente" : "Publication created successfully";
String get publicationABMModifySaved => languageStatus == 0 ? "Publicación modificada correctamente" : "Publication updated successfully";
String get publicationABMModifyDelete => languageStatus == 0 ? "Publicación borrada correctamente" : "Publication deleted successfully";
String get publicationABMModifyExhausted => languageStatus == 0 ? "Publicación marcada como agotada correctamente" : "Publication marked as out of stock successfully";

String get commerceSalesToPreparateListTitle => languageStatus == 0 ? "Ventas a Preparar" : "Sales to Prepare";

String get customerSalesMyShoppingListTitle => languageStatus == 0 ? "Mis pedidos" : "My Orders";
String get customerSalesMyShoppingTab1 => languageStatus == 0 ? "Pedidos en curso" : "Ongoing Orders";
String get customerSalesMyShoppingTab2 => languageStatus == 0 ? "Pedidos anteriores" : "Previous Orders";
String get customerSalesMyShoppingSuPedido => languageStatus == 0 ? "Su pedido será entregado entre" : "Your order will be delivered between";
String get customerSalesMyShoppingEntregaCost => languageStatus == 0 ? "a cargo de MD Exam" : "by MD Exam";
String get customerSalesMyShoppingReceiptView => languageStatus == 0 ? "Ver recibo" : "View receipt";

String get publicationABMPhoto01Title => languageStatus == 0 ? "Foto 1" : "Photo 1";
String get publicationABMPhoto02Title => languageStatus == 0 ? "Foto 2" : "Photo 2";
String get publicationABMPhoto03Title => languageStatus == 0 ? "Foto 3" : "Photo 3";

String get publicationSaving => languageStatus == 0 ? "Guardando publicación" : "Saving publication";
String get publicationDeleting => languageStatus == 0 ? "Borrando publicación" : "Deleting publication";

String get pickUpTimeListTitle => languageStatus == 0 ? "Horas de recogidas" : "Pick-up Times";
String get pickUpTimeListAddTitle => languageStatus == 0 ? "Agregar hora de recogida" : "Add pick-up time";
String get pickUpTimeABMTitle => languageStatus == 0 ? "Hora de recogida" : "Pick-up Time";
String get pickUpTimeABMSaveTitle => languageStatus == 0 ? "Guardar" : "Save";
String get pickUpTimeABMNewSaved => languageStatus == 0 ? "Hora de recogida creada correctamente" : "Pick-up time created successfully";
String get pickUpTimeABMModifySaved => languageStatus == 0 ? "Hora de recogida modificada correctamente" : "Pick-up time updated successfully";
String get pickUpTimeABMModifyDelete => languageStatus == 0 ? "Hora de recogida borrada correctamente" : "Pick-up time deleted successfully";
String get pickUpTimeABMFieldTitleHint => languageStatus == 0 ? "¿Como se llama la hora de recogida?" : "What is the name of the pick-up time?";
String get pickUpTimeABMFieldTitleLabel => languageStatus == 0 ? "Descripción" : "Description";
String get pickUpTimeABMFieldTitleError => languageStatus == 0 ? "Debe ingresar una descripción" : "You must enter a description";
String get pickUpTimeABMFieldMinutesHint => languageStatus == 0 ? "¿Minutos de hora de recogida?" : "Pick-up time minutes?";
String get pickUpTimeABMFieldMinutesLabel => languageStatus == 0 ? "Minutos" : "Minutes";
String get pickUpTimeABMFieldMinutesError => languageStatus == 0 ? "Debe ingresar los minutos" : "You must enter the minutes";


String get zoneListTitle => languageStatus == 0 ? "Zonas" : "Zones";
String get zoneListAddTitle => languageStatus == 0 ? "Agregar zona" : "Add zone";
String get zoneABMTitle => languageStatus == 0 ? "Zona" : "Zone";
String get zoneABMSaveTitle => languageStatus == 0 ? "Guardar" : "Save";
String get zoneABMNewSaved => languageStatus == 0 ? "Zona creada correctamente" : "Zone created successfully";
String get zoneABMModifySaved => languageStatus == 0 ? "Zona modificada correctamente" : "Zone updated successfully";
String get zoneABMModifyDelete => languageStatus == 0 ? "Zona borrada correctamente" : "Zone deleted successfully";
String get zoneABMFieldTitleHint => languageStatus == 0 ? "¿Como se llama la zona?" : "What is the zone name?";
String get zoneABMFieldTitleLabel => languageStatus == 0 ? "Descripción" : "Description";
String get zoneABMFieldTitleError => languageStatus == 0 ? "Debe ingresar una descripción" : "You must enter a description";
String get zoneABMFieldEnabledLabel => languageStatus == 0 ? "Habilitada" : "Enabled";
String get zoneABMFieldPaymentInSiteLabel => languageStatus == 0 ? "Pago en Sitio" : "Payment On Site";
String get zoneABMFieldUnitValueHint => languageStatus == 0 ? "¿Valor de Unidad?" : "Unit Value?";
String get zoneABMFieldUnitValueLabel => languageStatus == 0 ? "Valor de Unidad" : "Unit Value";
String get zoneABMFieldUnitValueError => languageStatus == 0 ? "Debe ingresar el valor de la unidad" : "You must enter unit value";
String get zoneABMFieldDeliveryCommissionHint => languageStatus == 0 ? "¿Cual es la comisión de domiciliario?" : "What is the delivery commission?";
String get zoneABMFieldDeliveryCommissionLabel => languageStatus == 0 ? "Comisión domiciliario" : "Delivery Commission";
String get zoneABMFieldDeliveryCommissionError => languageStatus == 0 ? "Debe ingresar una comisión de domiciliario" : "You must enter a delivery commission";

String get parameterListTitle => languageStatus == 0 ? "Parámetros" : "Parameters";
String get parameterListAddTitle => languageStatus == 0 ? "Agregar parámetro" : "Add parameter";
String get parameterABMTitle => languageStatus == 0 ? "Parámetro" : "Parameter";
String get parameterABMSaveTitle => languageStatus == 0 ? "Guardar" : "Save";
String get parameterABMNewSaved => languageStatus == 0 ? "Parámetro creado correctamente" : "Parameter created successfully";
String get parameterABMModifySaved => languageStatus == 0 ? "Parámetro modificado correctamente" : "Parameter updated successfully";
String get parameterABMModifyDelete => languageStatus == 0 ? "Parámetro borrada correctamente" : "Parameter deleted successfully";
String get parameterABMFieldKey2Hint => languageStatus == 0 ? "¿Como se llama la clave?" : "What is the key name?";
String get parameterABMFieldKey2Label => languageStatus == 0 ? "Clave" : "Key";
String get parameterABMFieldKey2Error => languageStatus == 0 ? "Debe ingresar la clave" : "You must enter the key";
String get parameterABMFieldTitleHint => languageStatus == 0 ? "¿Como se llama el parámetro?" : "What is the parameter name?";
String get parameterABMFieldTitleLabel => languageStatus == 0 ? "Descripción" : "Description";
String get parameterABMFieldTitleError => languageStatus == 0 ? "Debe ingresar una descripción" : "You must enter a description";
String get parameterABMFieldAdditionalHint => languageStatus == 0 ? "¿Como se llama el texto adicional?" : "What is the additional text?";
String get parameterABMFieldAdditionalLabel => languageStatus == 0 ? "Texto Adicional" : "Additional Text";
String get parameterABMFieldAdditionalError => languageStatus == 0 ? "Debe ingresar el texto adicional" : "You must enter additional text";

String get serviceNewButtonTitle => languageStatus == 0 ? "Nuevo domicilio" : "New Delivery";

String get customerPaymentModelValueInSiteCaption => languageStatus == 0 ? "En Sitio" : "On Site";
String get customerPaymentModelValueInvoiceCaption => languageStatus == 0 ? "Factura" : "Invoice";

String get customerFooterCaption => languageStatus == 0 ? "No somos una institución gubernamental" : "We are not a governmental institution";

String get timeToFormatPreText => languageStatus == 0 ? "hace" : "ago";
String get timeToFormatTextMinutes => languageStatus == 0 ? "minutos" : "minutes";
String get timeToFormatTextHours => languageStatus == 0 ? "horas" : "hours";
String get timeToFormatTextDays => languageStatus == 0 ? "días" : "days";

String get albumNewTitle => languageStatus == 0 ? "Nuevo albúm" : "New Album";
String get serviceNewFieldAddressTitle => languageStatus == 0 ? "Direción:" : "Address:";
String get serviceNewFieldAddressHintText => languageStatus == 0 ? "Ingrese la direción" : "Enter the address";
String get serviceNewFieldAddressError => languageStatus == 0 ? "Debe ingresar una direción" : "You must enter an address";
String get serviceNewFieldAdditionalAddress1Title => languageStatus == 0 ? "Barrio | Localidad | Vereda:" : "Neighborhood | District | Hamlet:";
String get serviceNewFieldAdditionalAddress1HintText => languageStatus == 0 ? "Ingrese Barrio | Localidad | Vereda" : "Enter Neighborhood | District | Hamlet";
String get serviceNewFieldAdditionalAddress2Title => languageStatus == 0 ? "Apartamento, Casa o Piso:" : "Apartment, House or Floor:";
String get serviceNewFieldAdditionalAddress2HintText => languageStatus == 0 ? "Ingrese Apartamento, Casa o Piso" : "Enter Apartment, House or Floor";
String get serviceNewFieldProductValueTitle => languageStatus == 0 ? "Valor:" : "Amount:";
String get serviceNewFieldProductValueHintText => languageStatus == 0 ? "¿Valor del Producto?" : "Product amount?";
String get serviceNewFieldProductValueError => languageStatus == 0 ? "Debe ingresar valor del producto" : "You must enter product amount";
String get serviceNewFieldProductValueError2 => serviceNewFieldProductValueError;
String get serviceNewFieldCustomerNameTitle => languageStatus == 0 ? "Nombre del Cliente:" : "Customer Name:";
String get serviceNewFieldCustomerNameHintText => languageStatus == 0 ? "Ingrese el nombre del cliente" : "Enter customer name";
String get serviceNewFieldCustomerCellPhoneTitle => languageStatus == 0 ? "Celular del Cliennte:" : "Customer Phone:";
String get serviceNewFieldCustomerCellPhoneHintText => languageStatus == 0 ? "Ingrese el celular del cliente" : "Enter customer phone";
String get serviceNewFieldPaymentMethodTitle => languageStatus == 0 ? "Método de pago:" : "Payment method:";
String get serviceNewFieldPickUpTimeTitle => languageStatus == 0 ? "Estado del pedido:" : "Order status:";
String get serviceNewFieldCustomerPaymentTitle => languageStatus == 0 ? "Pago cliente:" : "Customer payment:";
String get serviceNewFieldObservationTitle => languageStatus == 0 ? "Observación:" : "Note:";
String get serviceNewFieldObservationHintText => languageStatus == 0 ? "Ingrese una observación" : "Enter a note";
String get albumNewSaved => languageStatus == 0 ? "Nuevo albúm creado correctamente" : "New album created successfully";
String get albumNewSaveTitle => languageStatus == 0 ? "Guardar" : "Save";
String get albumNewSaving => languageStatus == 0 ? "Guardando albúm" : "Saving album";

const String commerceHomeTitle = "Home";
String get commerceHomeServiceViewTitle => languageStatus == 0 ? "Ver más" : "View More";
String get commerceHomeDeliveryWithAsignTitle => languageStatus == 0 ? "Domicilios sin Asignar" : "Unassigned Deliveries";
String get commerceHomeDeliveryFinishedTitle => languageStatus == 0 ? "Domicilios Entregados" : "Delivered Orders";
String get commerceHomeDeliveryMonthTitle => languageStatus == 0 ? "Domicilios del Mes" : "Deliveries of the Month";

String get commerceServicesViewTitle => languageStatus == 0 ? "Domicilios en proceso" : "Deliveries in Progress";

String get commerceResumeTitle => languageStatus == 0 ? "Resumén" : "Summary";
String get commerceResumeLastMonthTitle => languageStatus == 0 ? "Último Mes" : "Last Month";
String get commerceResumeSalesOfTheDayTitle => languageStatus == 0 ? "Ventas del Día" : "Today's Sales";
String get commerceResumeUnbilledTitle => languageStatus == 0 ? "Pendiente de Facturar" : "Pending Billing";

String get commerceProfilerABMTitle => languageStatus == 0 ? "Comercios" : "Businesses";
String get commerceProfilerEditFieldNameError => languageStatus == 0 ? "Nombre" : "Name";
String get commerceProfilerABMModifySaved => languageStatus == 0 ? "Comercio modificado correctamente" : "Business updated successfully";
String get commerceProfilerABMSaveTitle => languageStatus == 0 ? "Guardar" : "Save";

String get administratorServiceTitle => languageStatus == 0 ? "Servicios" : "Services";
String get administratorServicesGridFieldServiceStatusTitle => "";
String get administratorServicesGridFieldCommerceNameTitle => languageStatus == 0 ? "Comercio" : "Business";
String get administratorServicesGridFieldCommerceAddressTitle => languageStatus == 0 ? "Direción" : "Address";
String get administratorServicesGridFieldCommerceCityTitle => languageStatus == 0 ? "Ciudad" : "City";
String get administratorServicesGridFieldCommercePhoneTitle => languageStatus == 0 ? "Teléfono" : "Phone";
String get administratorServicesGridFieldCreateTitle => languageStatus == 0 ? "Fecha" : "Date";
String get administratorServicesGridFieldCustomerNameTitle => languageStatus == 0 ? "Cliente" : "Customer";
String get administratorServicesGridFieldCustomerCellPhoneTitle => languageStatus == 0 ? "Cliente - Teléfono" : "Customer - Phone";
String get administratorServicesGridFieldPaymentMethodTitle => languageStatus == 0 ? "Método de pago" : "Payment Method";
String get administratorServicesGridFieldPickUpTimeTitle => languageStatus == 0 ? "Hora de recogida" : "Pick-up Time";
String get administratorServicesGridFieldPickUpTimeFormatTitle => languageStatus == 0 ? "Hora de recogida" : "Pick-up Time";
String get administratorServicesGridFieldProductValueTitle => languageStatus == 0 ? "Valor producto" : "Product Value";
String get administratorServicesGridFieldDeliveryStartDateFormatTitle => languageStatus == 0 ? "Domiciliario - Inicio" : "Delivery - Start";
String get administratorServicesGridFieldDeliveryDurationInMinutesTitle => languageStatus == 0 ? "Domiciliario - duración" : "Delivery - Duration";
String get administratorServicesGridFieldServiceDetailTitle => languageStatus == 0 ? "Detalle" : "Detail";
String get administratorServicesGridFieldZoneTitleTitle => languageStatus == 0 ? "Zona" : "Zone";
String get administratorServicesGridFieldDeliveryComissionTitle => languageStatus == 0 ? "Domiciliario - Comisión" : "Delivery - Commission";
String get administratorServicesGridFieldDeliveryNameTitle => languageStatus == 0 ? "Domiciliario - Nombre" : "Delivery - First Name";
String get administratorServicesGridFieldDeliveryLastNameTitle => languageStatus == 0 ? "Domiciliario - Apellido" : "Delivery - Last Name";
String get administratorServicesGridFieldDeliveryPhoneTitle => languageStatus == 0 ? "Domiciliario - Teléfono" : "Delivery - Phone";

String get artistPaymentConfirmEditTitle => languageStatus == 0 ? "Editar" : "Edit";
String get artistPaymentConfirmFieldDeliveryCommissionTitle => languageStatus == 0 ? "Comisión" : "Commission";
String get artistPaymentConfirmFieldDeliveryCommissionHintText => languageStatus == 0 ? "Comisión" : "Commission";
String get artistPaymentConfirmFieldArtistCommissionError => languageStatus == 0 ? "Debe ingresar una comisión" : "You must enter a commission";
String get artistPaymentConfirmPressedSave => languageStatus == 0 ? "Guardar" : "Save";
String get artistPaymentConfirmPressedCancel => languageStatus == 0 ? "Cancelar" : "Cancel";//const String administratorCommercesGridFieldZoneButtonTitle = "Zonas";
const String artistPaymentConfirmTotal = "Total: RD\$";
String get artistPaymentConfirmTitle => languageStatus == 0 ? "Confirmar Requerimiento" : "Confirm Requirement";
String get deliveryPickUpTimeReadyToCollect => languageStatus == 0 ? "¡Pedido listo para recoger!" : "Order ready for pickup!";

String get deliveryProfilerABMTitle => languageStatus == 0 ? "Domiciliarios" : "Delivery Personnel";
String get deliveryProfilerEditFieldNameError => languageStatus == 0 ? "Nombre" : "Name";
String get deliveryProfilerEditFieldLastNameError => languageStatus == 0 ? "Apellido" : "Last Name";
String get deliveryProfilerABMModifySaved => languageStatus == 0 ? "Domiciliario guardado correctamente" : "Delivery profile saved successfully";
String get deliveryProfilerABMSaveTitle => languageStatus == 0 ? "Guardar" : "Save";

String get paymentMethodABMFieldInSiteLabel => languageStatus == 0 ? "Cobro en sitio" : "On-site Payment";

String get serviceNewSelectCommerceTitle => languageStatus == 0 ? "Comercio" : "Business";
String get serviceViewTitle => languageStatus == 0 ? "Servicio" : "Service";

String get zoneABMFieldCommerceCommissionHint => languageStatus == 0 ? "Comercio - Comisión" : "Business - Commission";
String get zoneABMFieldCommerceCommissionLabel => languageStatus == 0 ? "Comercio - Comisión" : "Business - Commission";
String get zoneABMFieldCommerceCommissionError => languageStatus == 0 ? "Debe ingresar la comisión del comercio" : "You must enter the business commission";

String get deliveryAccountRequestError => languageStatus == 0 ? "Error de solicitud, intentelo nuevamente dentro de unos minutos" : "Request error, please try again in a few minutes";

String get commerceProfilerABMModifyTitle => languageStatus == 0 ? "Modificar" : "Edit";
String get administratorCommerceTitle => languageStatus == 0 ? "Comercios" : "Businesses";

String get administratorCommercesGridFieldNameTitle => languageStatus == 0 ? "Nombre" : "Name";
String get administratorCommercesGridFieldAddressTitle => languageStatus == 0 ? "Direción" : "Address";
String get administratorCommercesGridFieldCityTitle => languageStatus == 0 ? "Ciudad" : "City";
String get administratorCommercesGridFieldEmailTitle => languageStatus == 0 ? "Correo electrónico" : "Email";
String get administratorCommercesGridFieldPhoneTitle => languageStatus == 0 ? "Teléfono" : "Phone";

String get administratorArtistPaymentTitle => languageStatus == 0 ? "Pagos pedientes" : "Pending Payments";
String get administratorArtistPaymentHistoryTitle => languageStatus == 0 ? "Historico" : "History";
String get administratorArtistPaymentsGridFieldCreationDateTitle => languageStatus == 0 ? "Fecha" : "Date";
String get administratorArtistPaymentsGridFieldNameTitle => languageStatus == 0 ? "Nombre" : "First Name";
String get administratorArtistPaymentsGridFieldLastNameTitle => languageStatus == 0 ? "Apellido" : "Last Name";
String get administratorArtistPaymentsGridFieldPhoneTitle => languageStatus == 0 ? "Teléfono" : "Phone";
String get administratorArtistPaymentsGridFieldPaymentMethodTitle => languageStatus == 0 ? "Cuenta" : "Account";
String get administratorArtistPaymentsGridFieldAccountPaymentMethodTitle => languageStatus == 0 ? "Cuenta" : "Account";
String get administratorArtistPaymentsGridFieldAmountTitle => languageStatus == 0 ? "Importe" : "Amount";
String get artistPaymentConfirmViewButtomTitle => languageStatus == 0 ? "Visualizar" : "View";
String get artistPaymentConfirmButtomTitle => languageStatus == 0 ? "Confirmar" : "Confirm";

String get administratorDeliveryTitle => languageStatus == 0 ? "Domiciliarios" : "Delivery Personnel";
String get administratorDeliverysGridFieldNameTitle => languageStatus == 0 ? "Nombre" : "Name";
String get administratorDeliverysGridFieldLastNameTitle => languageStatus == 0 ? "Apellido" : "Last Name";
String get administratorDeliverysGridFieldDocumentTitle => languageStatus == 0 ? "Documento" : "Document";
String get administratorDeliverysGridFieldAddressTitle => languageStatus == 0 ? "Direción" : "Address";
String get administratorDeliverysGridFieldCityTitle => languageStatus == 0 ? "Ciudad" : "City";
String get administratorDeliverysGridFieldEmailTitle => languageStatus == 0 ? "Correo electronico" : "Email";
String get administratorDeliverysGridFieldPhoneTitle => languageStatus == 0 ? "Teléfono" : "Phone";
String get administratorDeliverysGridFieldVehicleTitle => languageStatus == 0 ? "Vehiculo" : "Vehicle";
String get administratorDeliverysGridFieldLicensePlateTitle => languageStatus == 0 ? "Placa" : "License Plate";
String get administratorDeliverysGridFieldDaviplataTitle => languageStatus == 0 ? "Daviplata" : "Daviplata";
String get deliveryProfilerABMModifyTitle => languageStatus == 0 ? "Modificar" : "Edit";

String get administratorHomeTitle => languageStatus == 0 ? "Resumén" : "Summary";
String get administratorHomeDeliveryFinished => languageStatus == 0 ? "Domicilios finalizados" : "Completed Deliveries";
String get administratorHomeDeliveryInProgress => languageStatus == 0 ? "Domicilios en proceso" : "Deliveries in Progress";
String get administratorHomeDeliveryActives => languageStatus == 0 ? "Domiciliarios Activos" : "Active Delivery Personnel";
String get administratorHomeCommerceActives => languageStatus == 0 ? "Comercios MD Exam" : "MD Exam Businesses";
String get administratorHomePaymentPendients => languageStatus == 0 ? "Pagos Pendientes" : "Pending Payments";

String get commerceServicesGridFieldServiceStatusTitle => "";
String get commerceServicesGridFieldCreateTitle => languageStatus == 0 ? "Fecha" : "Date";
String get commerceServicesGridFieldCustomerNameTitle => languageStatus == 0 ? "Cliente - Nombre" : "Customer - Name";
String get commerceServicesGridFieldCustomerCellPhoneTitle => languageStatus == 0 ? "Cliente - Teléfono" : "Customer - Phone";
String get commerceServicesGridFieldPaymentMethodTitle => languageStatus == 0 ? "Método de pago" : "Payment Method";
String get commerceServicesGridFieldPickUpTimeTitle => languageStatus == 0 ? "Hora de recogida" : "Pick-up Time";
String get commerceServicesGridFieldPickUpTimeFormatTitle => languageStatus == 0 ? "Hora de recogida" : "Pick-up Time";
String get commerceServicesGridFieldProductValueTitle => languageStatus == 0 ? "Valor del producto" : "Product Value";
String get commerceServicesGridFieldDeliveryNameTitle => languageStatus == 0 ? "Domiciliario - Nombre" : "Delivery - Name";
String get commerceServicesGridFieldDeliveryLastNameTitle => languageStatus == 0 ? "Domiciliario - Apellido" : "Delivery - Last Name";
String get commerceServicesGridFieldDeliveryPhoneTitle => languageStatus == 0 ? "Domiciliario - Teléfono" : "Delivery - Phone";
String get commerceServicesGridFieldDeliveryStartDateFormatTitle => languageStatus == 0 ? "Domiciliario - Fecha" : "Delivery - Date";
String get commerceServicesGridFieldDeliveryDurationInMinutesTitle => languageStatus == 0 ? "Domiciliario - Duración" : "Delivery - Duration";

String get artistAccountTitle => languageStatus == 0 ? "Estado de cuenta" : "Account Statement";
String get artistAccountBalanceCurrency => languageStatus == 0 ? "Cobrar \$" : "To Collect \$";
String get artistAccountPendingPaymentTitle => languageStatus == 0 ? "Pendiente \$" : "Pending \$";
String get artistAccountRequestFinished => languageStatus == 0 ? "Solicitud finalizada correctamente" : "Request completed successfully";
String get artistAccountRequestDialogTitle => languageStatus == 0 ? "Requerimiento de Cobro" : "Payment Request";
String get artistAccountRequestDialogQuestion => languageStatus == 0 ? "¿Quiere iniciar el requerimiento de cobro?" : "Do you want to start the payment request?";
String get artistAccountRequestDialogYesCaption => languageStatus == 0 ? "Si" : "Yes";
String get artistAccountRequestDialogNoCaption => languageStatus == 0 ? "No" : "No";
String get artistAccountRequestButtomTitle => languageStatus == 0 ? "Cobrar" : "Request Payment";
String get artistAccountListTitle => languageStatus == 0 ? "Ultimos Requerimientos" : "Latest Requests";
String get artistAccountPaymentsGridFieldCreationDateTitle => languageStatus == 0 ? "Fecha" : "Date";
String get artistAccountPaymentsGridFieldImportTitle => languageStatus == 0 ? "Importe" : "Amount";

String get deliveryHomeStatusQuestionTitle => languageStatus == 0 ? "¿Estás disponible?" : "Are you available?";
String get deliveryHomeTitle => languageStatus == 0 ? "Nuevas entregas" : "New Deliveries";
String get deliveryAvailablePublishTitle => languageStatus == 0 ? "Entegas en Proceso" : "Deliveries In Progress";
String get deliveryAvailablePickUpTimeTitle => languageStatus == 0 ? "recogida en " : "pickup at ";
String get deliveryAvailableHandTitle => languageStatus == 0 ? "Tomar" : "Take";
String get deliveryTakenSaved => languageStatus == 0 ? "Servicio tomado correctamente" : "Service taken successfully";
String get deliveryTakenQuestionTitle => languageStatus == 0 ? "Tomar Servicio" : "Take Service";
String get deliveryTakenQuestionContent => languageStatus == 0 ? "¿Desea tomar el servicio?" : "Do you want to take the service?";
String get deliveryTakenQuestionPressedYes => languageStatus == 0 ? "Si" : "Yes";
String get deliveryTakenQuestionPressedNo => languageStatus == 0 ? "No" : "No";

String get deliveryTakenTitle => languageStatus == 0 ? "Entregas en proceso" : "Deliveries In Progress";

String get deliveryTakenHandPhotoTakenToEndQuestionTitle => languageStatus == 0 ? "Finalizar Domicilio" : "Finish Delivery";
String get deliveryTakenHandPhotoTakenToEndQuestionContent => languageStatus == 0 ? "¿Quiere finalirar el envio?" : "Do you want to complete the delivery?";

String get deliveryTakenToEndQuestionTitle => languageStatus == 0 ? "Finalizar Envío" : "Finish Delivery";
String get deliveryTakenToEndQuestionContent => languageStatus == 0 ? "¿Quiere finalizar el envío?" : "Do you want to finish the delivery?";

String get deliveryFinishFieldZoneTitle => languageStatus == 0 ? "Zona" : "Zone";
String get deliveryFinishNotSelectZoneError => languageStatus == 0 ? "Debe ingresar una zona" : "You must select a zone";
String get deliveryTakenHandPressedYes => languageStatus == 0 ? "Si" : "Yes";
String get deliveryTakenHandPressedNo => languageStatus == 0 ? "No" : "No";
String get deliveryFinishSaved => languageStatus == 0 ? "Entrega finalizada" : "Delivery completed";

String get deliveryTakenHandAssignToInPointQuestionTitle => languageStatus == 0 ? "En punto" : "At Location";
String get deliveryTakenHandAssignToInPointQuestionContent => languageStatus == 0 ? "¿Se encuentra en el comercio?" : "Are you at the business location?";
String get deliveryTakenHandAssignToInPointIconTitle => languageStatus == 0 ? "En punto" : "At Point";
String get deliveryTakenHandAssignToInPointSavedMessage => languageStatus == 0 ? "¡Gracias por avisarnos!" : "Thanks for letting us know!";

String get deliveryTakenHandInPointToReceivedQuestionTitle => languageStatus == 0 ? "Recibido" : "Received";
String get deliveryTakenHandInPointToReceivedQuestionContent => languageStatus == 0 ? "¿tienes el producto a entergar?" : "Do you have the product to deliver?";
String get deliveryTakenHandInPointToReceivedIconTitle => languageStatus == 0 ? "Recibido" : "Received";
String get deliveryTakenHandInPointToReceivedSavedMessage => languageStatus == 0 ? "Ahora a entregar el producto" : "Now deliver the product";

String get deliveryTakenHandReceivedToTakePhotoQuestionTitle => languageStatus == 0 ? "Foto" : "Photo";
String get deliveryTakenHandReceivedToTakePhotoQuestionContent => languageStatus == 0 ? "Prepara la cámara" : "Prepare the camera";
String get deliveryTakenHandReceivedToTakePhotoIconTitle => languageStatus == 0 ? "Tomar foto" : "Take Photo";
String get deliveryTakenHandReceivedToTakePhotoSavedMessage => languageStatus == 0 ? "Cámara preparada" : "Camera ready";

String get deliveryTakenHandTakePhotoToPhotoTakenQuestionTitle => languageStatus == 0 ? "Foto" : "Photo";
String get deliveryTakenHandTakePhotoToPhotoTakenQuestionContent => languageStatus == 0 ? "Toma una foto" : "Take a photo";
String get deliveryTakenHandTakePhotoToPhotoTakenIconTitle => languageStatus == 0 ? "Tomar foto" : "Take Photo";
String get deliveryTakenHandTakePhotoToPhotoTakenSavedMessage => languageStatus == 0 ? "Foto tomada" : "Photo taken";
String get deliveryTakenHandPhotoTakenToEndIconTitle => languageStatus == 0 ? "Finalizar domicilio" : "Finish Delivery";
String get deliveryTakenHandPhotoTakenToEndSavedMessage => languageStatus == 0 ? "domicilio finalizado correctamente" : "Delivery completed successfully";

String get administratorNewSelectCommerce => languageStatus == 0 ? "Seleccionar comercio" : "Select Business";
String get serviceNewSelectCommerceCommerceTitle => languageStatus == 0 ? "Comercio" : "Business";
String get serviceNewSelectCommerceStartTitle => languageStatus == 0 ? "Nuevo servicio" : "New Service";

String get serviceViewFieldDateOnlyTitle => languageStatus == 0 ? "Fecha" : "Date";
String get serviceViewFieldDeliveryPhoneTitle => languageStatus == 0 ? "Domiciliario - Teléfono" : "Delivery - Phone";
String get serviceViewFieldDeliveryZoneTitleTitle => languageStatus == 0 ? "Zona" : "Zone";
String get serviceViewFieldDeliveryCommissionTitle => languageStatus == 0 ? "Comisión" : "Commission";
const String customerHomeTitle = "Home";

const String metricCommerceActivesKey = "commerceActives";
const String metricDeliveryAccountBalanceKey = "deliveryAccountBalance";
const String metricDeliveryAccountPendingPaymentKey =
    "deliveryAccountPendingPayment";
const String metricServiceCreatesAllKey = "serviceCreatesAll";
const String metricServiceCreatesYearMonthOneCommerceKey =
    "serviceCreatesOneCommerce";
const String metricServiceCreatesYearMonthKey = "serviceCreates";
const String metricServiceDeliveryPaymentStatusRequestedsKey =
    "serviceDeliveryPaymentStatusRequesteds";
const String metricServiceFinishedAllKey = "serviceFinishedAll";
const String metricServiceFinishedOneCommerceKey = "serviceFinishedOneCommerce";
const String metricServiceImportResumeLastMonthOneCommerceKey =
    "serviceImportResumeLastMonthOneCommerce";
const String metricServiceImportResumeSalesOfTheDayOneCommerceKey =
    "serviceImportResumeSalesOfTheDayOneCommerce";
const String metricServiceInProcessAllKey = "serviceInProcessAll";
const String metricServiceInProcessOneCommerceKey =
    "serviceInProcessOneCommerce";
const String metricServiceWithoutAsignOneCommerceKey =
    "serviceWithoutAsignOneCommerce";

const String metricArtistActivesKey = "artistActives";
const String metricArtistAccountBalanceKey = "artistaccountbalance";
const String metricArtistAccountPendingPaymentKey =
    "artistaccountpendingpayment";
const String metricAdministratorPendingPaymentsKey =
    "administratorpendingpayments";
const String metricAdministratorPendingStreamingPlatformUploadsKey =
    "administratorpendingstreamingplatformuploads";

const String artistPaymentConfirmFinishDialogTitle = "Finalizar Requerimiento";
const String artistPaymentConfirmFinishDialogQuestion =
    "¿Desea finalizar este requerimiento?";
const String artistPaymentConfirmFinishDialogYesCaption = "Si";

const String artistPaymentConfirmFinishDialogNoCaption = "No";
const String artistPaymentConfirmFinishError =
    "Se ha producido un error, intentarlo dentro de unos minutos.";

const String homeMenuAdministratorHomeText = "Inicio";
const String homeMenuAdministratorStreamingPlatformUpdateListText = "Subidas";
const String homeMenuAdministratorCommissionListText = "Comisiones";
const String homeMenuAdministratorRequestCommissionListText = "Solicitudes";
const String homeMenuAdministratorArtistCommissionListText = "Artistas";

const String homeMenuArtistrHomeText = "Inicio";
const String homeMenuArtistWinningText = "Ganancias";
const String homeMenuArtistProfilerText = "Perfil";

const String homeMenuCommerceHomeText = "Inicio";
const String homeMenuCommerceProfilerText = "Perfil";

const String homeMenuDeliveryHomeText = "Inicio";
const String homeMenuDeliveryServiceText = "Servicios";
const String homeMenuDeliveryProfilerText = "Perfil";

String get homeMenuCustomerHomeText => languageStatus == 0 ? "Inicio" : "Home";
String get homeMenuCustomerProfilerText => languageStatus == 0 ? "Perfil" : "Profile";

String get userSimpleAddTitle => languageStatus == 0 ? "Nuevo Usuario" : "New User";

String get userSimpleAddFieldNameHint => languageStatus == 0 ? "Nombre" : "Name";
String get userSimpleAddFieldNameLabel => languageStatus == 0 ? "Nombre:" : "Name:";
String get userSimpleAddFieldNameError => languageStatus == 0 ? "Ingrese el nombre" : "Enter the name";

String get userSimpleAddFieldLastNameHint => languageStatus == 0 ? "Apellido" : "Last Name";
String get userSimpleAddFieldLastNameLabel => languageStatus == 0 ? "Apellido:" : "Last Name:";
String get userSimpleAddFieldLastNameError => languageStatus == 0 ? "Ingrese el apellido" : "Enter the last name";

String get userSimpleAddFieldPhoneHint => languageStatus == 0 ? "Teléfono" : "Phone";
String get userSimpleAddFieldPhoneLabel => languageStatus == 0 ? "Teléfono:" : "Phone:";
String get userSimpleAddFieldPhoneError => languageStatus == 0 ? "Ingrese el teléfono" : "Enter the phone number";

String get userSimpleAddFieldZipCodeHint => languageStatus == 0 ? "Código postal" : "ZIP Code";
String get userSimpleAddFieldZipCodeLabel => languageStatus == 0 ? "Código postal:" : "ZIP Code:";
String get userSimpleAddFieldZipCodeError => languageStatus == 0 ? "Ingrese el código postal" : "Enter the ZIP code";

String get userSimpleAddFieldUsernameHint => languageStatus == 0 ? "Correo electrónico" : "Email";
String get userSimpleAddFieldUsernameLabel => languageStatus == 0 ? "Correo electrónico:" : "Email:";
String get userSimpleAddFieldUsernameError => languageStatus == 0 ? "Ingrese el correo electrónico" : "Enter the email address";

String get userSimpleAddFieldPasswordHint => languageStatus == 0 ? "Contraseña" : "Password";
String get userSimpleAddFieldPasswordLabel => languageStatus == 0 ? "Contraseña:" : "Password:";
String get userSimpleAddFieldPasswordError => languageStatus == 0 ? "Ingrese la contraseña" : "Enter the password";

String get userSimpleAddFieldPasswordReEnterLabel => languageStatus == 0 ? "Ingrese nuevamente la contraseña" : "Re-enter password";
String get userSimpleAddFieldPasswordReEnterHint => languageStatus == 0 ? "Ingrese nuevamente la contraseña" : "Re-enter password";
String get userSimpleAddFieldPasswordReEnterError => languageStatus == 0 ? "Ingrese la contraseña" : "Re-enter the password";

String get userSimpleAddFieldReferenceUsernameLabel => languageStatus == 0 ? "Usuario que lo referencio:" : "Referred by user:";
String get userSimpleAddFieldReferenceUsernameHint => languageStatus == 0 ? "Usuario que lo referencio" : "Referred by user";

String get userSimpleAddFieldBusinessNameLabel => languageStatus == 0 ? "Negocio - Nombre:" : "Business - Name:";
String get userSimpleAddFieldBusinessNameHint => languageStatus == 0 ? "Negocio - Nombre" : "Business - Name";
String get userSimpleAddFieldBusinessNameError => languageStatus == 0 ? "Ingrese el nombre del negocio" : "Enter the business name";

String get userSimpleAddFieldBusinessAddressLabel => languageStatus == 0 ? "Negocio - Dirección:" : "Business - Address:";
String get userSimpleAddFieldBusinessAddressHint => languageStatus == 0 ? "Negocio - Dirección" : "Business - Address";
String get userSimpleAddFieldBusinessAddressError => languageStatus == 0 ? "Ingrese la dirección del negocio" : "Enter the business address";

String get userSimpleAddFieldVehicleTypeLabel => languageStatus == 0 ? "Vehículo - Tipo:" : "Vehicle - Type:";
String get userSimpleAddFieldVehicleTypeHint => languageStatus == 0 ? "Vehículo - Tipo" : "Vehicle - Type";
String get userSimpleAddFieldVehicleTypeError => languageStatus == 0 ? "Ingrese el tipo de vehículo" : "Enter the vehicle type";

String get userSimpleAddFieldVehicleMarkLabel => languageStatus == 0 ? "Vehículo - Marca:" : "Vehicle - Brand:";
String get userSimpleAddFieldVehicleMarkHint => languageStatus == 0 ? "Vehículo - Marca" : "Vehicle - Brand";
String get userSimpleAddFieldVehicleMarkError => languageStatus == 0 ? "Ingrese la marca del vehículo" : "Enter the vehicle brand";

String get userSimpleAddFieldVehiclePatentLabel => languageStatus == 0 ? "Vehículo - Patente:" : "Vehicle - License Plate:";
String get userSimpleAddFieldVehiclePatentHint => languageStatus == 0 ? "Vehículo - Patente" : "Vehicle - License Plate";
String get userSimpleAddFieldVehiclePatentError => languageStatus == 0 ? "Ingrese la patente del vehículo" : "Enter the license plate";

String get userSimpleAddFieldAddressLabel => languageStatus == 0 ? "Dirección:" : "Address:";
String get userSimpleAddFieldAddressHint => languageStatus == 0 ? "Dirección" : "Address";
String get userSimpleAddFieldAddressError => languageStatus == 0 ? "Ingrese la dirección" : "Enter the address";

String get userSimpleAddFieldContactPhoneLabel => languageStatus == 0 ? "Teléfono de Contacto:" : "Contact Phone:";
String get userSimpleAddFieldContactPhoneHint => languageStatus == 0 ? "Teléfono de Contacto" : "Contact Phone";
String get userSimpleAddFieldContactPhoneError => languageStatus == 0 ? "Ingrese el teléfono de contacto" : "Enter the contact phone number";

String get userSimpleAddFieldPaypalAccountLabel => languageStatus == 0 ? "PayPal:" : "PayPal:";
String get userSimpleAddFieldPaypalAccountHint => languageStatus == 0 ? "PayPal" : "PayPal";
String get userSimpleAddFieldPaypalAccountError => languageStatus == 0 ? "Ingrese la cuenta de PayPal" : "Enter the PayPal account";

const String userSimpleAddFieldCityLabel = "Ciudad:";
const String userSimpleAddFieldCityHint = "Ciudad";
const String userSimpleAddFieldCityError = "Ingrese la ciudad";

const String userSimpleAddFieldTOSLabel = "Términos y condiciones";

const String userSimpleAddFieldTOSError =
    "Debe aceptar los términos y condiciones del servicio";

const String userSimpleAddFieldDeliveryDriversLicenseLabel =
    "Su licencia de conducir";
const String userSimpleAddFieldDeliveryDriversLicenseError =
    "Debe subir su licencia de conducir";

const String userSimpleAddFieldDeliveryVehicleInsuranceLabel =
    "Su seguro del vehículo";
const String userSimpleAddFieldDeliveryVehicleInsuranceError =
    "Debe subir el seguro de su vehículo";

const String userSimpleAddFieldDeliveryVehicleWithPlatesLabel =
    "Patente del vehículo";
const String userSimpleAddFieldDeliveryVehicleWithPlatesError =
    "Debe subir la foto de la patente del vehículo";

String get userSimpleAddNewSaving => languageStatus == 0 ? "Creando usuario" : "Creating user";
String get userSimpleAddNewSaved => languageStatus == 0 ? "Usuario creado correctamente" : "User created successfully";
String get userSimpleAddSaveTitle => languageStatus == 0 ? "Crear" : "Create";

String get userSimpleSelectAddCommerceTitle => languageStatus == 0 ? "Nuevo Mánager" : "New Manager";
String get userSimpleSelectAddDeliveryTitle => languageStatus == 0 ? "Nuevo Delivery" : "New Delivery";
String get userSimpleSelectAddCustomerTitle => languageStatus == 0 ? "Nuevo Cliente" : "New Customer";

String get streamingPlatformListTitle => languageStatus == 0 ? "Plataformas de Streamings" : "Streaming Platforms";
String get streamingPlatformListAddTitle => languageStatus == 0 ? "Agregar plataforma de streaming" : "Add streaming platform";
String get streamingPlatformABMTitle => languageStatus == 0 ? "Plataforma de Streaming" : "Streaming Platform";
String get streamingPlatformABMSaveTitle => languageStatus == 0 ? "Guardar" : "Save";
String get streamingPlatformABMNewSaved => languageStatus == 0 ? "Plataforma de streaming creada correctamente" : "Streaming platform created successfully";
String get streamingPlatformABMModifySaved => languageStatus == 0 ? "Plataforma de streaming modificada correctamente" : "Streaming platform updated successfully";
String get streamingPlatformABMModifyDelete => languageStatus == 0 ? "Plataforma de streaming borrada correctamente" : "Streaming platform deleted successfully";
String get streamingPlatformABMFieldTitleHint => languageStatus == 0 ? "¿Como se llama la plataforma de streaming?" : "What is the name of the streaming platform?";
String get streamingPlatformABMFieldTitleLabel => languageStatus == 0 ? "Descripción" : "Description";
String get streamingPlatformABMFieldTitleError => languageStatus == 0 ? "Debe ingresar una descripción" : "Please enter a description";

String get publicationCategorieListTitle => languageStatus == 0 ? "Categorías" : "Categories";
String get publicationCategorieListAddTitle => languageStatus == 0 ? "Agregar Categoría" : "Add Category";
String get publicationCategorieABMTitle => languageStatus == 0 ? "Categoría" : "Category";
String get publicationCategorieABMSaveTitle => languageStatus == 0 ? "Guardar" : "Save";
String get publicationCategorieABMNewSaved => languageStatus == 0 ? "Categoría creada correctamente" : "Category created successfully";
String get publicationCategorieABMModifySaved => languageStatus == 0 ? "Categoría modificada correctamente" : "Category updated successfully";
String get publicationCategorieABMModifyDelete => languageStatus == 0 ? "Categoría borrada correctamente" : "Category deleted successfully";
String get publicationCategorieABMFieldTitleHint => languageStatus == 0 ? "¿Como se llama la Categoría?" : "What is the name of the category?";
String get publicationCategorieABMFieldTitleLabel => languageStatus == 0 ? "Descripción" : "Description";
String get publicationCategorieABMFieldTitleError => languageStatus == 0 ? "Debe ingresar una descripción" : "Please enter a description";
String get publicationCategorieNewSaving => languageStatus == 0 ? "Guardando Categoría" : "Saving Category";
String get publicationCategorieModifySaving => languageStatus == 0 ? "Modificando Categoría" : "Updating Category";
String get publicationCategorieDeleteSaving => languageStatus == 0 ? "Borrando Categoría" : "Deleting Category";
String get publicationCategorieNewFieldUrlPublicationCategorieError => languageStatus == 0 ? "Debe seleccionar una imagen" : "You must select an image";
String get administratorHomeArtistActives => languageStatus == 0 ? "Artistas" : "Artists";
String get administratorHomeStreamingPlatformUpdates => languageStatus == 0 ? "Subidas" : "Uploads";

String get albumStatusModelValueNewCaption => languageStatus == 0 ? "Nuevo" : "New";
String get albumStatusModelValueLaunchRequestedCaption => languageStatus == 0 ? "Solicitud de Lanzamiento" : "Launch Request";
String get albumStatusModelValueFullReleaseCaption => languageStatus == 0 ? "Lanzamiento Completo" : "Full Release";

String get artistTypeListTitle => languageStatus == 0 ? "Tipos de Artistas" : "Artist Types";
String get artistTypeListAddTitle => languageStatus == 0 ? "Agregar tipo de artista" : "Add artist type";
String get artistTypeABMTitle => languageStatus == 0 ? "Tipo de artista" : "Artist Type";
String get artistTypeABMSaveTitle => languageStatus == 0 ? "Guardar" : "Save";
String get artistTypeABMNewSaved => languageStatus == 0 ? "Tipo de artista creado correctamente" : "Artist type created successfully";
String get artistTypeABMModifySaved => languageStatus == 0 ? "Tipo de artista modificado correctamente" : "Artist type updated successfully";
String get artistTypeABMModifyDelete => languageStatus == 0 ? "Tipo de artista borrado correctamente" : "Artist type deleted successfully";
String get artistTypeABMFieldTitleHint => languageStatus == 0 ? "¿Como se llama el tipo de artista?" : "What is the artist type name?";
String get artistTypeABMFieldTitleLabel => languageStatus == 0 ? "Descripción" : "Description";
String get artistTypeABMFieldTitleError => languageStatus == 0 ? "Debe ingresar una descripción" : "Please enter a description";

String get stampListTitle => languageStatus == 0 ? "Sellos" : "Stamps";
String get stampListAddTitle => languageStatus == 0 ? "Agregar sello" : "Add stamp";
String get stampABMTitle => languageStatus == 0 ? "Sello" : "Stamp";
String get stampABMSaveTitle => languageStatus == 0 ? "Guardar" : "Save";
String get stampABMNewSaved => languageStatus == 0 ? "Sello creado correctamente" : "Stamp created successfully";
String get stampABMModifySaved => languageStatus == 0 ? "Sello modificado correctamente" : "Stamp updated successfully";
String get stampABMModifyDelete => languageStatus == 0 ? "Sello borrado correctamente" : "Stamp deleted successfully";
String get stampABMFieldTitleHint => languageStatus == 0 ? "¿Como se llama el sello?" : "What is the stamp name?";
String get stampABMFieldTitleLabel => languageStatus == 0 ? "Descripción" : "Description";
String get stampABMFieldTitleError => languageStatus == 0 ? "Debe ingresar una descripción" : "Please enter a description";

String get genderListTitle => languageStatus == 0 ? "Generos" : "Genres";
String get genderListAddTitle => languageStatus == 0 ? "Agregar genero" : "Add genre";
String get genderABMTitle => languageStatus == 0 ? "Genero" : "Genre";
String get genderABMSaveTitle => languageStatus == 0 ? "Guardar" : "Save";
String get genderABMNewSaved => languageStatus == 0 ? "Genero creado correctamente" : "Genre created successfully";
String get genderABMModifySaved => languageStatus == 0 ? "Genero modificado correctamente" : "Genre updated successfully";
String get genderABMModifyDelete => languageStatus == 0 ? "Genero borrado correctamente" : "Genre deleted successfully";
String get genderABMFieldTitleHint => languageStatus == 0 ? "¿Como se llama el genero?" : "What is the genre name?";
String get genderABMFieldTitleLabel => languageStatus == 0 ? "Descripción" : "Description";
String get genderABMFieldTitleError => languageStatus == 0 ? "Debe ingresar una descripción" : "Please enter a description";

String get languageListTitle => languageStatus == 0 ? "Idiomas" : "Languages";
String get languageListAddTitle => languageStatus == 0 ? "Agregar idioma" : "Add language";
String get languageABMTitle => languageStatus == 0 ? "Idioma" : "Language";
String get languageABMSaveTitle => languageStatus == 0 ? "Guardar" : "Save";
String get languageABMNewSaved => languageStatus == 0 ? "Idioma creado correctamente" : "Language created successfully";
String get languageABMModifySaved => languageStatus == 0 ? "Idioma modificado correctamente" : "Language updated successfully";
String get languageABMModifyDelete => languageStatus == 0 ? "Idioma borrado correctamente" : "Language deleted successfully";
String get languageABMFieldTitleHint => languageStatus == 0 ? "¿Como se llama el idioma?" : "What is the language name?";
String get languageABMFieldTitleLabel => languageStatus == 0 ? "Descripción" : "Description";
String get languageABMFieldTitleError => languageStatus == 0 ? "Debe ingresar una descripción" : "Please enter a description";

const String albumFormatListTitle = "Formatos de Albunes";
const String albumFormatListAddTitle = "Agregar formato de album";
const String albumFormatABMTitle = "Formato de Album";
const String albumFormatABMSaveTitle = "Guardar";
const String albumFormatABMNewSaved = "Formato de Album creado correctamente";
const String albumFormatABMModifySaved =
    "Formato de Album modificado correctamente";
const String albumFormatABMModifyDelete =
    "Formato de Album borrado correctamente";
const String albumFormatABMFieldTitleHint =
    "¿Como se llama el formato de album?";
const String albumFormatABMFieldTitleLabel = "Descripción";
const String albumFormatABMFieldTitleError = "Debe ingresar una descripción";

const String priceCategoryListTitle = "Categorías de Precios";
const String priceCategoryListAddTitle = "Agregar categoría de precio";
const String priceCategoryABMTitle = "Categoría de precio";
const String priceCategoryABMSaveTitle = "Guardar";
const String priceCategoryABMNewSaved =
    "Categoría de precio creado correctamente";
const String priceCategoryABMModifySaved =
    "Categoría de Precio modificado correctamente";
const String priceCategoryABMModifyDelete =
    "Categoría de Precio borrado correctamente";
const String priceCategoryABMFieldTitleHint =
    "¿Como se llama la categoría de precio?";
const String priceCategoryABMFieldTitleLabel = "Descripción";
const String priceCategoryABMFieldTitleError = "Debe ingresar una descripción";

const String licenseTypeListTitle = "Tipos de Licencias";
const String licenseTypeListAddTitle = "Agregar tipo de licencia";
const String licenseTypeABMTitle = "Tipo de licencia";
const String licenseTypeABMSaveTitle = "Guardar";
const String licenseTypeABMNewSaved = "Tipo de licencia creada correctamente";
const String licenseTypeABMModifySaved =
    "Tipo de licencia modificada correctamente";
const String licenseTypeABMModifyDelete =
    "Tipo de licencia borrada correctamente";
const String licenseTypeABMFieldTitleHint =
    "¿Como se llama el tipo de licencia?";
const String licenseTypeABMFieldTitleLabel = "Descripción";
const String licenseTypeABMFieldTitleError = "Debe ingresar una descripción";

const String territoryListTitle = "Territorios";
const String territoryListAddTitle = "Agregar territorio";
const String territoryABMTitle = "Territorio";
const String territoryABMSaveTitle = "Guardar";
const String territoryABMNewSaved = "Territorio creado correctamente";
const String territoryABMModifySaved = "Territorio modificado correctamente";
const String territoryABMModifyDelete = "Territorio borrado correctamente";
const String territoryABMFieldTitleHint = "¿Como se llama el territorio?";
const String territoryABMFieldTitleLabel = "Descripción";
const String territoryABMFieldTitleError = "Debe ingresar una descripción";

const String albumNewButtonTitle = "Nuevo Albúm";
const String albumNewButtomArtistProfilerError =
    "Antes debe completar su perfil";
const String artistAlbumsTitle = "Albúms";
const String artistStreamingPlatformUploadsTitle = "Subidas";
const String artistAlbumsGridFieldNameTitle = "Albúm";
const String artistAlbumsGridFieldSongsTitle = "Pistas";
const String artistAlbumsGridFieldStreamingTitle = "Plataformas Distribución";
const String artistAlbumsGridFieldRemoveTitle = "Eliminar albúm";
const String artistSongsTitle = "Pistas";
const String artistStreamingStartTitle = "Plataformas Distribución";
const String albumSongsViewTitle = "Pistas";
const String albumStreamingPlatformsViewTitle = "Plataformas Distribución";

const String albumRemoveTitle = "Eliminar albúm";
const String albumRemoveDialogTitle = "Albúm";
const String albumRemoveDialogQuestion = "¿Quiere borrar el albúm?";
const String albumRemoveDialogYesCaption = "Si";
const String albumRemoveDialogNoCaption = "No";
const String albumRemoveSaved = "Albúm eliminado correctamente";

const String albumNewFieldTitleTitle = "Titulo";
const String albumNewFieldTitleHintText = "Ingrese el titulo";
const String albumNewFieldTitleError = albumNewFieldTitleHintText;
const String albumNewFieldUrlAlbumError =
    "Debe seleccionar una imagen del albúm";
const String albumNewFieldRemixOrVersionTitle = "EN VIVO o EN ESTUDIO";
const String albumNewFieldRemixOrVersionHintText =
    "Ingrese EN VIVO o EN ESTUDIO";

const String albumNewFieldRemixOrVersionOnLiveCaption = "EN VIVO";
const String albumNewFieldRemixOrVersionInStudyCaption = "EN ESTUDIO";
const String albumNewFieldRemixOrVersionOnLiveKey = "ON LIVE";
const String albumNewFieldRemixOrVersionInStudyKey = "IN STUDY";

const String albumNewFieldRemixOrVersionError =
    albumNewFieldRemixOrVersionHintText;
const String albumNewFieldArtistTypeTitle = "Tipo de Artista";
const String albumNewFieldArtistTypeError = "Ingrese el Tipo de Artista";
const String albumNewFieldArtistCaptionTitle = "Artista";
const String albumNewFieldArtistCaptionHintText =
    "Ingrese el " + albumNewFieldArtistCaptionTitle;
const String albumNewFieldArtistCaptionError =
    albumNewFieldArtistCaptionHintText;
const String albumNewFieldStampTitle = "Sello";
const String albumNewFieldStampError = "Ingrese el Sello";
const String albumNewFieldStampCaptionTitle = "Sello";
const String albumNewFieldStampCaptionHintText = "Sello";
const String albumNewFieldStampCaptionDefault = "Peiza Go";
const String albumNewFieldStampCaptionError = "Ingrese el Sello";

const String albumNewFieldGenderPrimaryTitle = "Genero Principal";
const String albumNewFieldGenderPrimaryError =
    "Ingrese " + albumNewFieldGenderPrimaryTitle;
const String albumNewFieldGenderSecondaryTitle = "Genero Secundario";
const String albumNewFieldLanguageTitle = "Idioma";
const String albumNewFieldLanguageError =
    "Ingrese el " + albumNewFieldLanguageTitle;
const String albumNewFieldExplicitLyricsTitle = "Letras Explicitas";
const String albumNewFieldAlbumFormatTitle = "Formato";
const String albumNewFieldAlbumFormatError =
    "Ingrese el " + albumNewFieldAlbumFormatTitle;
const String albumNewFieldDiscUPCCodeTitle = "Código UPC del disco";
const String albumNewFieldDiscUPCCodeHintText = "Ingrese Código UPC del disco";
const String albumNewFieldDiscUPCCodeError =
    "Ingrese " + albumNewFieldDiscUPCCodeTitle;
const String albumNewFieldNotDiscUPCCodeTitle = "No tengo un Código UPC";
const String albumNewFieldReferenceNumberTitle = "Número de Referencia";
const String albumNewFieldReferenceNumberHintText =
    "Ingrese Número de Referencia";
const String albumNewFieldReferenceNumberError =
    "Ingrese " + albumNewFieldReferenceNumberTitle;
const String albumNewFieldNotReferenceNumberTitle =
    "No tengo un Número de Referencia";
const String albumNewFieldGlobalReleaseIdentifierTitle =
    "Identificador Global de Lanzamiento";

const String albumNewFieldGlobalReleaseIdentifierHintText =
    "Ingrese Identificador Global de Lanzamiento";
const String albumNewFieldDiscDescriptionTitle = "Descripción del Albúm";
const String albumNewFieldDiscDescriptionHintText =
    "Ingrese " + albumNewFieldDiscDescriptionTitle;
const String albumNewFieldPriceCategoryTitle = "Categoría de Precio";
const String albumNewFieldPriceCategoryError =
    "Ingrese la " + albumNewFieldPriceCategoryTitle;
const String albumNewFieldDigitalReleaseTitle = "Lanzamiento Digital";
const String albumNewFieldDigitalReleaseError =
    "Ingrese " + albumNewFieldDigitalReleaseTitle;
const String albumNewFieldDigitalReleaseHintText =
    "Ingrese " + albumNewFieldDigitalReleaseTitle;
const String albumNewFieldOriginalReleaseTitle = "Lanzamiento Original";
const String albumNewFieldOriginalReleaseError =
    "Ingrese " + albumNewFieldOriginalReleaseTitle;

const String albumNewFieldOriginalReleaseHintText =
    "Ingrese " + albumNewFieldOriginalReleaseTitle;
const String albumNewFieldLicenseTypeTitle = "Tipo de Licencia";
const String albumNewFieldLicenseTypeError =
    "Ingrese el " + albumNewFieldLicenseTypeTitle;
const String albumNewFieldLicenseOwnerYearTitle = "Año Original";
const String albumNewFieldLicenseOwnerYearError =
    "Ingrese el " + albumNewFieldLicenseOwnerYearTitle;
const String albumNewFieldLicenseOwnerYearHintText =
    "Ingrese " + albumNewFieldLicenseOwnerYearTitle;
const String albumNewFieldLicenseOwnerTitleTitle = "Propietario de licencia";
const String albumNewFieldLicenseOwnerTitleError =
    "Ingrese " + albumNewFieldLicenseOwnerTitleTitle;
const String albumNewFieldLicenseOwnerTitleHintText =
    "Ingrese " + albumNewFieldLicenseOwnerTitleTitle;
const String albumNewFieldPublishingRightsOwnerYearTitle =
    "Año Derechos Autor Publicado";
const String albumNewFieldPublishingRightsOwnerYearError =
    "Ingrese " + albumNewFieldPublishingRightsOwnerYearTitle;
const String albumNewFieldPublishingRightsOwnerYearHintText =
    "Ingrese " + albumNewFieldPublishingRightsOwnerYearTitle;
const String albumNewFieldPublishingRightsOwnerTitleTitle =
    "Propietario derechos de publicación";
const String albumNewFieldPublishingRightsOwnerTitleError =
    "Ingrese " + albumNewFieldPublishingRightsOwnerTitleTitle;
const String albumNewFieldPublishingRightsOwnerTitleHintText =
    "Ingrese " + albumNewFieldPublishingRightsOwnerTitleTitle;
const String albumNewFieldTerritoryTitle = "Territorio";
const String albumNewFieldTerritoryError =
    "Ingrese el " + albumNewFieldTerritoryTitle;

const String songNewButtomAddTitle = "Añadir una nueva pista";
const String songNewTitle = "Nueva Pista";
const String songToStreamingPlatformButtomTitle = "¡ LISTO !";
const String songNewFieldTitleTitle = "Nombre del tema";
const String songNewFieldTitleHintText = "Ingrese el nombre del tema";
const String songNewFieldTitleError = songNewFieldTitleHintText;
const String songNewFieldUrlSongError =
    "Debe seleccionar una imagen de la pista";
const String songNewSaving = "Guardando pista";
const String songModifySaving = "Modificando pista";
const String songDeleteSaving = "Borrando pista";
const String songNewCaptureGalleryHeroTag = "pista";
const String songNewCaptureGalleryTooltip =
    "Seleccione una Pista desde la Galeria";
const String songNewFieldFileTitle = "Pista";

const String songNewFieldAuthorTitle = "Autor";
const String songNewFieldAuthorHintText = "Ingrese el autor";
const String songNewFieldAuthorError = songNewFieldAuthorHintText;

const String songNewFieldISRCNumberTitle = "ISRC";
const String songNewFieldISRCNumberHintText = "Ingrese el ISRC";
const String songNewFieldISRCNumberError = "Ingrese el ISRC";
const String songNewFieldNotISRCNumberTitle = "No tengo ISRC";

const String songNewFieldTheSongHasLyricsTitle = "La canción tiene letra";
const String songNewFieldLanguageTitle = "Idioma";

const String songNewFieldExplicitContentTitle = "Contenido Explicito";

const String songNewSaveTitle = "Guardar";
const String songNewSaved = "Nueva pista creada correctamente";
const String songNewExtensionError =
    "El archivo que intentas subir no es aceptado. Por favor, asegurate de subir archivos en uno de estos formatos (flac, wav, fla)";
const String songsGridFieldUrlDownloadTitle = "Descargar";
const String songsGridFieldSongChangeTitle = "Modificar";
const String songsGridFieldTitleTitle = "Pista";
const String songsGridFieldAuthorTitle = "Autor";

const String songsGridFieldISRCTitle = "ISRC";
const String songsGridFieldIsTheSongHasLyricsTitle = "Cancion con Letras";
const String songsGridFieldLanguageTitle = "Idioma";
const String songsGridFieldExplicitContentTitle = "Contenido Explicito";

const String sondgGridFieldRemoveTitle = "Eliminar pista";
const String songRemoveTitle = "Eliminar pista";
const String songRemoveDialogTitle = "Pista";
const String songRemoveDialogQuestion = "¿Quiere borrar la pista?";
const String songRemoveDialogYesCaption = "Si";
const String songRemoveDialogNoCaption = "No";
const String songRemoveSaved = "Pista eliminada correctamente";

const String albumNewValidateImageMinSize =
    "La imagen debe ser minimo de 3000 x 3000";
const String albumNewValidateImageMaxSize =
    "La imagen debe ser máximo de 5000 x 5000";
const String albumNewValidateImageProportionSize =
    "La imagen debe ser minimo de 3000 x 3000";
const String albumNewValidateImageFormat =
    "No es valida la extension del archivo";
const String albumNewValidateImageShowDialogWait = "Verificando Imagen";

const String albumStreamingPlatformsGridFieldSelectTitle = "Seleccionar";
const String albumStreamingPlatformsGridFieldNameTitle = "Plataforma";
const String streamingPlatformNewSaving = "Guardando Plataforma";
const String streamingPlatformModifySaving = "Modificando Plataforma";
const String streamingPlatformDeleteSaving = "Borrando Plataforma";
const String streamingPlatformNewFieldUrlStreamingPlatformError =
    "Debe seleccionar una imagen";
const String streamingPlatformViewSave = "Publicar";
const String streamingPlatformTitle = "Seleccionar la Plataforma";
const String streamingPlatformSelectAll = "Selecionar Todo";
const String artistStreamingPlatformUploadSaving = "Solicitando Subida";
const String artistStreamingPlatformUploadConfirmSaving = "Confirmando Subida";
const String albumDeleteSaving = "Borrando Albúm";

const String artistStreamingPlatformUploadStatusModelValueRequestedCaption =
    "Solicitado";
const String artistStreamingPlatformUploadStatusModelValueUploadedCaption =
    "Subido";
const String artistStreamingPlatformUploadStatusModelValueUploadErrorCaption =
    "Subida con Errores";

const String artistStreamingPlatformUploadStatusModelValueCancelErrorCaption =
    "Cancel Error";
const String albumStreamingPlatformViewIsNotSelectedError =
    "Debe seleccionar una plataforma";
const String artistStreamingPlatformUploadSaved =
    "Solicitud enviada correctamente";

const String countryListTitle = "Países";
const String countryListAddTitle = "Agregar país";
const String countryABMTitle = "País";
const String countryABMSaveTitle = "Guardar";
const String countryABMNewSaved = "País creado correctamente";
const String countryABMModifySaved = "País modificado correctamente";
const String countryABMModifyDelete = "País borrado correctamente";
const String countryABMFieldTitleHint = "¿Como se llama el país?";
const String countryABMFieldTitleLabel = "Descripción";
const String countryABMFieldTitleError = "Debe ingresar una descripción";

const String administratorArtistTitle = "Artistas";
const String administratorArtistHistoryTitle = "Historico de Comisiones";
const String administratorArtistsGridFieldNameTitle = "Nombre";
const String administratorArtistsGridFieldLastNameTitle = "Apellido";
const String administratorArtistsGridFieldAddressTitle = "Dirección";
const String administratorArtistsGridFieldCityTitle = "Ciudad";
const String administratorArtistsGridFieldEmailTitle = "Correo Electronico";
const String administratorArtistsGridFieldPhoneTitle = "Teléfono";
const String administratorArtistsGridFieldReferenceUsernameTitle = "Referencia";

const String artistAddComissionTitle = "Sumar Comisión";

const String administratorArtistStreamingPlatformUploadTitle =
    "Subidas pedientes";
const String
    administratorArtistStreamingPlatformUploadsGridFieldObservationTitle =
    "Nota";
const String
    administratorArtistStreamingPlatformUploadsGridFieldCreationDateTitle =
    "Fecha";
const String administratorArtistStreamingPlatformUploadsGridFieldAlbumTitle =
    "Albún";
const String administratorArtistStreamingPlatformUploadsGridFieldNameTitle =
    "Nombre";
const String administratorArtistStreamingPlatformUploadsGridFieldLastNameTitle =
    "Apellido";
const String administratorArtistStreamingPlatformUploadsGridFieldPhoneTitle =
    "Teléfono";
const String administratorArtistStreamingPlatformUploadViewButtomTitle =
    "Detalle";

const String administratorArtistStreamingPlatformUploadConfirmViewButtomTitle =
    "Confirmar";

const String artistStreamingPlatformUploadViewTitle = "Requerimiento de Subida";

const String artistStreamingPlatformUpdateViewFieldDateOnlyTitle = "Fecha";

const String artistStreamingPlatformUploadConfirmSaved = "Confirmado";
const String artistStreamingPlatformUploadConfirmDialogTitle = "Subida";
const String artistStreamingPlatformUploadConfirmDialogQuestion =
    "¿confirma que ha subido el artista y las pistas, en las plataformas solicitadas?";
const String artistStreamingPlatformUploadConfirmDialogCorrectCaption =
    "Todo Correcto";
const String artistStreamingPlatformUploadConfirmDialogWithErrorCaption =
    "Con Error";
const String artistStreamingPlatformUploadConfirmDialogNoCaption = "No";
const String artistStreamingPlatformUploadConfirmFieldUPCNumberError =
    "Debe completar el UPC";
const String artistStreamingPlatformUploadConfirmUPCNumberHintText = "UPC";
const String artistStreamingPlatformUploadConfirmObservationHintText = "Nota";

const String artistCommissionHistoryConceptListTitle =
    "Conceptos de comisiones";
const String artistCommissionHistoryConceptListAddTitle =
    "Agregar un concepto de comisión";
const String artistCommissionHistoryConceptABMTitle = "Concepto de comisión";
const String artistCommissionHistoryConceptABMSaveTitle = "Guardar";
const String artistCommissionHistoryConceptABMNewSaved =
    "Concepto de comisión creado correctamente";
const String artistCommissionHistoryConceptABMModifySaved =
    "Concepto de comisión modificado correctamente";
const String artistCommissionHistoryConceptABMModifyDelete =
    "Concepto de comisión borrado correctamente";
const String artistCommissionHistoryConceptABMFieldTitleHint =
    "¿Como se llama el concepto de comisión?";
const String artistCommissionHistoryConceptABMFieldTitleLabel = "Descripción";
const String artistCommissionHistoryConceptABMFieldTitleError =
    "Debe ingresar una descripción";

const String artistCommissionHistoryNewSaveTitle = "Guardar";
const String artistCommissionHistoryNewSaved = "Comisión creada correctamente";
const String
    artistCommissionHistoryNewFieldArtistCommissionHistoryConceptTitle =
    "Concepto";
const String artistCommissionHistoryNewFieldAmountTitle = "Importe:";
const String artistCommissionHistoryNewFieldAmountHintText =
    "¿Cual es el importe?";
const String artistCommissionHistoryNewFieldConceptError =
    "Debe seleccionar el concepto";
const String artistCommissionHistoryNewFieldAmountError = "Ingrese un importe";
const String artistCommissionHistorySaving = "Guardando Comisión";
const String artistCommissionHistoryNewTitle = "Nueva comisión";
const String artistPaymentCommissionRequestSaving = "Requiriendo comisión";
const String artistPaymentCommissionFinishSaving = "Finalizando pago";

const String artistPaymentConfirmDialogTitle = "Pago a Artista";
const String artistPaymentConfirmDialogQuestion =
    "¿Confirma que ha realizado el pago al artista?";
const String artistPaymentConfirmDialogYesCaption = "Si";
const String artistPaymentConfirmDialogNoCaption = "No";

const String songChangeQuestionTitle = "Modificar";
const String songChangeQuestionContent = "Modificar pista";
const String songChangePressedYes = "Guardar";
const String songChangePressedNo = "Cancelar";
const String songChangeISRCError = "Debe completar el ISRC";

const String administratorCommissionHistorysGridFieldCreationDateTitle =
    "Fecha";
const String administratorCommissionHistorysGridFieldArtistTitle = "Artista";
const String administratorCommissionHistorysGridFieldPaymentMethodTitle =
    "Pago";
const String administratorCommissionHistorysGridFieldAmountTitle = "Importe";

const String onePublicationViewCategorieTitle = "Categoría: ";
const String onePublicationViewSaleButtonTitle = "COMPRAR";

const String saleViewTitle = "Elige tu método de pago";
const String saleViewPayPalTitle = "PayPal";
const String saleViewCreditCardTitle = "Tarjeta";
const String saleViewNewCreditCardTitle = "Agregar una nueva tarjeta";
const String saleViewCashTitle = "Efectivo";
const String saleViewPriceTitle = "El importe a pagar es:";
const String saleViewPaymentMethodSelectTitle = "Seleccione el método de pago";
const String saleViewConfirmateTitle = "Comprar";
const String saleViewConfirmateNotSelectError =
    "Debe seleccionar un método de pago";
const String saleViewConfirmateSaved = "Compra confirmada";
const String saleViewConfirmateDeclined = "Compra rechazada";
const String saleViewConfirmateCancel = "Compra cancelada";
const String saleSavingWithoutStockTitle = "No existe stock suficiente";
const String saleSavingProductDisable =
    "El producto no está disponible en este momento";

const String metricSaleCreatesYearMonthDayOneCommerceKey =
    "saleCreatesOneCommerce";
const String metricSaleReceiptIdKey = "saleReceiptId";

const String commerceSaleToPreparateViewConfirmTitle =
    "Confirmar la preparación";
const String commerceSaleToPreparateViewConfirmedTitle =
    "Haz confirmado la preparación";
const String deliveryTakenDeliveryHourTitle = "Entrega aproximada a las";

const String publicationStatuListTitle = "Estados de la Publicación";
const String publicationStatuListAddTitle = "Agregar estado de la Publicación";
const String publicationStatuABMTitle = "Estado de la Publicación";
const String publicationStatuABMSaveTitle = "Guardar";
const String publicationStatuABMNewSaved =
    "Estado de la Publicación creada correctamente";
const String publicationStatuABMModifySaved =
    "Estado de la Publicación modificada correctamente";
const String publicationStatuABMModifyDelete =
    "Estado de la Publicación borrada correctamente";
const String publicationStatuABMFieldTitleHint =
    "¿Como se llama el Estados de la Publicación?";
const String publicationStatuABMFieldTitleLabel = "Descripción";
const String publicationStatuABMFieldTitleError =
    "Debe ingresar una descripción";

const String commerceSaleToPrepareViewFieldCustomer = "Cliente";
const String commerceSaleToPrepareViewFieldProduct = "Producto";
const String commerceSaleToPrepareViewFieldQuantity = "Cantidad";
const String commerceSaleToPrepareViewFieldPrice = "Precio";

const String oneSaleViewFieldCustomerTitle = "Cliente";
const String oneSaleViewFieldCustomerNameLastName = "Nombre y apellido";
const String oneSaleViewFieldCustomerAddress = "Dirección";
const String oneSaleViewFieldCustomerContactPhone = "Teléfono";

const String oneSaleViewFieldCommerceTitle = "Negocio";
const String oneSaleViewFieldCommerceBusinessName = "Nombre";
const String oneSaleViewFieldCommerceAddress = "Dirección";
const String oneSaleViewFieldCommerceContactPhone = "Teléfono";

const String oneSaleViewFieldDeliveryTitle = "Delivery";
const String oneSaleViewFieldDeliveryNameLastName = "Nombre y apellido";
const String oneSaleViewFieldDeliveryContactPhone = "Teléfono";
const String oneSaleViewFieldDeliveryVehicle = "Vehículo";

const String oneSaleViewFieldPublicationTitle = "Venta";
const String oneSaleViewFieldPublicationTitle2 = "Producto";
const String oneSaleViewFieldPublicationQuantity = "Cantidad";
const String oneSaleViewFieldPublicationPrice = "Precio";

const String saleViewSaleItemCeroError =
    "Debe tener un producto sumado al carro para poder seguir";
const String saleViewSaleIsConfirmationTOSError =
    "Debe estar de acuerdo con las políticas de Seguridad, Privacidad y Devolución.";

const String saleViewSaleIsConfirmationPart1Title = "Acepto las políticas de ";
const String saleViewSaleIsConfirmationPart2Title = "Seguridad";
const String saleViewSaleIsConfirmationPart3Title = ", ";
const String saleViewSaleIsConfirmationPart4Title = "Privacidad";
const String saleViewSaleIsConfirmationPart5Title = ", ";
const String saleViewSaleIsConfirmationPart6Title = "Devolución";
const String saleViewSaleIsConfirmationPart7Title = " y ";
const String saleViewSaleIsConfirmationPart8Title = "Cancelación";

const String saleItemsImportUnit = "RD\$";
const String shoppingCartItemsImportUnit = "RD\$";

const String shoppingCartViewTotalQuantityText = "artículos en total";
const String shoppingCartViewFinishSale = "Finalizar compra";

const String oneCommerceViewToShooppingCartTitle = "Ver Carrito";

const String receiptViewReciboTitle = "Recibo";
const String receiptViewCompanyTitle = "MD Exam";
const String receiptViewCobrarATitle = "COBRAR A";
const String receiptViewReciboNroTitle = "RECIBO #";
const String receiptViewDateTitle = "FECHA DE RECEPCIÓN";
const String receiptViewItemTitleDescriptionTitle = "Descripción";
const String receiptViewItemTitleCommerceTitle = "Comercio";
const String receiptViewItemTitleMontoTitle = "MONTO";
const String receiptViewDeliveryCostTitle = "Costo Delivery";
const String receiptViewSubTotalTitle = "Subtotal";
const String receiptViewImpuestosTitle = "Impuestos 0.0%";
const String receiptViewTotalTitle = "TOTAL";

const String preSaleDuplicatekeyReceiptIdError =
    "Error, Por favor intente nuevamente";
const String preSalePreviusConfirm = "Ya confirmó la compra";
const String preSalePreviusDeclined = "Ya cancelo la compra";
const String preSalePreviusCancel = "Ya cancelo la compra";

String get paymentDeclinedTitle => languageStatus == 0 ? "Error" : "Error";
String get paymentDeclinedResponseMessageTitle => languageStatus == 0 ? "Mensaje" : "Message";
String get paymentDeclinedErrorDescriptionTitle => languageStatus == 0 ? "Error" : "Error";
String get paymentDeclinedCardNumberTitle => languageStatus == 0 ? "Tarjeta" : "Card";
String get paymentDeclinedCloseButtonTitle => languageStatus == 0 ? "Cerrar" : "Close";

String get paymentConfirmResponseMessageTitle => languageStatus == 0 ? "Mensaje" : "Message";
String get paymentConfirmCloseButtonTitle => languageStatus == 0 ? "Cerrar" : "Close";

String get reviewTellUsListTitle => languageStatus == 0 ? "Reseña cuéntanos" : "Tell us Review";
String get reviewTellUsListAddTitle => languageStatus == 0 ? "Agregar Reseña cuéntanos" : "Add Tell us Review";
String get reviewTellUsABMTitle => languageStatus == 0 ? "reseña cuéntanos" : "Tell us Review";
String get reviewTellUsABMSaveTitle => languageStatus == 0 ? "Guardar" : "Save";
String get reviewTellUsABMNewSaved => languageStatus == 0 ? "Reseña cuéntanos creada correctamente" : "Review created successfully";
String get reviewTellUsABMModifySaved => languageStatus == 0 ? "Reseña cuéntanos modificada correctamente" : "Review updated successfully";
String get reviewTellUsABMModifyDelete => languageStatus == 0 ? "Reseña cuéntanos borrada correctamente" : "Review deleted successfully";
String get reviewTellUsABMFieldTitleHint => languageStatus == 0 ? "¿Como se llama la reseña?" : "What is the review title?";
String get reviewTellUsABMFieldTitleLabel => languageStatus == 0 ? "Descripción" : "Description";
String get reviewTellUsABMFieldTitleError => languageStatus == 0 ? "Debe ingresar una descripción" : "Please enter a description";

String get reviewCustomerQuestionLabel => languageStatus == 0 ? "Queremos saber cómo fue tu experiencia en la compra" : "We want to know how your shopping experience was";
String get reviewTitle => languageStatus == 0 ? "Reseña" : "Review";
String get reviewRateYourExperienceTitle => languageStatus == 0 ? "califica tu experiencia" : "Rate your experience";
String get reviewTellUsWhatCanBeImprovedTitle => languageStatus == 0 ? "¿Dinos que se puede mejorar?" : "Tell us what can be improved?";
String get reviewCustomerSendTitle => languageStatus == 0 ? "Enviar" : "Send";
String get reviewCommerceSendTitle => languageStatus == 0 ? "Responder" : "Reply";

String get reviewCommerceObservationHint => languageStatus == 0 ? "Respuesta" : "Reply";
String get reviewCustomerObservationHint => languageStatus == 0 ? "Observación" : "Observation";
String get reviewCustomerWithoutObservationText => languageStatus == 0 ? "No hay un comentario" : "No comment";
String get reviewStarError => languageStatus == 0 ? "Debe realizar su reseña" : "You must rate the review";
String get reviewSavedCaption => languageStatus == 0 ? "¡Gracias por su reseña!" : "Thank you for your review!";
String get reviewTitleTitle => languageStatus == 0 ? "Opiniones" : "Reviews";
String get reviewPendingNotTitle => languageStatus == 0 ? "No hay Reseñas pendientes de contestar" : "No pending reviews to reply";
String get reviewPendingTitle => languageStatus == 0 ? "Reseñas pendientes de contestar" : "Pending reviews to reply";
String get reviewCustomerValorizationText => languageStatus == 0 ? "Valorización del cliente" : "Customer rating";

String get commerceHomeSalesActualSelector0Caption => languageStatus == 0 ? "Hoy" : "Today";
String get commerceHomeSalesActualSelector1Caption => languageStatus == 0 ? "Ayer" : "Yesterday";
String get commerceHomeSalesActualSelector2Caption => languageStatus == 0 ? "Últimos 7 días" : "Last 7 days";
String get commerceHomeSalesActualSelector3Caption => languageStatus == 0 ? "Últimas 12 semanas" : "Last 12 weeks";
String get commerceHomeSalesActualSelector4Caption => languageStatus == 0 ? "Últimos 12 meses" : "Last 12 months";
String get commerceHomeSalesVolumenCaption => languageStatus == 0 ? "Volumén de Pedidos:" : "Order Volume:";
String get commerceHomeSalesImportCaption => languageStatus == 0 ? "Valor del recibo:" : "Receipt Value:";

String get showDialogOkCaption => languageStatus == 0 ? "OK" : "OK";

String get messagingNewSaleTitleCaption => languageStatus == 0 ? "Nueva venta" : "New Sale";
String get messagingNewSaleBodyCaption => languageStatus == 0 ? "¡tiene una nueva venta para preparar!" : "You have a new sale to prepare!";

String get messagingLocalEndTitleCaption => languageStatus == 0 ? "Compra" : "Purchase";
String get messagingLocalEndBodyCaption => languageStatus == 0 ? "¡el comercio ya preparo tu compra!" : "The store has prepared your order!";

String get messagingDeliveryTakenTitleCaption => languageStatus == 0 ? "Compra" : "Purchase";
String get messagingDeliveryTakenBodyCaption => languageStatus == 0 ? "¡ya está en camino tu compra!" : "Your order is on the way!";

const String gpsLocationServicesDisabledMessage =
    'Los servicios de ubicación están deshabilitados.';
const String gpsPermissionDeniedMessage = 'Permiso denegado.';
const String gpsPermissionDeniedForeverMessage =
    'Permiso denegado para siempre.';
const String gpsPermissionGrantedMessage = 'Permiso concedido.';

const String locationMapCallCaption = "Ver mapa";
const String locationMapVehicleMarkCaption = "Motor marca:";
const String locationMapVehiclePatentCaption = "Mátricula:";
const String saleCancelCaption = "Cancelar compra";
const String saleCancelQuestionTitle = "Cancelar compra";
const String saleCancelQuestionContent = "¿desea cancelar la compra?";
const String saleCancelQuestionHandPressedYes = "Si";
const String saleCancelQuestionHandPressedNo = "No";
const String saleCancelFinishSaved = "Compra cancelada";
const String saleCancelFinishErrorCaption = "La Compra no puede ser cancelada";

const String customerIsSaleActiveError =
    "Solo puede realizar una compra a la vez, espere a que el delivery termine de entregar su mercaderia.";

const String customerPositionNotAvalaibleError =
    "El cliente no compartio su ubicación";

const String commercePositionNotAvalaibleError =
    "El commercio no compartio su ubicación";

const String deliveryShowMessageTitle = "MD Exam";
const String deliveryShowMessageDetail = "¡Nuevo pedido!";

const String positionPermissionTitleCaption = "MD Exam";
const String positionPermissionQuestionCaption =
    "MD Exam recopila datos de ubicación para permitir el seguimiento de la ubicación fisica del cliente y delivery, en segundo plano cuando la aplicación está siempre en uso.";
const String positionPermissionYesCaption = "ACEPTAR";
const String positionPermissionNoCaption = "DENEGAR";

const String formAddWorkWithUsTitle = "Trabajo con Nosotros";

const String formAddWorkWithUsFieldNameHint = "¿Cual es su nombre?";
const String formAddWorkWithUsFieldNameLabel = "Nombre";
const String formAddWorkWithUsFieldNameError = "Debe ingresar su nombre";

const String formAddWorkWithUsFieldLastNameHint = "¿Cual es su apellido?";
const String formAddWorkWithUsFieldLastNameLabel = "Apellido";
const String formAddWorkWithUsFieldLastNameError = "Debe ingresar su apellido";

const String formAddWorkWithUsFieldPhoneHint = "¿Cual es su teléfono?";
const String formAddWorkWithUsFieldPhoneLabel = "Teléfono";
const String formAddWorkWithUsFieldPhoneError = "Debe ingresar su teléfono";

const String formAddWorkWithUsFieldEmailHint =
    "¿Cual es su correo electronico?";
const String formAddWorkWithUsFieldEmailLabel = "Email";
const String formAddWorkWithUsFieldEmailError =
    "Debe ingresar su correo electronico";

const String formAddWorkWithUsOk =
    "¡Muchas gracias por su interes, nos comunicaremos con usted a la brevedad!";

const String formAddSendButton = "Enviar";
const String formAddSaving = "Enviando";
const String formAddSaved = "¡Gracias!";

const String formAdd1095ATitle = "Obtener su 1095 A de su año fiscal";

const String formAdd1095AFieldYearHint = "¿Cual es su año?";
const String formAdd1095AFieldYearLabel = "Año";
const String formAdd1095AFieldYearError = "Debe ingresar su año";

const String formAdd1095AFieldNameHint = "¿Cual es su nombre?";
const String formAdd1095AFieldNameLabel = "Nombre";
const String formAdd1095AFieldNameError = "Debe ingresar su nombre";

const String formAdd1095AFieldLastNameHint = "¿Cual es su apellido?";
const String formAdd1095AFieldLastNameLabel = "Apellido";
const String formAdd1095AFieldLastNameError = "Debe ingresar su apellido";

const String formAdd1095AFieldBirthdateHint =
    "¿Cual es su fecha de nacimiento?";
const String formAdd1095AFieldBirthdateLabel = "Fecha de Nacimiento";
const String formAdd1095AFieldBirthdateError =
    "Debe ingresar su fecha de nacimiento";

const String formAdd1095AFieldSecuritySocialHint = "¿Cual es su seguro social?";
const String formAdd1095AFieldSecuritySocialLabel = "Seguro social";
const String formAdd1095AFieldSecuritySocialError =
    "Debe ingresar su seguro social";

const String formAdd1095AFieldCheck1Label =
    "Acepto que MD Exam revise y maneje mi información para obtener mi 1095 A.";

const String formAdd1095AFieldCheck2Label =
    "Acepto que en este momento MD Exam, manejara toda mi inscripcion de mi seguro de salud por todo un año calendario.";

const String formAdd1095AFieldCheck3Label =
    "Acepto recibir llamada y mensajes de textos gratuitos de MD Exam.";

const String formAdd1095AFieldCheckXError = "Debe marcar todos los checks";

const String formAdd1095AOk =
    "Gracias por usar MD Exam para obtener su 1095-A. Por favor revise su Carpeta de Documentos y su correo electrónico, en caso que no lo recibas en un plazo de 48 horas. Por favor llame a nuestro centro de ayuda. 1 (888) 896-1252";

const String administratorFormAddTitle = "Formularios";

const String administratorFormAddGridFieldDateTitle = "Fecha";
const String administratorFormAddGridFieldTypeTitle = "Tipo";
const String administratorFormAddGridFieldTitleTitle = "Titulo";

const String administratorFormAddViewTitle = "Ver";

const String formAddMedicareTitle = "Medicare";

const String formAddMedicareFieldNameHint = "¿Cual es su nombre?";
const String formAddMedicareFieldNameLabel = "Nombre";
const String formAddMedicareFieldNameError = "Debe ingresar su nombre";

const String formAddMedicareFieldLastNameHint = "¿Cual es su apellido?";
const String formAddMedicareFieldLastNameLabel = "Apellido";
const String formAddMedicareFieldLastNameError = "Debe ingresar su apellido";

const String formAddMedicareFieldPhoneHint = "¿Cual es su teléfono?";
const String formAddMedicareFieldPhoneLabel = "Teléfono";
const String formAddMedicareFieldPhoneError = "Debe ingresar su teléfono";

const String formAddMedicareFieldEmailHint = "¿Cual es su correo electronico?";
const String formAddMedicareFieldEmailLabel = "Email";
const String formAddMedicareFieldEmailError =
    "Debe ingresar su correo electronico";

const String formAddMedicareFieldAddressHint = "¿Cual es su dirección?";
const String formAddMedicareFieldAddressLabel = "Dirección";
const String formAddMedicareFieldAddressError = "Debe ingresar su dirección";

const String formAddMedicareFieldContactScheduleHint =
    "¿Cual es su horario de contacto (mañana, tarde o noche)?";
const String formAddMedicareFieldContactScheduleLabel =
    "Horario de contacto (mañana, tarde o noche)";
const String formAddMedicareFieldContactScheduleError =
    "Debe ingresar su horario de contacto";

const String formAddMedicareOk =
    "Gracias por su interes en ser parte de la familia de MD Exam, uno de nuestro Agentes certificado le llamara lo mas pronto posible.";
const String formAddPensionTitle = "Plan de retiro";

const String formAddPensionFieldNameHint = "¿Cual es su nombre?";
const String formAddPensionFieldNameLabel = "Nombre";
const String formAddPensionFieldNameError = "Debe ingresar su nombre";

const String formAddPensionFieldLastnameHint = "¿Cual es su apellido?";
const String formAddPensionFieldLastnameLabel = "Apellido";
const String formAddPensionFieldLastnameError = "Debe ingresar su apellido";

const String formAddPensionFieldEmailHint = "¿Cual es su email?";
const String formAddPensionFieldEmailLabel = "Email";
const String formAddPensionFieldEmailError = "Debe ingresar su email";

const String formAddPensionFieldPhoneHint = "¿Cual es su teléfono?";
const String formAddPensionFieldPhoneLabel = "Teléfono";
const String formAddPensionFieldPhoneError = "Debe ingresar su teléfono";

const String formAddPensionFieldAddressHint = "¿Cual es su dirección?";
const String formAddPensionFieldAddressLabel = "Direción";
const String formAddPensionFieldAddressError = "Debe ingresar su direción";

const String formAddPensionFieldBirthdateHint = "¿Cual es su cumpleaños?";
const String formAddPensionFieldBirthdateLabel = "Cumpleaño";
const String formAddPensionFieldBirthdateError = "Debe ingresar su cumpleaño";

const String formAddPensionFieldIDNumberHint =
    "¿Cual es su ID Number / Pasaport?";
const String formAddPensionFieldIDNumberLabel = "ID Number / Pasaport";
const String formAddPensionFieldIDNumberError =
    "Debe ingresar su ID Number / Pasaport";

const String formAddPensionFieldDuedateHint =
    "¿Cual es su fecha de vencimiento?";
const String formAddPensionFieldDuedateLabel = "Fecha de Vencimiento";
const String formAddPensionFieldDuedateError =
    "Debe ingresar su fecha de vencimiento";

const String formAddPensionFieldSocialSecurityHint =
    "¿Cual es su seguro social?";
const String formAddPensionFieldSocialSecurityLabel = "Seguro social";
const String formAddPensionFieldSocialSecurityError =
    "Debe ingresar su seguro social";

const String formAddPensionFieldCountryOfBirthHint =
    "¿Cual es su pais de nacimiento?";
const String formAddPensionFieldCountryOfBirthLabel = "Pais de nacimiento";
const String formAddPensionFieldCountryOfBirthError =
    "Debe ingresar su pais de nacimiento";

const String formAddPensionFieldCurrentStateWhereYouLiveHint =
    "¿Cual es el estado actual donde vive?";
const String formAddPensionFieldCurrentStateWhereYouLiveLabel =
    "Estado actual donde vive";
const String formAddPensionFieldCurrentStateWhereYouLiveError =
    "Debe ingresar el estado actual donde vive";

const String formAddPensionFieldCurrentCityWhereYouLiveHint =
    "¿Cual es su ciudad actual donde vives?";
const String formAddPensionFieldCurrentCityWhereYouLiveLabel =
    "Ciudad actual donde vives";
const String formAddPensionFieldCurrentCityWhereYouLiveError =
    "Debe ingresar su ciudad actual donde vives";

const String formAddPensionFieldWhereDoYouWorkHint = "¿En que trabaja?";
const String formAddPensionFieldWhereDoYouWorkLabel = "En que trabaja";
const String formAddPensionFieldWhereDoYouWorkError =
    "Debe ingresar en que trabaja";

const String formAddPensionFieldJobPositionHint = "¿Posicion del trabajo?";
const String formAddPensionFieldJobPositionLabel = "Posicion del trabajo";
const String formAddPensionFieldJobPositionError =
    "Debe ingresar posicion del trabajo";

const String formAddPensionFieldAnnualSalaryHint = "¿Cual es su salario anual?";
const String formAddPensionFieldAnnualSalaryLabel = "Salario anual";
const String formAddPensionFieldAnnualSalaryError =
    "Debe ingresar su salario anual";

const String formAddPensionFieldOtherAdditionalAnnualIncomeHint =
    "¿Cual es su otro ingreso anual adicional?";
const String formAddPensionFieldOtherAdditionalAnnualIncomeLabel =
    "Otro ingreso anual adicional";
const String formAddPensionFieldOtherAdditionalAnnualIncomeError =
    "Debe ingresar su otro ingreso anual adicional";

const String formAddPensionFieldBeneficiary1Title = "Beneficiario 1";

const String formAddPensionFieldBeneficiary1NameHint = "¿Cual es su nombre?";
const String formAddPensionFieldBeneficiary1NameLabel = "Nombre";
const String formAddPensionFieldBeneficiary1NameError =
    "Debe ingresar su nombre";

const String formAddPensionFieldBeneficiary1LastnameHint =
    "¿Cual es su apellido?";
const String formAddPensionFieldBeneficiary1LastnameLabel = "Apellido";
const String formAddPensionFieldBeneficiary1LastnameError =
    "Debe ingresar su apellido";

const String formAddPensionFieldBeneficiary1RelationshipHint =
    "¿Cual es su relación?";
const String formAddPensionFieldBeneficiary1RelationshipLabel = "Relación";
const String formAddPensionFieldBeneficiary1RelationshipError =
    "Debe ingresar su relación";

const String formAddPensionFieldBeneficiary1BirthdateHint =
    "¿Cual es su cumpleaño?";
const String formAddPensionFieldBeneficiary1BirthdateLabel = "Cumpleaño";
const String formAddPensionFieldBeneficiary1BirthdateError =
    "Debe ingresar su cumpleaño";

const String formAddPensionFieldBeneficiary1PercentageHint =
    "¿Cual es su porcentaje?";
const String formAddPensionFieldBeneficiary1PercentageLabel =
    "Porcentaje (25%/50%/100%)";
const String formAddPensionFieldBeneficiary1PercentageError =
    "Debe ingresar su porcentaje";

const String formAddPensionFieldBeneficiary2Title = "Beneficiario 2";

const String formAddPensionFieldBeneficiary2NameHint = "¿Cual es su nombre?";
const String formAddPensionFieldBeneficiary2NameLabel = "Nombre";
const String formAddPensionFieldBeneficiary2NameError =
    "Debe ingresar su nombre";

const String formAddPensionFieldBeneficiary2LastnameHint =
    "¿Cual es su apellido?";
const String formAddPensionFieldBeneficiary2LastnameLabel = "Apellido";
const String formAddPensionFieldBeneficiary2LastnameError =
    "Debe ingresar su apellido";

const String formAddPensionFieldBeneficiary2RelationshipHint =
    "¿Cual es su relación?";
const String formAddPensionFieldBeneficiary2RelationshipLabel = "Relación";
const String formAddPensionFieldBeneficiary2RelationshipError =
    "Debe ingresar su relación";

const String formAddPensionFieldBeneficiary2BirthdateHint =
    "¿Cual es su fecha de nacimiento?";
const String formAddPensionFieldBeneficiary2BirthdateLabel =
    "Fecha de nacimiento";
const String formAddPensionFieldBeneficiary2BirthdateError =
    "Debe ingresar su fecha de nacimiento";

const String formAddPensionFieldBeneficiary2PercentageHint =
    "¿Cual es su porcentaje?";
const String formAddPensionFieldBeneficiary2PercentageLabel = "Porcentaje";
const String formAddPensionFieldBeneficiary2PercentageError =
    "Debe ingresar su porcentaje";

const String formAddPensionFieldMinimumToInvestHint =
    "¿Cuanto planeas invertir en tu retiro (minimo \$50)?";
const String formAddPensionFieldMinimumToInvestLabel =
    "Cuanto planeas invertir en tu retiro (minimo \$50)";
const String formAddPensionFieldMinimumToInvestError =
    "Debe ingresar cuanto planeas invertir en tu retiro (minimo \$50)";

const String formAddPensionFieldFrequencyHint =
    "¿Cual es su frecuencia (mensual/3 meses/6 meses/ anual (minimo \$2000))?";
const String formAddPensionFieldFrequencyLabel =
    "Frecuencia (mensual/3 meses/6 meses/ anual (minimo \$2000))";
const String formAddPensionFieldFrequencyError =
    "Debe ingresar su frecuencia (mensual/3 meses/6 meses/ anual (minimo \$2000))";

const String formAddPensionFieldPaymentInformationTitle = "Información de pago";

const String formAddPensionFieldNameOfTheBankHint =
    "¿Cual es el nombre del banco?";
const String formAddPensionFieldNameOfTheBankLabel = "Nombre del banco";
const String formAddPensionFieldNameOfTheBankError =
    "Debe ingresar el nombre del banco";

const String formAddPensionFieldBankRootingHint = "¿Cual es su Rooting Number?";
const String formAddPensionFieldBankRootingLabel = "Rooting Number";
const String formAddPensionFieldBankRootingError =
    "Debe ingresar su Rooting Number";

const String formAddPensionFieldBankAccountHint = "¿Cual es su Account Number?";
const String formAddPensionFieldBankAccountLabel = "Account Number";
const String formAddPensionFieldBankAccountError =
    "Debe ingresar su Account Number";

const String formAddPensionFieldChekingLabel = "Cheking";

const String formAddPensionFieldSavingsLabel = "Savings";

const String formAddPensionFieldDepositorsNameHint =
    "¿Cual es su nombre del depositador?";
const String formAddPensionFieldDepositorsNameLabel = "Nombre del depositador";
const String formAddPensionFieldDepositorsNameError =
    "Debe ingresar su nombre del depositador";

const String formAddPensionFieldDepositorAddressHint =
    "¿Cual es su direccion del depositador?";
const String formAddPensionFieldDepositorAddressLabel =
    "Direccion del depositador";
const String formAddPensionFieldDepositorAddressError =
    "Debe ingresar su direccion del depositador";

const String formAddPensionFieldDepositorsSignatureHint =
    "¿Cual es su firma del depositador?";
const String formAddPensionFieldDepositorsSignatureLabel =
    "Firma del depositador";
const String formAddPensionFieldDepositorsSignatureError =
    "Debe ingresar su firma del depositador";

const String formAddPensionOk =
    "Hemos recibido su aplicación, evaluaremos su aplicación, en un plazo de 3 días a 27 días hábiles. Recuerde que esta aplicación esta siendo revisada por nuestros Agentes Financieros y le llamaran si necesitan alguna información adicional, recibirá una respuesta por correo electrónico si es aprobado su plan de retiro. Le enviaremos sus documentos a su domicilio.";

const String calculatorTitle = "Calculadora";

const String calculatorFieldAgeHint = "¿Cual es su edad?";
const String calculatorFieldAgeLabel = "Edad [18-120]";
const String calculatorFieldAgeError = "Debe ingresar su edad";

const String calculatorFieldSavingsPeriodHint =
    "¿Cual es su periodo de ahorro?";
const String calculatorFieldSavingsPeriodLabel = "Periodo de ahorro [10-] Años";
const String calculatorFieldSavingsPeriodError =
    "Debe ingresar su periodo de ahorro";

const String calculatorFieldPercentageWonHint =
    "¿Cual es su porcentaje ganado?";
const String calculatorFieldPercentageWonLabel = "Porcentaje ganado [4.5-]";
const String calculatorFieldPercentageWonError =
    "Debe ingresar su porcentaje ganado";

const String calculatorFieldMonthlyContributionHint =
    "¿Cual es su contribución mensual?";
const String calculatorFieldMonthlyContributionLabel = "Contribución mensual";
const String calculatorFieldMonthlyContributionError =
    "Debe ingresar su contribución mensual";

const String calculatorCalculatorButton = "Calcular";

String get calculatorGridFieldAgeTitle => languageStatus == 0 ? "Edad" : "Age";
String get calculatorGridFieldYearTitle => languageStatus == 0 ? "Año" : "Year";
String get calculatorGridFieldSavingTitle => languageStatus == 0 ? "Ahorro" : "Saving";
String get calculatorBuyButton => languageStatus == 0 ? "Comprar plan" : "Buy Plan";

String get membershipABMFieldTitleHint => languageStatus == 0 ? "¿Titulo de la membresia?" : "Membership title?";
String get membershipABMFieldTitleLabel => languageStatus == 0 ? "Título" : "Title";
String get membershipABMFieldTitleError => languageStatus == 0 ? "Debe ingresar un título" : "You must enter a title";

String get membershipABMFieldDetailHint => languageStatus == 0 ? "¿Detalles?" : "Details?";
String get membershipABMFieldDetailLabel => languageStatus == 0 ? "Detalles" : "Details";
String get membershipABMFieldDetailError => languageStatus == 0 ? "Debe ingresar un detalle" : "You must enter details";

String get membershipABMFieldIsEnabledLabel => languageStatus == 0 ? "Habilitado" : "Enabled";

String get membershipABMFieldPositionHint => languageStatus == 0 ? "¿Orden?" : "Order?";
String get membershipABMFieldPositionLabel => languageStatus == 0 ? "Orden" : "Order";
String get membershipABMFieldPositionError => languageStatus == 0 ? "Debe ingresar un orden" : "You must enter an order";

String get membershipABMFieldLink1Title => languageStatus == 0 ? "Link 1" : "Link 1";
String get membershipABMFieldLink1CaptionHint => languageStatus == 0 ? "Link 1 - Titulo" : "Link 1 - Title";
String get membershipABMFieldLink1CaptionLabel => languageStatus == 0 ? "Link 1 - Titulo" : "Link 1 - Title";
String get membershipABMFieldLink1CaptionError => languageStatus == 0 ? "Debe ingresar el titulo del Link1" : "You must enter Link 1 title";

String get membershipABMFieldLink2Title => languageStatus == 0 ? "Link 2" : "Link 2";
String get membershipABMFieldLink2CaptionHint => languageStatus == 0 ? "Link 2 - Titulo" : "Link 2 - Title";
String get membershipABMFieldLink2CaptionLabel => languageStatus == 0 ? "Link 2 - Titulo" : "Link 2 - Title";
String get membershipABMFieldLink2CaptionError => languageStatus == 0 ? "Debe ingresar el titulo del Link2" : "You must enter Link 2 title";

String get membershipABMFieldDescriptionHint => languageStatus == 0 ? "¿Descripción de la publicación?" : "Description of the publication?";
String get membershipABMFieldDescriptionLabel => languageStatus == 0 ? "Descripción" : "Description";
String get membershipABMFieldDescriptionError => languageStatus == 0 ? "Debe ingresar una descripción" : "You must enter a description";
String get membershipABMFieldPriceHint => languageStatus == 0 ? "¿precio?" : "Price?";
String get membershipABMFieldPriceLabel => languageStatus == 0 ? "Precio" : "Price";
String get membershipABMFieldPriceError => languageStatus == 0 ? "Debe ingresar un precio" : "You must enter a price";

String get membershipABMFieldMaxUsesHint => languageStatus == 0 ? "¿máximo de usos?" : "Maximum uses?";
String get membershipABMFieldMaxUsesLabel => languageStatus == 0 ? "Máximo de usos" : "Maximum uses";
String get membershipABMFieldMaxUsesError => languageStatus == 0 ? "Debe ingresar un máximo de usos" : "You must enter the maximum uses";

String get membershipABMFieldMaxDaysHint => languageStatus == 0 ? "¿máximo de Días?" : "Maximum days?";
String get membershipABMFieldMaxDaysLabel => languageStatus == 0 ? "Máximo de Días" : "Maximum days";
String get membershipABMFieldMaxDaysError => languageStatus == 0 ? "Debe ingresar un máximo de Días" : "You must enter the maximum days";

String get membershipABMFieldMaxQuestionsHint => languageStatus == 0 ? "¿máximo de Preguntas?" : "Maximum questions?";
String get membershipABMFieldMaxQuestionsLabel => languageStatus == 0 ? "Máximo de Preguntas" : "Maximum questions";
String get membershipABMFieldMaxQuestionsError => languageStatus == 0 ? "Debe ingresar un máximo de Preguntas" : "You must enter the maximum questions";

String get membershipABMFieldMaxFlashcardsHint => languageStatus == 0 ? "(Flashcards) ¿máximo de Preguntas?" : "(Flashcards) Maximum Questions?";
String get membershipABMFieldMaxFlashcardsLabel => languageStatus == 0 ? "(Flashcards) Máximo de Preguntas" : "(Flashcards) Maximum Questions";
String get membershipABMFieldMaxFlashcardsError => languageStatus == 0 ? "(Flashcards) Debe ingresar un máximo de flashcards" : "(Flashcards) You must enter the maximum flashcards";

String get membershipABMFieldMaxUsesFlashcardsHint => languageStatus == 0 ? "(Flashcards) ¿máximo de usos?" : "(Flashcards) Maximum uses?";
String get membershipABMFieldMaxUsesFlashcardsLabel => languageStatus == 0 ? "(Flashcards) Máximo de usos" : "(Flashcards) Maximum uses";
String get membershipABMFieldMaxUsesFlashcardsError => languageStatus == 0 ? "(Flashcards) Debe ingresar un máximo de usos" : "(Flashcards) You must enter the maximum uses";

String get membershipABMFieldMaxVideosHint => languageStatus == 0 ? "(Videoclases) ¿Maximo de Videoclases?" : "(Video Classes) Maximum videos?";
String get membershipABMFieldMaxVideosLabel => languageStatus == 0 ? "(Videoclases) Maximo de Videoclasess" : "(Video Classes) Maximum Videos";
String get membershipABMFieldMaxVideosError => languageStatus == 0 ? "(Videoclases) Debe ingresar un máximo de Videoclases" : "(Video Classes) You must enter the maximum videos";

String get membershipABMFieldMaxUsesVideosHint => languageStatus == 0 ? "(Videoclases) ¿máximo de usos?" : "(Video Classes) Maximum uses?";
String get membershipABMFieldMaxUsesVideosLabel => languageStatus == 0 ? "(Videoclases) Máximo de usos" : "(Video Classes) Maximum uses";
String get membershipABMFieldMaxUsesVideosError => languageStatus == 0 ? "(Videoclases) Debe ingresar un máximo de usos" : "(Video Classes) You must enter the maximum uses";

String get membershipABMFieldIsVisibleLabel => languageStatus == 0 ? "Es visible" : "Is visible";
String get membershipABMFieldIsDefaultLabel => languageStatus == 0 ? "Por defecto" : "Default";

String get membershipABMFieldOrderHint => languageStatus == 0 ? "¿orden?" : "Order?";
String get membershipABMFieldOrderLabel => languageStatus == 0 ? "Orden" : "Order";
String get membershipABMFieldOrderError => languageStatus == 0 ? "Debe ingresar un orden" : "You must enter an order";

String get membershipABMFieldStockHint => languageStatus == 0 ? "¿Disponibilidad?" : "Availability?";
String get membershipABMFieldStockLabel => languageStatus == 0 ? "Disponibilidad" : "Availability";
String get membershipABMFieldStockError => languageStatus == 0 ? "Debe ingresar la disponibilidad" : "You must enter availability";

String get membershipABMFieldImage01Error => languageStatus == 0 ? "Debe asociar una imagen" : "You must attach an image";

String get membershipListTitle => languageStatus == 0 ? "Tus membresias" : "Your Memberships";
String get membershipListAddTitle => languageStatus == 0 ? "Agregar membresia" : "Add Membership";
String get membershipABMTitle => languageStatus == 0 ? "Membresia" : "Membership";
String get membershipABMSaveTitle => languageStatus == 0 ? "Guardar" : "Save";
String get membershipABMNewSaved => languageStatus == 0 ? "Membresia creada correctamente" : "Membership created successfully";
String get membershipABMModifySaved => languageStatus == 0 ? "Membresia modificada correctamente" : "Membership updated successfully";
String get membershipABMModifyDelete => languageStatus == 0 ? "Membresia borrada correctamente" : "Membership deleted successfully";

String get membershipSaving => languageStatus == 0 ? "Guardando membresia" : "Saving membership";
String get membershipDeleting => languageStatus == 0 ? "Borrando membresia" : "Deleting membership";

String get membershipSelectTitle => languageStatus == 0 ? "Seleccionar" : "Select";
String get membershipSelectNewTitle => languageStatus == 0 ? "CREAR CUENTA" : "CREATE ACCOUNT";
String get membershipSelectYearTitle => languageStatus == 0 ? "RECOMANDADO" : "RECOMMENDED";

String get categoryABMFieldTitleHint => languageStatus == 0 ? "¿Titulo de la categoría?" : "Category title?";
String get categoryABMFieldTitleLabel => languageStatus == 0 ? "Título" : "Title";
String get categoryABMFieldTitleError => languageStatus == 0 ? "Debe ingresar un título" : "You must enter a title";
String get categoryListTitle => languageStatus == 0 ? "Tus categorías" : "Your categories";
String get categoryListAddTitle => languageStatus == 0 ? "Agregar categoría" : "Add category";
String get categoryABMTitle => languageStatus == 0 ? "Categoría" : "Category";
String get categoryABMSaveTitle => languageStatus == 0 ? "Guardar" : "Save";
String get categoryABMNewSaved => languageStatus == 0 ? "Categoría creada correctamente" : "Category created successfully";
String get categoryABMModifySaved => languageStatus == 0 ? "Categoría modificada correctamente" : "Category updated successfully";
String get categoryABMModifyDelete => languageStatus == 0 ? "Categoría borrada correctamente" : "Category deleted successfully";

String get categorySaving => languageStatus == 0 ? "Guardando categoría" : "Saving category";
String get categoryDeleting => languageStatus == 0 ? "Borrando categoría" : "Deleting category";

String get userExamABMSaving => languageStatus == 0 ? "Guardando examen" : "Saving exam";
String get userExamQualificationTitle => languageStatus == 0 ? "Calificación" : "Score";

String get questionABMFieldCategoryTitle => languageStatus == 0 ? "Categoría" : "Category";
String get questionABMFieldCategoryError => languageStatus == 0 ? "Debe ingresar la categoría" : "You must enter the category";

String get questionABMFieldTitleHint => languageStatus == 0 ? "¿Titulo de la pregunta?" : "Question title?";
String get questionABMFieldTitleLabel => languageStatus == 0 ? "Título" : "Title";
String get questionABMFieldTitleError => languageStatus == 0 ? "Debe ingresar un título" : "You must enter a title";

String get questionABMFieldExplanationHint => languageStatus == 0 ? "¿explicación de la pregunta?" : "Explanation of the question?";
String get questionABMFieldExplanationLabel => languageStatus == 0 ? "Explicación" : "Explanation";
String get questionABMFieldExplanationError => languageStatus == 0 ? "Debe ingresar una explicación" : "You must enter an explanation";

String get questionABMFieldReferenceHint => languageStatus == 0 ? "¿referencia de la pregunta?" : "Question reference?";
String get questionABMFieldReferenceLabel => languageStatus == 0 ? "Referencia" : "Reference";
String get questionABMFieldReferenceError => languageStatus == 0 ? "Debe ingresar una referencia" : "You must enter a reference";

String get questionABMFieldAnswerWithoutTitleError => languageStatus == 0 ? "Selección de respuesta sin la respuesta " : "Answer selection without the answer";
String get questionABMFieldIsEnabledLabel => languageStatus == 0 ? "Habilitada" : "Enabled";
String get questionABMFieldAnswer1Error => languageStatus == 0 ? "Debe indicar la respuesta correcta" : "You must indicate the correct answer";
//const String questionABMFieldAnswer2Error =
//    "No puede seleccionar mas de una respuesta correcta";

String get questionABMFieldAnswer1Caption => languageStatus == 0 ? "Respuesta 1" : "Answer 1";
String get questionABMFieldAnswer2Caption => languageStatus == 0 ? "Respuesta 2" : "Answer 2";
String get questionABMFieldAnswer3Caption => languageStatus == 0 ? "Respuesta 3" : "Answer 3";
String get questionABMFieldAnswer4Caption => languageStatus == 0 ? "Respuesta 4" : "Answer 4";
String get questionABMFieldAnswer5Caption => languageStatus == 0 ? "Respuesta 5" : "Answer 5";

String get questionABMFieldAnswerXIsCorrectLabel => languageStatus == 0 ? "Es la correcta" : "Is correct";
String get questionABMFieldAnswerXTitleHint => languageStatus == 0 ? "Respuesta" : "Answer";
String get questionABMFieldAnswerXTitleLabel => languageStatus == 0 ? "Respuesta" : "Answer";

String get questionListTitle => languageStatus == 0 ? "Tus preguntas" : "Your questions";
String get questionListAddTitle => languageStatus == 0 ? "Agregar pregunta" : "Add question";
String get questionABMTitle => languageStatus == 0 ? "Pregunta" : "Question";
String get questionABMSaveTitle => languageStatus == 0 ? "Guardar" : "Save";
String get questionABMNewSaved => languageStatus == 0 ? "Pregunta creada correctamente" : "Question created successfully";
String get questionABMModifySaved => languageStatus == 0 ? "Pregunta modificada correctamente" : "Question modified successfully";
String get questionABMModifyDelete => languageStatus == 0 ? "Pregunta borrada correctamente" : "Question deleted successfully";

String get questionSaving => languageStatus == 0 ? "Guardando pregunta" : "Saving question";
String get questionDeleting => languageStatus == 0 ? "Borrando pregunta" : "Deleting question";

String get questionTitle => languageStatus == 0 ? "Crear un examen" : "Create an exam";
String get questionNewOpenTitle => languageStatus == 0 ? "Modo estudio" : "Study mode";
String get questionNewOpenButtonTitle => languageStatus == 0 ? "Iniciar" : "Start";
String get questionNewClosedTitle => languageStatus == 0 ? "Modo examen" : "Exam mode";
String get questionNewClosedButtonTitle => languageStatus == 0 ? "Iniciar" : "Start";
String get questionHistoryTitle => languageStatus == 0 ? "Cuestionarios realizados" : "Completed exams";
String get questionHistoryButtonTitle => languageStatus == 0 ? "Ver" : "View";

String get videoTitleCustom => languageStatus == 0 ? "VIDEOCLASES" : "VIDEOS";
String get videoNewOpenTitle => languageStatus == 0 ? "Videoclases" : "Video classes";
String get videoOpenButtonTitle => languageStatus == 0 ? "Iniciar" : "Start";
String get videoNewClosedButtonTitle => languageStatus == 0 ? "Iniciar" : "Start";
String get videoNewClosedTitle => languageStatus == 0 ? "Videoclases" : "Video classes";

String get membershipPurchaseTitle => languageStatus == 0 ? "Comprar Planes de suscripción" : "Purchase subscription plans";

String get membershipPurchaseFieldCardNumberHint => languageStatus == 0 ? "¿Cuál es el número de tarjeta?" : "What is the card number?";
String get membershipPurchaseFieldCardNumberLabel => languageStatus == 0 ? "Número de tarjeta *" : "Card number *";
String get membershipPurchaseFieldCardNumberError => languageStatus == 0 ? "Debe ingresar un número de tarjeta" : "You must enter a card number";

String get membershipPurchaseFieldCardDueDateHint => languageStatus == 0 ? "¿Cuál es el vencimiento?" : "What is the expiration date?";
String get membershipPurchaseFieldCardDueDateLabel => languageStatus == 0 ? "Vencimiento *" : "Expiration date *";
String get membershipPurchaseFieldCardDueDateError => languageStatus == 0 ? "Debe ingresar el vencimiento" : "You must enter the expiration date";

String get membershipPurchaseFieldCardCheckDigitHint => languageStatus == 0 ? "¿Cuál es el código de seguridad?" : "What is the security code?";
String get membershipPurchaseFieldCardCheckDigitLabel => languageStatus == 0 ? "Código de seguridad *" : "Security code *";
String get membershipPurchaseFieldCardCheckDigitError => languageStatus == 0 ? "Debe ingresar el código de seguridad" : "You must enter the security code";

String get membershipPurchaseSendTitle => languageStatus == 0 ? "Comprar" : "Buy";
String get membershipPurchaseSaving => languageStatus == 0 ? "Comprando" : "Processing purchase";
String get membershipPurchaseSendOkTitle => languageStatus == 0 ? "Compra realizada con exito" : "Purchase successful";
String get membershipPurchasePaymentCardTitle => languageStatus == 0 ? "Tarjeta" : "Card";
String get membershipPurchasePaymentPayPalTitle => languageStatus == 0 ? "Paypal" : "Paypal";

String get questionTodoDetail => languageStatus == 0 ? "Antes de comenzar, necesitamos saber algunos datos." : "Before starting, we need some information.";
String get questionTodoError1 => languageStatus == 0 ? "Presenta vencido su plan, por favor compre otro para continuar." : "Your plan has expired. Please purchase another one to continue.";
String get questionTodoError2 => languageStatus == 0 ? "Te has quedado sin la posibilidad de generar mas preguntas/respuesta, compra un plan para continuar." : "You've reached your question limit. Purchase a plan to continue.";
String get questionTodoSaving => languageStatus == 0 ? "Accediendo" : "Accessing";

String get questionTodoFieldMaxQuestionsHint => languageStatus == 0 ? "¿Cantidad máxima de preguntas?" : "Maximum number of questions?";
String get questionTodoFieldMaxQuestionsLabel => languageStatus == 0 ? "Preguntas *" : "Questions *";
String get questionTodoFieldMaxQuestionsError => languageStatus == 0 ? "Debe ingresar la cantidad máxima de preguntas" : "You must enter the maximum number of questions";

String get questionTodoFieldCustomTitleHint => languageStatus == 0 ? "¿Título?" : "Title?";
String get questionTodoFieldCustomTitleLabel => languageStatus == 0 ? "Título" : "Title";

String get questionTodoFieldMaxTimeHint => languageStatus == 0 ? "¿Tiempo máximo de tiempo (minutos)?" : "Maximum time (minutes)?";
String get questionTodoFieldMaxTimeLabel => languageStatus == 0 ? "Tiempo máximo (minutos) *" : "Maximum time (minutes) *";
String get questionTodoFieldMaxTimeError => languageStatus == 0 ? "Debe ingresar el tiempo máximo de tiempo (minutos)" : "You must enter the maximum time (minutes)";

String get questionTodoFieldCategoryError => languageStatus == 0 ? "Debe seleccionar una categoría" : "You must select a category";
String get questionTodoCategoryQuestionMaxError => languageStatus == 0 ? "La cantidad de preguntas supera las que tenemos almacenadas" : "The number of questions exceeds the stored ones";
String get questionTodoCategoryMembershipError => languageStatus == 0 ? "La cantidad de preguntas supera las permitidas por su plan" : "The number of questions exceeds your plan limit";

String get questionTodoSendTitle => languageStatus == 0 ? "Iniciar" : "Start";
String get questionRunTimeTitle => languageStatus == 0 ? "Tiempo restante" : "Remaining time";
String get questionRunButtonValidateTitle => languageStatus == 0 ? "Continuar" : "Continue";
String get questionRunButtonNextTitle => languageStatus == 0 ? "Continuar" : "Continue";
String get questionRunExplanationTitle => languageStatus == 0 ? "Comentario" : "Comment";
String get questionRunReferenceTitle => languageStatus == 0 ? "Referencias" : "References";

String get filterSearchTextHintText => languageStatus == 0 ? "Filtrar" : "Filter";

String get questionABMPhoto01Title => languageStatus == 0 ? "Foto 1" : "Photo 1";
String get questionABMPhoto02Title => languageStatus == 0 ? "Foto 2" : "Photo 2";
String get questionABMPhoto03Title => languageStatus == 0 ? "Foto 3" : "Photo 3";

String get paymentViewConfirmateSaved => languageStatus == 0 ? "Compra confirmada" : "Purchase confirmed";
String get paymentViewConfirmateCancel => languageStatus == 0 ? "Compra cancelada" : "Purchase canceled";

String get userMembershipPurchaseStatusModelValuePendingCaption => languageStatus == 0 ? "Pendiente" : "Pending";
String get userMembershipPurchaseStatusModelValueEndCaption => languageStatus == 0 ? "Finalizado" : "End";
String get userMembershipPurchaseStatusModelValueCancelCaption => languageStatus == 0 ? "Cancelado" : "Cancel";

String get userMembershipPurchasePendingError => languageStatus == 0 ? "Error, esta compra esta finalizada" : "Error, this purchase has ended";

String get flashcardQuestionRunTimeTitle => languageStatus == 0 ? "Tiempo restante" : "Remaining time";
String get flashcardQuestionRunButtonValidateTitle => languageStatus == 0 ? "Mostrar respuesta" : "Show answer";
String get flashcardQuestionRunButtonNextTitle => languageStatus == 0 ? "Continuar" : "Continue";

String get flashcardCategoryABMFieldTitleHint => languageStatus == 0 ? "¿Titulo de la categoría?" : "Category title?";
String get flashcardCategoryABMFieldTitleLabel => languageStatus == 0 ? "Título" : "Title";
String get flashcardCategoryABMFieldTitleError => languageStatus == 0 ? "Debe ingresar un título" : "You must enter a title";

String get flashcardCategoryListTitle => languageStatus == 0 ? "(Flashcards) Tus categorías" : "(Flashcards) Your categories";
String get flashcardCategoryListAddTitle => languageStatus == 0 ? "Agregar categoría" : "Add category";
String get flashcardCategoryABMTitle => languageStatus == 0 ? "Categoría" : "Category";
String get flashcardCategoryABMSaveTitle => languageStatus == 0 ? "Guardar" : "Save";
String get flashcardCategoryABMNewSaved => languageStatus == 0 ? "(Flashcards) Categoría creada correctamente" : "(Flashcards) Category created successfully";
String get flashcardCategoryABMModifySaved => languageStatus == 0 ? "(Flashcards) Categoría modificada correctamente" : "(Flashcards) Category modified successfully";
String get flashcardCategoryABMModifyDelete => languageStatus == 0 ? "(Flashcards) Categoría borrada correctamente" : "(Flashcards) Category deleted successfully";

String get flashcardCategorySaving => languageStatus == 0 ? "(Flashcards) Guardando categoría" : "(Flashcards) Saving category";
String get flashcardCategoryDeleting => languageStatus == 0 ? "(Flashcards) Borrando categoría" : "(Flashcards) Deleting category";

String get userFlashcardExamABMSaving => languageStatus == 0 ? "Guardando flashcards" : "Saving flashcards";

String get flashcardQuestionListTitle => languageStatus == 0 ? "(Flashcards) Tus preguntas" : "(Flashcards) Your questions";
String get flashcardQuestionListAddTitle => languageStatus == 0 ? "Agregar pregunta" : "Add question";
String get flashcardQuestionABMTitle => languageStatus == 0 ? "Pregunta" : "Question";
String get flashcardQuestionABMSaveTitle => languageStatus == 0 ? "Guardar" : "Save";
String get flashcardQuestionABMNewSaved => languageStatus == 0 ? "(Flashcards) Pregunta creada correctamente" : "(Flashcards) Question created successfully";
String get flashcardQuestionABMModifySaved => languageStatus == 0 ? "(Flashcards) Pregunta modificada correctamente" : "(Flashcards) Question modified successfully";
String get flashcardQuestionABMModifyDelete => languageStatus == 0 ? "(Flashcards) Pregunta borrada correctamente" : "(Flashcards) Question deleted successfully";

String get flashcardQuestionSaving => languageStatus == 0 ? "(Flashcards) Guardando pregunta" : "(Flashcards) Saving question";
String get flashcardQuestionDeleting => languageStatus == 0 ? "(Flashcards) Borrando pregunta" : "(Flashcards) Deleting question";

String get flashcardQuestionTitle => languageStatus == 0 ? "Crear flashcards" : "Create flashcards";
String get flashcardQuestionNewTitle => languageStatus == 0 ? "Flashcards\n" : "Flashcards\n";
String get flashcardQuestionNewButtonTitle => languageStatus == 0 ? "Iniciar" : "Start";
String get flashcardQuestionHistoryTitle => languageStatus == 0 ? "Flashcards realizados" : "Flashcards history";
String get flashcardQuestionHistoryButtonTitle => languageStatus == 0 ? "Ver" : "View";

String get flashcardQuestionABMFieldCategoryTitle => languageStatus == 0 ? "Categoría" : "Category";
String get flashcardQuestionABMFieldCategoryError => languageStatus == 0 ? "Debe ingresar la categoría" : "You must enter the category";

String get flashcardQuestionABMFieldTitleHint =>
    languageStatus == 0 ? "¿Titulo de la pregunta?" : "Question title?";
String get flashcardQuestionABMFieldTitleLabel =>
    languageStatus == 0 ? "Título" : "Title";
String get flashcardQuestionABMFieldTitleError =>
    languageStatus == 0 ? "Debe ingresar un título" : "You must enter a title";

String get flashcardQuestionABMFieldIsEnabledLabel =>
    languageStatus == 0 ? "Habilitada" : "Enabled";

String get flashcardQuestionABMFieldAnswer1Error =>
    languageStatus == 0 ? "Debe indicar la respuesta correcta" : "You must indicate the correct answer";
String get flashcardQuestionABMFieldAnswer1Caption =>
    languageStatus == 0 ? "Respuesta" : "Answer";

String get flashcardQuestionABMFieldAnswerXIsCorrectLabel =>
    languageStatus == 0 ? "Es la correcta" : "It is correct";
String get flashcardQuestionABMFieldAnswerXTitleHint =>
    languageStatus == 0 ? "Respuesta" : "Answer";
String get flashcardQuestionABMFieldAnswerXTitleLabel =>
    languageStatus == 0 ? "Respuesta" : "Answer";
String get flashcardQuestionABMFieldAnswerWithoutTitleError =>
    languageStatus == 0 ? "Selección de respuesta sin la respuesta " : "Answer selected without actual answer";

String get flashcardQuestionTodoDetail =>
    languageStatus == 0 ? "Antes de comenzar, necesitamos saber algunos datos." : "Before we start, we need to know some data.";
String get flashcardQuestionTodoError1 =>
    languageStatus == 0 ? "Presenta vencido su plan, por favor compre otro para continuar." : "Your plan has expired, please buy another to continue.";
String get flashcardQuestionTodoError2 =>
    languageStatus == 0 ? "Te has quedado sin la posibilidad de generar mas flashcards, compra un plan para continuar." : "You can no longer generate flashcards, please buy a new plan.";
String get flashcardQuestionTodoSaving =>
    languageStatus == 0 ? "Accediendo" : "Accessing";

String get flashcardQuestionTodoFieldMaxQuestionsHint =>
    languageStatus == 0 ? "¿Cantidad máxima de preguntas?" : "Maximum number of questions?";
String get flashcardQuestionTodoFieldMaxQuestionsLabel =>
    languageStatus == 0 ? "Preguntas *" : "Questions *";
String get flashcardQuestionTodoFieldMaxQuestionsError =>
    languageStatus == 0 ? "Debe ingresar la cantidad máxima de preguntas" : "You must enter the maximum number of questions";

String get flashcardQuestionTodoFieldCustomTitleHint =>
    languageStatus == 0 ? "¿Título?" : "Title?";
String get flashcardQuestionTodoFieldCustomTitleLabel =>
    languageStatus == 0 ? "Título" : "Title";

String get flashcardQuestionTodoFieldMaxTimeHint =>
    languageStatus == 0 ? "¿Tiempo máximo de tiempo (minutos)?" : "Maximum time (minutes)?";
String get flashcardQuestionTodoFieldMaxTimeLabel =>
    languageStatus == 0 ? "Tiempo máximo (minutos) *" : "Max time (minutes) *";
String get flashcardQuestionTodoFieldMaxTimeError =>
    languageStatus == 0 ? "Debe ingresar el tiempo máximo de tiempo (minutos)" : "You must enter the max time (minutes)";

String get flashcardQuestionTodoFieldCategoryError =>
    languageStatus == 0 ? "Debe seleccionar una categoría" : "You must select a category";
String get flashcardQuestionTodoCategoryQuestionMaxError =>
    languageStatus == 0 ? "La cantidad de preguntas supera las que tenemos almacenadas" : "The number of questions exceeds available ones.";
String get flashcardQuestionTodoCategoryMembershipError =>
    languageStatus == 0 ? "La cantidad de preguntas supera las permitidas por su plan" : "The question limit exceeds your current plan.";

String get flashcardQuestionTodoSendTitle =>
    languageStatus == 0 ? "Iniciar" : "Start";

String get userDeleteTitle => languageStatus == 0 ? "Eliminar cuenta" : "Delete Account";
String get userDeleteQuestion => languageStatus == 0 ? "¿Desea eliminar la cuenta?" : "Do you want to delete the account?";
String get userDeleteYesCaption => languageStatus == 0 ? "Si" : "Yes";
String get userDeleteNoCaption => languageStatus == 0 ? "No" : "No";
String get userDeletedTitle => languageStatus == 0 ? "Cuenta eliminada" : "Account Deleted";
String get userDeletedBody => languageStatus == 0 ? "Procederemos a la eliminacion de su cuenta y todos los datos asociados" : "We will proceed to delete your account and all associated data.";

String get videoNewSaving => languageStatus == 0 ? "Guardando videoclase" : "Saving video class";
String get videoModifySaving => languageStatus == 0 ? "Modificando videoclase" : "Modifying video class";
String get videoDeleteSaving => languageStatus == 0 ? "Eliminando videoclase" : "Deleting video class";
String get videoAbmFieldNewImageError => languageStatus == 0 ? "Debe capturar una imagen" : "You must capture an image";

String get videoCategoryListTitle => languageStatus == 0 ? "(Videoclases) Tus categorías" : "(Video Classes) Your Categories";
String get videoCategoryListAddTitle => languageStatus == 0 ? "Agregar categoría" : "Add Category";
String get videoCategoryABMTitle => languageStatus == 0 ? "Categoría" : "Category";
String get videoCategoryABMSaveTitle => languageStatus == 0 ? "Guardar" : "Save";

String get videoCategoryABMFieldTitleHint => languageStatus == 0 ? "¿Titulo de la categoría?" : "Category title?";
String get videoCategoryABMFieldTitleLabel => languageStatus == 0 ? "Título" : "Title";
String get videoCategoryABMFieldTitleError => languageStatus == 0 ? "Debe ingresar un título" : "You must enter a title";

String get videoCategoryABMNewSaved => languageStatus == 0 ? "(Videoclases) Categoría creada correctamente" : "(Video Classes) Category created successfully";
String get videoCategoryABMModifySaved => languageStatus == 0 ? "(Videoclases) Categoría modificada correctamente" : "(Video Classes) Category updated successfully";
String get videoCategoryABMModifyDelete => languageStatus == 0 ? "(Videoclases) Categoría borrada correctamente" : "(Video Classes) Category deleted successfully";

String get videoCategorySaving => languageStatus == 0 ? "(Videoclases) Guardando categoría" : "(Video Classes) Saving category";
String get videoCategoryDeleting => languageStatus == 0 ? "(Videoclases) Borrando categoría" : "(Video Classes) Deleting category";

String get userVideoExamABMSaving => languageStatus == 0 ? "Guardando videoclase" : "Saving video class";

String get videoListTitle => languageStatus == 0 ? "(Videoclases) Tus Videoclases" : "(Video Classes) Your Videos";
String get videoListAddTitle => languageStatus == 0 ? "Agregar Videoclase" : "Add Video Class";
String get videoABMTitle => languageStatus == 0 ? "Videoclase" : "Video Class";
String get videoABMSaveTitle => languageStatus == 0 ? "Guardar" : "Save";
String get videoABMNewSaved => languageStatus == 0 ? "(Videoclases) Videoclase creada correctamente" : "(Video Classes) Video created successfully";
String get videoABMModifySaved => languageStatus == 0 ? "(Videoclases) Videoclase modificada correctamente" : "(Video Classes) Video updated successfully";
String get videoABMModifyDelete => languageStatus == 0 ? "(Videoclases) Videoclase borrada correctamente" : "(Video Classes) Video deleted successfully";
String get videoSaving => languageStatus == 0 ? "(Videoclases) Guardando videoclase" : "(Video Classes) Saving video class";
String get videoDeleting => languageStatus == 0 ? "(Videoclases) Borrando videoclase" : "(Video Classes) Deleting video class";
String get videoTitle => languageStatus == 0 ? "Crear videoclase" : "Create video class";
String get videoNewTitle => languageStatus == 0 ? "Ver videoclases" : "View video classes";
String get videoNewButtonTitle => languageStatus == 0 ? "Iniciar" : "Start";
String get videoHistoryTitle => languageStatus == 0 ? "Videoclases realizadas" : "Completed video classes";
String get videoHistoryButtonTitle => languageStatus == 0 ? "Ver" : "View";

String get videoABMFieldCategoryTitle => languageStatus == 0 ? "Categoría" : "Category";
String get videoABMFieldCategoryError => languageStatus == 0 ? "Debe ingresar la categoría" : "You must enter a category";
String get videoABMFieldTitleHint => languageStatus == 0 ? "¿Titulo del videoclase?" : "Video title?";
String get videoABMFieldTitleLabel => languageStatus == 0 ? "Título" : "Title";
String get videoABMFieldTitleError => languageStatus == 0 ? "Debe ingresar un título" : "You must enter a title";
String get videoABMFieldUrlHint => languageStatus == 0 ? "¿Url del videoclase?" : "Video URL?";
String get videoABMFieldUrlLabel => languageStatus == 0 ? "Url" : "URL";
String get videoABMFieldUrlError => languageStatus == 0 ? "Debe ingresar una Url" : "You must enter a URL";
String get videoABMFieldIsEnabledLabel => languageStatus == 0 ? "Habilitada" : "Enabled";

String get videoTodoError1 => languageStatus == 0 ? "Presenta vencido su plan, por favor compre otro para continuar." : "Your plan has expired, please purchase a new one to continue.";
String get videoTodoError2 => languageStatus == 0 ? "Te has quedado sin la posibilidad de visualizar nuevos videos, compra un plan para continuar." : "You can no longer view new videos, please purchase a new plan to continue.";
String get videoTodoSaving => languageStatus == 0 ? "Accediendo" : "Accessing";
String get videoTodoFieldMaxQuestionsHint => languageStatus == 0 ? "¿Cantidad máxima de videoclases" : "Maximum number of video classes";
String get videoTodoFieldMaxQuestionsLabel => languageStatus == 0 ? "Videoclases *" : "Video Classes *";
String get videoTodoFieldMaxQuestionsError => languageStatus == 0 ? "Debe ingresar la cantidad máxima de videoclases" : "You must enter the maximum number of video classes";
String get videoTodoFieldCustomTitleHint => languageStatus == 0 ? "¿Título?" : "Title?";
String get videoTodoFieldCustomTitleLabel => languageStatus == 0 ? "Título" : "Title";
String get videoTodoFieldMaxTimeHint => languageStatus == 0 ? "¿Tiempo máximo de tiempo (minutos)?" : "Maximum time (minutes)?";
String get videoTodoFieldMaxTimeLabel => languageStatus == 0 ? "Tiempo máximo (minutos) *" : "Max time (minutes) *";
String get videoTodoFieldMaxTimeError => languageStatus == 0 ? "Debe ingresar el tiempo máximo de tiempo (minutos)" : "You must enter the max time (minutes)";
String get videoTodoFieldCategoryError => languageStatus == 0 ? "Debe seleccionar una categoría" : "You must select a category";
String get videoTodoSendTitle => languageStatus == 0 ? "Iniciar" : "Start";