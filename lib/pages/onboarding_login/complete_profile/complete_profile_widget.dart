import '/components/primary_button/primary_button_widget.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/material.dart';
import 'complete_profile_model.dart';
export 'complete_profile_model.dart';

class CompleteProfileWidget extends StatefulWidget {
  const CompleteProfileWidget({super.key});

  @override
  State<CompleteProfileWidget> createState() => _CompleteProfileWidgetState();
}

class _CompleteProfileWidgetState extends State<CompleteProfileWidget> {
  late CompleteProfileModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CompleteProfileModel());

    _model.textController1 ??= TextEditingController();
    _model.textFieldFocusNode1 ??= FocusNode();

    _model.textController2 ??= TextEditingController();
    _model.textFieldFocusNode2 ??= FocusNode();

    _model.textController3 ??= TextEditingController();
    _model.textFieldFocusNode3 ??= FocusNode();

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Colors.white,
        body: SafeArea(
          top: true,
          child: Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(30.0, 0.0, 30.0, 0.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Image.asset(
                  'assets/images/Register.png',
                  fit: BoxFit.cover,
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 30.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Text(
                        'Let’s complete your profile',
                        style: FlutterFlowTheme.of(context).titleLarge.override(
                              fontFamily: 'Poppins',
                              fontSize: 20.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.bold,
                              lineHeight: 1.5,
                            ),
                      ),
                      Text(
                        'It will help us to know more about you!',
                        style: FlutterFlowTheme.of(context)
                            .labelMedium
                            .override(
                              fontFamily: 'Poppins',
                              color: FlutterFlowTheme.of(context).secondaryText,
                              letterSpacing: 0.0,
                              lineHeight: 1.5,
                            ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(14.0),
                        child: Container(
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context).accent4,
                            borderRadius: BorderRadius.circular(14.0),
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    10.0, 0.0, 0.0, 0.0),
                                child: Icon(
                                  Icons.settings_outlined,
                                  color: FlutterFlowTheme.of(context).accent1,
                                  size: 18.0,
                                ),
                              ),
                              Expanded(
                                child: FlutterFlowDropDown<String>(
                                  controller: _model.dropDownValueController ??=
                                      FormFieldController<String>(null),
                                  options: const [
                                    'Male',
                                    'Female',
                                    'Other',
                                    'Rather not say'
                                  ],
                                  onChanged: (val) => setState(
                                      () => _model.dropDownValue = val),
                                  width: 180.0,
                                  height: 50.0,
                                  textStyle: FlutterFlowTheme.of(context)
                                      .labelMedium
                                      .override(
                                        fontFamily: 'Poppins',
                                        color: const Color(0xFFADA4A5),
                                        letterSpacing: 0.0,
                                      ),
                                  hintText: 'Your gender',
                                  fillColor:
                                      FlutterFlowTheme.of(context).accent4,
                                  elevation: 2.0,
                                  borderColor: Colors.transparent,
                                  borderWidth: 0.0,
                                  borderRadius: 0.0,
                                  margin: const EdgeInsetsDirectional.fromSTEB(
                                      12.0, 4.0, 12.0, 4.0),
                                  hidesUnderline: true,
                                  isSearchable: false,
                                  isMultiSelect: false,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      TextFormField(
                        controller: _model.textController1,
                        focusNode: _model.textFieldFocusNode1,
                        onFieldSubmitted: (_) async {
                          final datePickedDate = await showDatePicker(
                            context: context,
                            initialDate: getCurrentTimestamp,
                            firstDate: DateTime(1900),
                            lastDate: getCurrentTimestamp,
                          );

                          if (datePickedDate != null) {
                            safeSetState(() {
                              _model.datePicked = DateTime(
                                datePickedDate.year,
                                datePickedDate.month,
                                datePickedDate.day,
                              );
                            });
                          }
                        },
                        autofocus: true,
                        obscureText: false,
                        decoration: InputDecoration(
                          hintText: 'Date of birth',
                          hintStyle:
                              FlutterFlowTheme.of(context).bodySmall.override(
                                    fontFamily: 'Poppins',
                                    color: const Color(0xFFADA4A5),
                                    letterSpacing: 0.0,
                                    lineHeight: 1.5,
                                  ),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(14.0),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.of(context).secondary,
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(14.0),
                          ),
                          errorBorder: UnderlineInputBorder(
                            borderSide: const BorderSide(
                              color: Color(0x00000000),
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(14.0),
                          ),
                          focusedErrorBorder: UnderlineInputBorder(
                            borderSide: const BorderSide(
                              color: Color(0x00000000),
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(14.0),
                          ),
                          filled: true,
                          fillColor: FlutterFlowTheme.of(context).accent4,
                          prefixIcon: Icon(
                            Icons.calendar_today_outlined,
                            color: FlutterFlowTheme.of(context).accent1,
                            size: 18.0,
                          ),
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Poppins',
                              color: FlutterFlowTheme.of(context).secondaryText,
                              letterSpacing: 0.0,
                            ),
                        validator: _model.textController1Validator
                            .asValidator(context),
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Expanded(
                            child: TextFormField(
                              controller: _model.textController2,
                              focusNode: _model.textFieldFocusNode2,
                              autofocus: true,
                              obscureText: false,
                              decoration: InputDecoration(
                                hintText: 'Your weight',
                                hintStyle: FlutterFlowTheme.of(context)
                                    .bodySmall
                                    .override(
                                      fontFamily: 'Poppins',
                                      color: const Color(0xFFADA4A5),
                                      letterSpacing: 0.0,
                                      lineHeight: 1.5,
                                    ),
                                enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(14.0),
                                ),
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color:
                                        FlutterFlowTheme.of(context).secondary,
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(14.0),
                                ),
                                errorBorder: UnderlineInputBorder(
                                  borderSide: const BorderSide(
                                    color: Color(0x00000000),
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(14.0),
                                ),
                                focusedErrorBorder: UnderlineInputBorder(
                                  borderSide: const BorderSide(
                                    color: Color(0x00000000),
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(14.0),
                                ),
                                filled: true,
                                fillColor: FlutterFlowTheme.of(context).accent4,
                                prefixIcon: Icon(
                                  Icons.web,
                                  color: FlutterFlowTheme.of(context).accent1,
                                  size: 18.0,
                                ),
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Poppins',
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                    letterSpacing: 0.0,
                                  ),
                              validator: _model.textController2Validator
                                  .asValidator(context),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                15.0, 0.0, 0.0, 0.0),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(16.0),
                              child: Container(
                                width: 48.0,
                                height: 48.0,
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                    colors: [
                                      FlutterFlowTheme.of(context).secondary1,
                                      FlutterFlowTheme.of(context).secondary2
                                    ],
                                    stops: const [0.0, 1.0],
                                    begin: const AlignmentDirectional(-1.0, -0.14),
                                    end: const AlignmentDirectional(1.0, 0.14),
                                  ),
                                  borderRadius: BorderRadius.circular(16.0),
                                ),
                                alignment: const AlignmentDirectional(0.0, 0.0),
                                child: Text(
                                  'KG',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Poppins',
                                        color: Colors.white,
                                        letterSpacing: 0.0,
                                      ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Expanded(
                            child: TextFormField(
                              controller: _model.textController3,
                              focusNode: _model.textFieldFocusNode3,
                              autofocus: true,
                              obscureText: false,
                              decoration: InputDecoration(
                                hintText: 'Your height',
                                hintStyle: FlutterFlowTheme.of(context)
                                    .bodySmall
                                    .override(
                                      fontFamily: 'Poppins',
                                      color: const Color(0xFFADA4A5),
                                      letterSpacing: 0.0,
                                      lineHeight: 1.5,
                                    ),
                                enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(14.0),
                                ),
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color:
                                        FlutterFlowTheme.of(context).secondary,
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(14.0),
                                ),
                                errorBorder: UnderlineInputBorder(
                                  borderSide: const BorderSide(
                                    color: Color(0x00000000),
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(14.0),
                                ),
                                focusedErrorBorder: UnderlineInputBorder(
                                  borderSide: const BorderSide(
                                    color: Color(0x00000000),
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(14.0),
                                ),
                                filled: true,
                                fillColor: FlutterFlowTheme.of(context).accent4,
                                prefixIcon: Icon(
                                  Icons.games_outlined,
                                  color: FlutterFlowTheme.of(context).accent1,
                                  size: 18.0,
                                ),
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Poppins',
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                    letterSpacing: 0.0,
                                  ),
                              validator: _model.textController3Validator
                                  .asValidator(context),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                15.0, 0.0, 0.0, 0.0),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(16.0),
                              child: Container(
                                width: 48.0,
                                height: 48.0,
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                    colors: [
                                      FlutterFlowTheme.of(context).secondary1,
                                      FlutterFlowTheme.of(context).secondary2
                                    ],
                                    stops: const [0.0, 1.0],
                                    begin: const AlignmentDirectional(-1.0, -0.14),
                                    end: const AlignmentDirectional(1.0, 0.14),
                                  ),
                                  borderRadius: BorderRadius.circular(16.0),
                                ),
                                alignment: const AlignmentDirectional(0.0, 0.0),
                                child: Text(
                                  'CM',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Poppins',
                                        color: Colors.white,
                                        letterSpacing: 0.0,
                                      ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 0.0, 0.0),
                        child: InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            context.pushNamed(
                              'goals',
                              extra: <String, dynamic>{
                                kTransitionInfoKey: const TransitionInfo(
                                  hasTransition: true,
                                  transitionType: PageTransitionType.fade,
                                  duration: Duration(milliseconds: 400),
                                ),
                              },
                            );
                          },
                          child: wrapWithModel(
                            model: _model.primaryButtonModel,
                            updateCallback: () => setState(() {}),
                            child: const PrimaryButtonWidget(
                              buttonText: 'Next',
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
