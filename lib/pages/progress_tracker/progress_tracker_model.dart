import '/components/action_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'progress_tracker_widget.dart' show ProgressTrackerWidget;
import 'package:flutter/material.dart';

class ProgressTrackerModel extends FlutterFlowModel<ProgressTrackerWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for Action component.
  late ActionModel actionModel;

  @override
  void initState(BuildContext context) {
    actionModel = createModel(context, () => ActionModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    actionModel.dispose();
  }
}
