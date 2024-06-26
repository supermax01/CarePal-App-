import '/components/primary_button/primary_button_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'register_widget.dart' show RegisterWidget;
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

class RegisterModel extends FlutterFlowModel<RegisterWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode3;
  TextEditingController? textController3;
  String? Function(BuildContext, String?)? textController3Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode4;
  TextEditingController? textController4;
  late bool passwordVisibility;
  String? Function(BuildContext, String?)? textController4Validator;
  // State field(s) for Checkbox widget.
  bool? checkboxValue;
  // Model for primaryButton component.
  late PrimaryButtonModel primaryButtonModel;

  @override
  void initState(BuildContext context) {
    passwordVisibility = false;
    primaryButtonModel = createModel(context, () => PrimaryButtonModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    textFieldFocusNode1?.dispose();
    textController1?.dispose();

    textFieldFocusNode2?.dispose();
    textController2?.dispose();

    textFieldFocusNode3?.dispose();
    textController3?.dispose();

    textFieldFocusNode4?.dispose();
    textController4?.dispose();

    primaryButtonModel.dispose();
  }

  // Newly added method for registering a user using Hive
  Future<bool> registerUser(String username, String password) async {
    var box = await Hive.openBox('userCredentials');
    if (box.containsKey(username)) {
      await box.close();
      return false; // Username already exists
    }
    await box.put(username, password);
    await box.close();
    return true; // Registration successful
  }
}
