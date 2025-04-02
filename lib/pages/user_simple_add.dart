// ignore_for_file: deprecated_member_use

import 'package:mdexam/models/membership_model.dart';
import 'package:mdexam/models/user_model.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:mdexam/pages/home.dart';
import 'package:mdexam/utils/firebase/firebase_custom_user.dart';
import 'package:mdexam/utils/firebase/firebase_auth.dart';
import 'package:mdexam/utils/general/reference_Page_State.dart';
import 'package:mdexam/variables/globalvar.dart';
import 'package:mdexam/widgets/application_bar.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:shared_preferences/shared_preferences.dart';

// ignore: must_be_immutable
class UserSimpleAdd extends StatefulWidget {
  HomePageState homePageState;
  ReferencePageState referencePageState;
  final bool isNew;
  bool isModify;
  bool dobleClosed = false;
  UserModel userModel;
  bool isOriginSelectAdd;
  List<MembershipModel> memberships;

  UserSimpleAdd(
      {Key? key,
      required this.homePageState,
      required this.referencePageState,
      required this.isNew,
      required this.isModify,
      required this.userModel,
      required this.isOriginSelectAdd,
      required this.memberships})
      : super(key: key);

  @override
  State<UserSimpleAdd> createState() => _UserSimpleAddState();
}

class _UserSimpleAddState extends State<UserSimpleAdd> {
  final _newNameController = TextEditingController();
  final _newLastNameController = TextEditingController();
  final _newUsernameController = TextEditingController();
  final _newPasswordController = TextEditingController();
//  final _referenceUsernameController = TextEditingController();
//  bool _isAcceptTOSController = true;

  final _formKey = GlobalKey<FormState>();

  Future<bool> _onBackPressed() async {
    return true;
  }

  void init() {}

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _onBackPressed,
      child: Scaffold(
        appBar: ApplicationBar(
          context: context,
          title: userSimpleAddTitle,
          withShareButton: false,
        ),
        body: ListView(children: [
          Form(
              key: _formKey,
              child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
/* Name */
                        TextFormField(
                          decoration: InputDecoration(
                            icon: const Icon(Icons.people_rounded),
                            hintText: userSimpleAddFieldNameHint,
                            labelText: userSimpleAddFieldNameLabel,
                          ),
                          controller: _newNameController,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return userSimpleAddFieldNameError;
                            }
                            return null;
                          },
                        ),

/* LastName */
                        TextFormField(
                          decoration: InputDecoration(
                            icon: const Icon(Icons.people_rounded),
                            hintText: userSimpleAddFieldLastNameHint,
                            labelText: userSimpleAddFieldLastNameLabel,
                          ),
                          controller: _newLastNameController,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return userSimpleAddFieldLastNameError;
                            }
                            return null;
                          },
                        ),

/* Username */
                        widget.isNew
                            ? TextFormField(
                                decoration: InputDecoration(
                                  icon: const Icon(Icons.contact_mail_rounded),
                                  hintText: userSimpleAddFieldUsernameHint,
                                  labelText: userSimpleAddFieldUsernameLabel,
                                ),
                                controller: _newUsernameController,
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return userSimpleAddFieldUsernameError;
                                  }
                                  return null;
                                },
                              )
                            : Container(),

/* Password */
                        widget.isNew
                            ? TextFormField(
                                obscureText: true,
                                maxLength: null,
                                maxLines: 1,
                                decoration: InputDecoration(
                                  icon: const Icon(Icons.password_rounded),
                                  hintText: userSimpleAddFieldPasswordHint,
                                  labelText: userSimpleAddFieldPasswordLabel,
                                ),
                                controller: _newPasswordController,
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return userSimpleAddFieldPasswordError;
                                  }
                                  return null;
                                },
                              )
                            : Container(),

/*
/* Reference Username */
                        TextFormField(
                          decoration: const InputDecoration(
                            icon:  Icon(Icons.people_outline_outlined),
                            hintText:  userSimpleAddFieldReferenceUsernameHint,
                            labelText:  userSimpleAddFieldReferenceUsernameLabel,
                          ),
                          controller: _referenceUsernameController,
                        ),

/* TOS */
                        Row(
                          children: [
                            Checkbox(
                                checkColor: Colors.white,
                                fillColor:
                                    MaterialStateProperty.resolveWith(getColor),
                                value: _isAcceptTOSController,
                                onChanged: (bool? value) {
                                  setState(() {
                                    _isAcceptTOSController = value!;
                                  });
                                }),
                            GestureDetector(
                                onTap: () {
                                  ParameterModel parameterModel =
                                      parameterStringFromKey2ToParameterModel(
                                          widget.homePageState.listParameters,
                                          "CustomerTOS");

                                  Navigator.push<void>(
                                    context,
                                    MaterialPageRoute<void>(
                                      builder: (BuildContext context) =>
                                          ContentView(
                                              title: parameterModel.title,
                                              body: parameterModel.additional,
                                              isFooterPayment: false),
                                    ),
                                  );
                                },
                                child: const Text( userSimpleAddFieldTOSLabel))
                          ],
                        ),
*/

/* Finish */

                        Row(children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 16.0),
                            child: Center(
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.green,
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 20, vertical: 9),
                                    textStyle: const TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.normal)),
                                onPressed: () async {
                                  if (_formKey.currentState!.validate()) {
                                    String error = "";

//                                    if (!_isAcceptTOSController) {
//                                      error =  userSimpleAddFieldTOSError;
//                                    }

                                    if (error.isEmpty) {
                                      if (widget.isNew) {
                                        widget.userModel.name =
                                            _newNameController.text;

                                        widget.userModel.lastName =
                                            _newLastNameController.text;

                                        FirebaseCustomUserHelper()
                                            .add(
                                                context: context,
                                                email:
                                                    _newUsernameController.text,
                                                password:
                                                    _newPasswordController.text,
//                                          referenceUsername:
//                                              _referenceUsernameController.text,
                                                userModel: widget.userModel,
                                                memberships: widget.memberships)
                                            .then((result) {
                                          if (result == null) {
                                            ScaffoldMessenger.of(context)
                                                .showSnackBar(SnackBar(
                                              content: Text(
                                                userSimpleAddNewSaved,
                                                style: const TextStyle(fontSize: 16),
                                              ),
                                            ));

                                            if (_formKey.currentState!.validate()) {
                                              FirebaseAuthenticationHelper()
                                                  .signIn(
                                                      email: _newUsernameController.text,
                                                      password: _newPasswordController.text)
                                                  .then((result) async {
                                                if (result == null) {
                                                  final FirebaseAuth auth =
                                                      FirebaseAuth.instance;
                                                  String? username = auth.currentUser?.email;

                                                  SharedPreferences prefs =
                                                      await SharedPreferences.getInstance();
                                                  prefs.setBool(preferenceIsLogin, true);
                                                  prefs.setString(
                                                      preferenceLoginUsername, username!);

                                                  widget.homePageState.setIsLogin(true);
                                                  widget.homePageState
                                                      .setLoginUsername(username);

                                                  // print(username);

                                                  // if (Navigator.canPop(context)) {
                                                  //   Navigator.of(context).pop();
                                                  //   // Navigator.of(context).pop();
                                                  //   widget.homePageState.refresh();
                                                  // }
                                                  // Navigator.pop(context);
                                                  // if (Navigator.canPop(context)) {
                                                  //   if (widget.isOriginSelectAdd) {
                                                  //     Navigator.pop(context);
                                                  //   }
                                                  // }

                                                  // Navigator.pop(context);

                                                  Navigator.pushReplacement(
                                                    context,
                                                    MaterialPageRoute(builder: (context) => HomePage(idProfiler: IdProfiler.general)),
                                                  );


                                                  widget.homePageState.refresh();
                                                } else {
                                                  ScaffoldMessenger.of(context)
                                                      .showSnackBar(SnackBar(
                                                    content: Text(
                                                      result,
                                                      style: const TextStyle(fontSize: 16),
                                                    ),
                                                  ));
                                                }
                                              });
                                            }

                                            
                                          } else {
                                            ScaffoldMessenger.of(context)
                                                .showSnackBar(SnackBar(
                                              content: Text(
                                                result,
                                                style: const TextStyle(
                                                    fontSize: 16),
                                              ),
                                            ));
                                          }
                                        });
                                      }
                                    } else {
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(SnackBar(
                                        content: Text(
                                          error,
                                          style: const TextStyle(fontSize: 16),
                                        ),
                                      ));
                                    }
                                  }
                                },
                                child: Text(userSimpleAddSaveTitle),
                              ),
                            ),
                          ),
                        ])
                      ])))
        ]),
      ),
    );
  }




  Color getColor(Set<MaterialState> states) {
    const Set<MaterialState> interactiveStates = <MaterialState>{
      MaterialState.pressed,
      MaterialState.hovered,
      MaterialState.focused,
    };
    if (states.any(interactiveStates.contains)) {
      return Colors.blue;
    }
    return Colors.red;
  }
/*
  Image imageToStoreDeliveryDriversLicense;
  PickedFile pickedFileToStoreDeliveryDriversLicense;
  bool isNewImageDeliveryDriversLicense = false;

  void onCaptureImageDeliveryDriversLicense(
      ImageSource source, BuildContext context) async {
    try {
      if (isWeb()) {
        PickedFile pickedFile = await ImagePicker().getImage(source: source);

        if (pickedFile != null) {
          pickedFileToStoreDeliveryDriversLicense = pickedFile;
          imageToStoreDeliveryDriversLicense =
              Image.memory(await pickedFile.readAsBytes());
          isNewImageDeliveryDriversLicense = true;
        }

        setState(() {});
      }

      if (isMobile()) {
        PickedFile pickedFile = await ImagePicker().getImage(source: source);

        if (pickedFile != null) {
          pickedFileToStoreDeliveryDriversLicense = pickedFile;
          imageToStoreDeliveryDriversLicense =
              Image.memory(await pickedFile.readAsBytes());
          isNewImageDeliveryDriversLicense = true;
        }

        setState(() {});
      }
    } catch (e) {
      e.toString();
    }
  }

  Image imageToStoreDeliveryVehicleInsurance;
  PickedFile pickedFileToStoreDeliveryVehicleInsurance;
  bool isNewImageDeliveryVehicleInsurance = false;

  void onCaptureImageDeliveryVehicleInsurance(
      ImageSource source, BuildContext context) async {
    try {
      if (isWeb()) {
        PickedFile pickedFile = await ImagePicker().getImage(source: source);

        if (pickedFile != null) {
          pickedFileToStoreDeliveryVehicleInsurance = pickedFile;
          imageToStoreDeliveryVehicleInsurance =
              Image.memory(await pickedFile.readAsBytes());
          isNewImageDeliveryVehicleInsurance = true;
        }

        setState(() {});
      }

      if (isMobile()) {
        PickedFile pickedFile = await ImagePicker().getImage(source: source);

        if (pickedFile != null) {
          pickedFileToStoreDeliveryVehicleInsurance = pickedFile;
          imageToStoreDeliveryVehicleInsurance =
              Image.memory(await pickedFile.readAsBytes());
          isNewImageDeliveryVehicleInsurance = true;
        }

        setState(() {});
      }
    } catch (e) {
      e.toString();
    }
  }

  Image imageToStoreDeliveryVehicleWithPlates;
  PickedFile pickedFileToStoreDeliveryVehicleWithPlates;
  bool isNewImageDeliveryVehicleWithPlates = false;

  void onCaptureImageDeliveryVehicleWithPlates(
      ImageSource source, BuildContext context) async {
    try {
      if (isWeb()) {
        PickedFile pickedFile = await ImagePicker().getImage(source: source);

        if (pickedFile != null) {
          pickedFileToStoreDeliveryVehicleWithPlates = pickedFile;
          imageToStoreDeliveryVehicleWithPlates =
              Image.memory(await pickedFile.readAsBytes());
          isNewImageDeliveryVehicleWithPlates = true;
        }

        setState(() {});
      }

      if (isMobile()) {
        PickedFile pickedFile = await ImagePicker().getImage(source: source);

        if (pickedFile != null) {
          pickedFileToStoreDeliveryVehicleWithPlates = pickedFile;
          imageToStoreDeliveryVehicleWithPlates =
              Image.memory(await pickedFile.readAsBytes());
          isNewImageDeliveryVehicleWithPlates = true;
        }

        setState(() {});
      }
    } catch (e) {
      e.toString();
    }
  }
*/
}

class UserSimpleAddReferenceState extends ReferencePageState {
  _UserSimpleAddState userSimpleAddState;

  UserSimpleAddReferenceState(this.userSimpleAddState);

  @override
  void setStates() {
    // ignore: invalid_use_of_protected_member
    userSimpleAddState.setState(() {});
  }
}