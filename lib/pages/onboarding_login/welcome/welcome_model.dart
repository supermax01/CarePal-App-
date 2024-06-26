import '/components/primary_button/primary_button_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'welcome_widget.dart' show WelcomeWidget;
import 'package:flutter/material.dart';

class WelcomeModel extends FlutterFlowModel<WelcomeWidget> {
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
