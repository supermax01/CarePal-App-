import '/components/primary_button/primary_button_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'goals_widget.dart' show GoalsWidget;
import 'package:flutter/material.dart';
import 'package:flutter_card_swiper/flutter_card_swiper.dart';

class GoalsModel extends FlutterFlowModel<GoalsWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for SwipeableStack widget.
  late CardSwiperController swipeableStackController;
  // Model for primaryButton component.
  late PrimaryButtonModel primaryButtonModel;

  @override
  void initState(BuildContext context) {
    swipeableStackController = CardSwiperController();
    primaryButtonModel = createModel(context, () => PrimaryButtonModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    primaryButtonModel.dispose();
  }
}
