import '/components/primary_button/primary_button_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'registration_success_widget.dart' show RegistrationSuccessWidget;
import 'package:flutter/material.dart';

class RegistrationSuccessModel
    extends FlutterFlowModel<RegistrationSuccessWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for primaryButton component.
  late PrimaryButtonModel primaryButtonModel;

  @override
  void initState(BuildContext context) {
    primaryButtonModel = createModel(context, () => PrimaryButtonModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    primaryButtonModel.dispose();
  }
}
