import '/auth/supabase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_radio_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'sign_up_questions_s_d_h_u_model.dart';
export 'sign_up_questions_s_d_h_u_model.dart';

class SignUpQuestionsSDHUWidget extends StatefulWidget {
  const SignUpQuestionsSDHUWidget({super.key});

  @override
  State<SignUpQuestionsSDHUWidget> createState() =>
      _SignUpQuestionsSDHUWidgetState();
}

class _SignUpQuestionsSDHUWidgetState extends State<SignUpQuestionsSDHUWidget> {
  late SignUpQuestionsSDHUModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SignUpQuestionsSDHUModel());

    _model.additionalTextFieldController ??= TextEditingController();
    _model.additionalTextFieldFocusNode ??= FocusNode();

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Title(
        title: 'SignUpQuestions_SDHU',
        color: FlutterFlowTheme.of(context).primary.withAlpha(0XFF),
        child: GestureDetector(
          onTap: () => _model.unfocusNode.canRequestFocus
              ? FocusScope.of(context).requestFocus(_model.unfocusNode)
              : FocusScope.of(context).unfocus(),
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: FlutterFlowTheme.of(context).primary,
            body: SafeArea(
              top: true,
              child: Align(
                alignment: const AlignmentDirectional(0.0, -1.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).primary,
                    shape: BoxShape.rectangle,
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        flex: 2,
                        child: Align(
                          alignment: const AlignmentDirectional(-1.0, -1.0),
                          child: SingleChildScrollView(
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      20.0, 32.0, 20.0, 32.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Expanded(
                                        flex: 1,
                                        child: Text(
                                          'Socially Disadvantaged / \nHistorically Underserved',
                                          textAlign: TextAlign.center,
                                          style: FlutterFlowTheme.of(context)
                                              .displayMedium
                                              .override(
                                                fontFamily: 'Outfit',
                                                letterSpacing: 0.0,
                                              ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Expanded(
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Align(
                                            alignment:
                                                const AlignmentDirectional(
                                                    0.0, -1.0),
                                            child: Padding(
                                              padding:
                                                  const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                      40.0, 0.0, 40.0, 0.0),
                                              child: Text(
                                                'The IN LFPA program prioritizes reaching socially disadvantaged, veteran, and historically underserved producers in Wisconsin, with a focus on reaching Black, Indigenous, Hmong, and other farmers of color. 80% of the purchasing dollars given to farmers are designated to these groups. \n\n“Socially Disadvantaged” is a farmer or rancher who is a member of a Socially Disadvantaged Group as defined by the USDA. This definition includes a group whose members have been subject to discrimination on the basis of race, color, national origin, age, disability, and, where applicable, sex, marital status, familial status, parental status, religion, sexual orientation, genetic information, political beliefs, reprisal, or because all or a part of an individual\'s income is derived from any public assistance program.\n\n “Historically Underserved” farmers include beginning farmers (under 10 years farming), veterans, and limited resource farmers.\n',
                                                textAlign: TextAlign.start,
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          letterSpacing: 0.0,
                                                        ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      25.0, 0.0, 25.0, 0.0),
                                  child: Form(
                                    key: _model.formKey,
                                    autovalidateMode: AutovalidateMode.disabled,
                                    child: Padding(
                                      padding:
                                          const EdgeInsetsDirectional.fromSTEB(
                                              0.0, 24.0, 0.0, 0.0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsetsDirectional
                                                .fromSTEB(20.0, 0.0, 0.0, 12.0),
                                            child: Text(
                                              'Do you identfy as BIPOC (Black, Indigenous, and people of color)?',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Readex Pro',
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsetsDirectional
                                                .fromSTEB(
                                                20.0, 12.0, 0.0, 24.0),
                                            child: FlutterFlowRadioButton(
                                              options: ['Yes', 'No'].toList(),
                                              onChanged: (val) =>
                                                  setState(() {}),
                                              controller: _model
                                                      .bipocRadioButtonValueController ??=
                                                  FormFieldController<String>(
                                                      null),
                                              optionHeight: 32.0,
                                              textStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .labelMedium
                                                      .override(
                                                        fontFamily:
                                                            'Readex Pro',
                                                        letterSpacing: 0.0,
                                                      ),
                                              selectedTextStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Readex Pro',
                                                        letterSpacing: 0.0,
                                                      ),
                                              buttonPosition:
                                                  RadioButtonPosition.left,
                                              direction: Axis.horizontal,
                                              radioButtonColor:
                                                  FlutterFlowTheme.of(context)
                                                      .accent1,
                                              inactiveRadioButtonColor:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              toggleable: false,
                                              horizontalAlignment:
                                                  WrapAlignment.start,
                                              verticalAlignment:
                                                  WrapCrossAlignment.start,
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsetsDirectional
                                                .fromSTEB(20.0, 0.0, 0.0, 12.0),
                                            child: Text(
                                              'Do you identfy as a Socially Disadvantaged Farmer as defined above?',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Readex Pro',
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsetsDirectional
                                                .fromSTEB(
                                                20.0, 12.0, 0.0, 24.0),
                                            child: FlutterFlowRadioButton(
                                              options: ['Yes', 'No'].toList(),
                                              onChanged: (val) =>
                                                  setState(() {}),
                                              controller: _model
                                                      .sdRadioButtonValueController ??=
                                                  FormFieldController<String>(
                                                      null),
                                              optionHeight: 32.0,
                                              textStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .labelMedium
                                                      .override(
                                                        fontFamily:
                                                            'Readex Pro',
                                                        letterSpacing: 0.0,
                                                      ),
                                              selectedTextStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Readex Pro',
                                                        letterSpacing: 0.0,
                                                      ),
                                              buttonPosition:
                                                  RadioButtonPosition.left,
                                              direction: Axis.horizontal,
                                              radioButtonColor:
                                                  FlutterFlowTheme.of(context)
                                                      .accent1,
                                              inactiveRadioButtonColor:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              toggleable: false,
                                              horizontalAlignment:
                                                  WrapAlignment.start,
                                              verticalAlignment:
                                                  WrapCrossAlignment.start,
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsetsDirectional
                                                .fromSTEB(20.0, 0.0, 0.0, 12.0),
                                            child: Text(
                                              'Do you identfy as a Historically Underserved Farmer as defined above?',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Readex Pro',
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsetsDirectional
                                                .fromSTEB(
                                                20.0, 12.0, 0.0, 24.0),
                                            child: FlutterFlowRadioButton(
                                              options: ['Yes', 'No'].toList(),
                                              onChanged: (val) =>
                                                  setState(() {}),
                                              controller: _model
                                                      .huRadioButtonValueController ??=
                                                  FormFieldController<String>(
                                                      null),
                                              optionHeight: 32.0,
                                              textStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .labelMedium
                                                      .override(
                                                        fontFamily:
                                                            'Readex Pro',
                                                        letterSpacing: 0.0,
                                                      ),
                                              selectedTextStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Readex Pro',
                                                        letterSpacing: 0.0,
                                                      ),
                                              buttonPosition:
                                                  RadioButtonPosition.left,
                                              direction: Axis.horizontal,
                                              radioButtonColor:
                                                  FlutterFlowTheme.of(context)
                                                      .accent1,
                                              inactiveRadioButtonColor:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              toggleable: false,
                                              horizontalAlignment:
                                                  WrapAlignment.start,
                                              verticalAlignment:
                                                  WrapCrossAlignment.start,
                                            ),
                                          ),
                                          Align(
                                            alignment:
                                                const AlignmentDirectional(
                                                    -1.0, -1.0),
                                            child: Padding(
                                              padding:
                                                  const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                      20.0, 0.0, 0.0, 12.0),
                                              child: Text(
                                                'What\'s your ethnicity?',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          letterSpacing: 0.0,
                                                        ),
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsetsDirectional
                                                .fromSTEB(20.0, 0.0, 0.0, 24.0),
                                            child: FlutterFlowRadioButton(
                                              options: [
                                                'American Indian or Alaska Native',
                                                'Asian',
                                                'Hispanic',
                                                'Black or African American',
                                                'Native Hawaiian or other Pacific Islander',
                                                'White',
                                                'Multi-race',
                                                'Other'
                                              ].toList(),
                                              onChanged: (val) =>
                                                  setState(() {}),
                                              controller: _model
                                                      .ethnicityRadioButtonValueController ??=
                                                  FormFieldController<String>(
                                                      null),
                                              optionHeight: 32.0,
                                              textStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .labelMedium
                                                      .override(
                                                        fontFamily:
                                                            'Readex Pro',
                                                        letterSpacing: 0.0,
                                                      ),
                                              selectedTextStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Readex Pro',
                                                        letterSpacing: 0.0,
                                                      ),
                                              buttonPosition:
                                                  RadioButtonPosition.left,
                                              direction: Axis.vertical,
                                              radioButtonColor:
                                                  FlutterFlowTheme.of(context)
                                                      .accent1,
                                              inactiveRadioButtonColor:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              toggleable: false,
                                              horizontalAlignment:
                                                  WrapAlignment.start,
                                              verticalAlignment:
                                                  WrapCrossAlignment.start,
                                            ),
                                          ),
                                          if (_model
                                                  .ethnicityRadioButtonValue ==
                                              'Other')
                                            Padding(
                                              padding:
                                                  const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                      20.0, 0.0, 8.0, 20.0),
                                              child: SizedBox(
                                                width: 330.0,
                                                child: TextFormField(
                                                  controller: _model
                                                      .additionalTextFieldController,
                                                  focusNode: _model
                                                      .additionalTextFieldFocusNode,
                                                  autofocus: true,
                                                  obscureText: false,
                                                  decoration: InputDecoration(
                                                    labelText:
                                                        'If Other (please specify)',
                                                    labelStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .labelMedium
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          letterSpacing: 0.0,
                                                        ),
                                                    hintStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .labelMedium
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          letterSpacing: 0.0,
                                                        ),
                                                    enabledBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .secondary,
                                                        width: 2.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              24.0),
                                                    ),
                                                    focusedBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primary,
                                                        width: 2.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              24.0),
                                                    ),
                                                    errorBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .error,
                                                        width: 2.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              24.0),
                                                    ),
                                                    focusedErrorBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .error,
                                                        width: 2.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              24.0),
                                                    ),
                                                    filled: true,
                                                    fillColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .secondary,
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Readex Pro',
                                                        letterSpacing: 0.0,
                                                      ),
                                                  minLines: null,
                                                  validator: _model
                                                      .additionalTextFieldControllerValidator
                                                      .asValidator(context),
                                                ),
                                              ),
                                            ),
                                          Container(
                                            width: 200.0,
                                            decoration: const BoxDecoration(),
                                          ),
                                          Padding(
                                            padding: const EdgeInsetsDirectional
                                                .fromSTEB(
                                                30.0, 12.0, 30.0, 32.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Expanded(
                                                  child: FFButtonWidget(
                                                    onPressed: () async {
                                                      context.safePop();
                                                    },
                                                    text: 'Back',
                                                    options: FFButtonOptions(
                                                      width: 330.0,
                                                      height: 50.0,
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(24.0,
                                                              0.0, 24.0, 0.0),
                                                      iconPadding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(0.0,
                                                              0.0, 0.0, 0.0),
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .accent3,
                                                      textStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .titleSmall
                                                              .override(
                                                                fontFamily:
                                                                    'Readex Pro',
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primary,
                                                                letterSpacing:
                                                                    0.0,
                                                              ),
                                                      elevation: 3.0,
                                                      borderSide:
                                                          const BorderSide(
                                                        color:
                                                            Colors.transparent,
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              24.0),
                                                    ),
                                                  ),
                                                ),
                                                Expanded(
                                                  child: FFButtonWidget(
                                                    onPressed: ((_model
                                                                        .bipocRadioButtonValue ==
                                                                    null ||
                                                                _model.bipocRadioButtonValue ==
                                                                    '') ||
                                                            (_model.sdRadioButtonValue ==
                                                                    null ||
                                                                _model.sdRadioButtonValue ==
                                                                    '') ||
                                                            (_model.huRadioButtonValue ==
                                                                    null ||
                                                                _model.huRadioButtonValue ==
                                                                    '') ||
                                                            (_model.ethnicityRadioButtonValue ==
                                                                    null ||
                                                                _model.ethnicityRadioButtonValue ==
                                                                    ''))
                                                        ? null
                                                        : () async {
                                                            if (_model.formKey
                                                                        .currentState ==
                                                                    null ||
                                                                !_model.formKey
                                                                    .currentState!
                                                                    .validate()) {
                                                              return;
                                                            }
                                                            if (_model
                                                                    .bipocRadioButtonValue ==
                                                                null) {
                                                              return;
                                                            }
                                                            if (_model
                                                                    .sdRadioButtonValue ==
                                                                null) {
                                                              return;
                                                            }
                                                            if (_model
                                                                    .huRadioButtonValue ==
                                                                null) {
                                                              return;
                                                            }
                                                            if (_model
                                                                    .ethnicityRadioButtonValue ==
                                                                null) {
                                                              return;
                                                            }
                                                            await CsSdhuTable()
                                                                .insert({
                                                              'id':
                                                                  currentUserUid,
                                                              'ethnicity': _model
                                                                  .ethnicityRadioButtonValue,
                                                              'is_bipoc':
                                                                  valueOrDefault<
                                                                      bool>(
                                                                _model.bipocRadioButtonValue ==
                                                                    'True',
                                                                false,
                                                              ),
                                                              'is_sd': _model
                                                                      .sdRadioButtonValue ==
                                                                  'True',
                                                              'is_hu': _model
                                                                      .huRadioButtonValue ==
                                                                  'True',
                                                            });
                                                            if (FFAppState()
                                                                .isFarmer) {
                                                              if (Navigator.of(
                                                                      context)
                                                                  .canPop()) {
                                                                context.pop();
                                                              }
                                                              context.pushNamed(
                                                                  'SignUpQuestions_FarmProducts');
                                                            } else {
                                                              if (Navigator.of(
                                                                      context)
                                                                  .canPop()) {
                                                                context.pop();
                                                              }
                                                              context.pushNamed(
                                                                  'SignUpQuestions_ImpactOfParticipation');
                                                            }
                                                          },
                                                    text: 'Next',
                                                    options: FFButtonOptions(
                                                      width: 330.0,
                                                      height: 50.0,
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(24.0,
                                                              0.0, 24.0, 0.0),
                                                      iconPadding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(0.0,
                                                              0.0, 0.0, 0.0),
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .accent1,
                                                      textStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .titleSmall
                                                              .override(
                                                                fontFamily:
                                                                    'Readex Pro',
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryText,
                                                                letterSpacing:
                                                                    0.0,
                                                              ),
                                                      elevation: 3.0,
                                                      borderSide:
                                                          const BorderSide(
                                                        color:
                                                            Colors.transparent,
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              24.0),
                                                      disabledColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .secondaryText,
                                                    ),
                                                  ),
                                                ),
                                              ].divide(
                                                  const SizedBox(width: 24.0)),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      if (responsiveVisibility(
                        context: context,
                        phone: false,
                        tablet: false,
                      ))
                        Expanded(
                          flex: 1,
                          child: Align(
                            alignment: const AlignmentDirectional(-1.0, -1.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Align(
                                  alignment:
                                      const AlignmentDirectional(-1.0, -1.0),
                                  child: Container(
                                    width: 100.0,
                                    height: 1200.0,
                                    constraints: BoxConstraints(
                                      minWidth:
                                          MediaQuery.sizeOf(context).width *
                                              1.0,
                                      minHeight:
                                          MediaQuery.sizeOf(context).height *
                                              1.0,
                                      maxWidth:
                                          MediaQuery.sizeOf(context).width *
                                              1.0,
                                      maxHeight: 1500.0,
                                    ),
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      image: DecorationImage(
                                        fit: BoxFit.fill,
                                        image: Image.network(
                                          'https://hvnzublzljmybszdaeho.supabase.co/storage/v1/object/public/images/lfa-sdhu-bg.jpg',
                                        ).image,
                                      ),
                                    ),
                                    alignment:
                                        const AlignmentDirectional(0.0, -1.0),
                                    child: const Align(
                                      alignment:
                                          AlignmentDirectional(-1.0, -1.0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Spacer(),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ));
  }
}
