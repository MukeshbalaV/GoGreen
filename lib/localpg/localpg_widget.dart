import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'localpg_model.dart';
export 'localpg_model.dart';

class LocalpgWidget extends StatefulWidget {
  const LocalpgWidget({super.key});

  @override
  State<LocalpgWidget> createState() => _LocalpgWidgetState();
}

class _LocalpgWidgetState extends State<LocalpgWidget> {
  late LocalpgModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LocalpgModel());

    logFirebaseEvent('screen_view', parameters: {'screen_name': 'localpg'});
    _model.textController ??= TextEditingController();
    _model.textFieldFocusNode ??= FocusNode();
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
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: AppBar(
          backgroundColor: Colors.white,
          automaticallyImplyLeading: false,
          leading: InkWell(
            splashColor: Colors.transparent,
            focusColor: Colors.transparent,
            hoverColor: Colors.transparent,
            highlightColor: Colors.transparent,
            onTap: () async {
              context.pushNamed('newpg');
            },
            child: Icon(
              Icons.chevron_left,
              color: FlutterFlowTheme.of(context).secondaryText,
              size: 24.0,
            ),
          ),
          title: Text(
            'Local Discounts',
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: 'Outfit',
                  color: Color(0xFF15161E),
                  fontSize: 24.0,
                  letterSpacing: 0.0,
                  fontWeight: FontWeight.w500,
                ),
          ),
          actions: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(12.0, 8.0, 16.0, 8.0),
              child: FlutterFlowIconButton(
                borderColor: Color(0xFFE5E7EB),
                borderRadius: 12.0,
                borderWidth: 2.0,
                buttonSize: 40.0,
                fillColor: Colors.white,
                icon: Icon(
                  Icons.manage_search_rounded,
                  color: Color(0xFF15161E),
                  size: 24.0,
                ),
                onPressed: () {
                  print('IconButton pressed ...');
                },
              ),
            ),
          ],
          centerTitle: false,
          elevation: 0.0,
        ),
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    if (responsiveVisibility(
                      context: context,
                      phone: false,
                      tablet: false,
                    ))
                      Container(
                        width: double.infinity,
                        height: 24.0,
                        decoration: BoxDecoration(),
                      ),
                    if (responsiveVisibility(
                      context: context,
                      phone: false,
                    ))
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            16.0, 16.0, 0.0, 4.0),
                        child: Text(
                          'All Tasks',
                          style: FlutterFlowTheme.of(context)
                              .headlineMedium
                              .override(
                                fontFamily: 'Outfit',
                                color: Color(0xFF15161E),
                                fontSize: 24.0,
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.w500,
                              ),
                        ),
                      ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 0.0, 0.0),
                      child: Text(
                        'Select your reward',
                        style:
                            FlutterFlowTheme.of(context).labelMedium.override(
                                  fontFamily: 'Plus Jakarta Sans',
                                  color: Color(0xFF606A85),
                                  fontSize: 14.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w500,
                                ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(
                          16.0, 12.0, 16.0, 16.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          if (responsiveVisibility(
                            context: context,
                            phone: false,
                          ))
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  16.0, 0.0, 0.0, 0.0),
                              child: Container(
                                width: 300.0,
                                child: TextFormField(
                                  controller: _model.textController,
                                  focusNode: _model.textFieldFocusNode,
                                  autofocus: false,
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    labelText: 'Search all tasks...',
                                    labelStyle: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .override(
                                          fontFamily: 'Plus Jakarta Sans',
                                          color: Color(0xFF606A85),
                                          fontSize: 14.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w500,
                                        ),
                                    hintStyle: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .override(
                                          fontFamily: 'Plus Jakarta Sans',
                                          color: Color(0xFF606A85),
                                          fontSize: 14.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w500,
                                        ),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0xFFE5E7EB),
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(12.0),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0xFF6F61EF),
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(12.0),
                                    ),
                                    errorBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0xFFFF5963),
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(12.0),
                                    ),
                                    focusedErrorBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0xFFFF5963),
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(12.0),
                                    ),
                                    contentPadding:
                                        EdgeInsetsDirectional.fromSTEB(
                                            20.0, 0.0, 0.0, 0.0),
                                    suffixIcon: Icon(
                                      Icons.search_rounded,
                                      color: Color(0xFF606A85),
                                    ),
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Plus Jakarta Sans',
                                        color: Color(0xFF15161E),
                                        fontSize: 14.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w500,
                                      ),
                                  cursorColor: Color(0xFF6F61EF),
                                  validator: _model.textControllerValidator
                                      .asValidator(context),
                                ),
                              ),
                            ),
                        ],
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                      child: Container(
                        width: double.infinity,
                        height: 40.0,
                        decoration: BoxDecoration(
                          color: Color(0xFFF1F4F8),
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                        alignment: AlignmentDirectional(-1.0, 0.0),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              16.0, 0.0, 0.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Expanded(
                                flex: 4,
                                child: Align(
                                  alignment: AlignmentDirectional(-1.0, 0.0),
                                  child: Text(
                                    'Rewards',
                                    style: FlutterFlowTheme.of(context)
                                        .labelSmall
                                        .override(
                                          fontFamily: 'Plus Jakarta Sans',
                                          color: Color(0xFF606A85),
                                          fontSize: 12.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w500,
                                        ),
                                  ),
                                ),
                              ),
                              if (responsiveVisibility(
                                context: context,
                                phone: false,
                              ))
                                Expanded(
                                  flex: 2,
                                  child: Align(
                                    alignment: AlignmentDirectional(-1.0, 0.0),
                                    child: Text(
                                      'Due Date',
                                      style: FlutterFlowTheme.of(context)
                                          .labelSmall
                                          .override(
                                            fontFamily: 'Plus Jakarta Sans',
                                            color: Color(0xFF606A85),
                                            fontSize: 12.0,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.w500,
                                          ),
                                    ),
                                  ),
                                ),
                              Expanded(
                                flex: 3,
                                child: Align(
                                  alignment: AlignmentDirectional(-1.0, 0.0),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        4.0, 0.0, 0.0, 0.0),
                                    child: Text(
                                      'Upcoming Rewards',
                                      style: FlutterFlowTheme.of(context)
                                          .labelSmall
                                          .override(
                                            fontFamily: 'Plus Jakarta Sans',
                                            color: Color(0xFF606A85),
                                            fontSize: 12.0,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.w500,
                                          ),
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 2,
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      4.0, 0.0, 16.0, 0.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Align(
                                        alignment:
                                            AlignmentDirectional(1.0, 0.0),
                                        child: Text(
                                          'Status',
                                          style: FlutterFlowTheme.of(context)
                                              .labelSmall
                                              .override(
                                                fontFamily: 'Plus Jakarta Sans',
                                                color: Color(0xFF606A85),
                                                fontSize: 12.0,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.w500,
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
                    ListView(
                      padding: EdgeInsets.fromLTRB(
                        0,
                        0.0,
                        0,
                        44.0,
                      ),
                      shrinkWrap: true,
                      scrollDirection: Axis.vertical,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              16.0, 0.0, 16.0, 0.0),
                          child: Container(
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 0.0,
                                  color: Color(0xFFE5E7EB),
                                  offset: Offset(
                                    0.0,
                                    1.0,
                                  ),
                                )
                              ],
                            ),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  16.0, 12.0, 16.0, 12.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Expanded(
                                    flex: 4,
                                    child: Align(
                                      alignment:
                                          AlignmentDirectional(-1.0, 0.0),
                                      child: Text(
                                        '15% discountReusable shopping bags ',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Plus Jakarta Sans',
                                              color: Color(0xFF15161E),
                                              fontSize: 14.0,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.w500,
                                            ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: 36.0,
                                    height: 36.0,
                                    decoration: BoxDecoration(
                                      color: Color(0x4D9489F5),
                                      borderRadius: BorderRadius.circular(12.0),
                                      border: Border.all(
                                        color: Color(0xFF6F61EF),
                                        width: 2.0,
                                      ),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.all(2.0),
                                      child: ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                        child: Image.network(
                                          'data:image/png;base64,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',
                                          width: 120.0,
                                          height: 120.0,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                  ),
                                  if (responsiveVisibility(
                                    context: context,
                                    phone: false,
                                  ))
                                    Expanded(
                                      flex: 3,
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            12.0, 0.0, 0.0, 0.0),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Randy Rodriguez',
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily:
                                                        'Plus Jakarta Sans',
                                                    color: Color(0xFF15161E),
                                                    fontSize: 14.0,
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 0.0, 12.0, 0.0),
                                              child: Text(
                                                'randy@domainname.com',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .labelSmall
                                                        .override(
                                                          fontFamily:
                                                              'Plus Jakarta Sans',
                                                          color:
                                                              Color(0xFF6F61EF),
                                                          fontSize: 12.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                        ),
                                              ),
                                            ),
                                          ].divide(SizedBox(height: 4.0)),
                                        ),
                                      ),
                                    ),
                                  if (responsiveVisibility(
                                    context: context,
                                    phone: false,
                                  ))
                                    Expanded(
                                      flex: 2,
                                      child: Text(
                                        'June 5th',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Plus Jakarta Sans',
                                              color: Color(0xFF15161E),
                                              fontSize: 14.0,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.w500,
                                            ),
                                      ),
                                    ),
                                  Expanded(
                                    flex: 2,
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(
                                            color: Color(0x4C39D2C0),
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                            border: Border.all(
                                              color: Color(0xFF39D2C0),
                                            ),
                                          ),
                                          child: Align(
                                            alignment:
                                                AlignmentDirectional(0.0, 0.0),
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(8.0, 4.0, 8.0, 4.0),
                                              child: Text(
                                                'Redeem ',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodySmall
                                                        .override(
                                                          fontFamily:
                                                              'Plus Jakarta Sans',
                                                          color:
                                                              Color(0xFF15161E),
                                                          fontSize: 12.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                        ),
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
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              16.0, 0.0, 16.0, 0.0),
                          child: Container(
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 0.0,
                                  color: Color(0xFFE5E7EB),
                                  offset: Offset(
                                    0.0,
                                    1.0,
                                  ),
                                )
                              ],
                            ),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  16.0, 12.0, 16.0, 12.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Expanded(
                                    flex: 4,
                                    child: Align(
                                      alignment:
                                          AlignmentDirectional(-1.0, 0.0),
                                      child: Text(
                                        '20% discount at a sustainable clothing boutique.',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Plus Jakarta Sans',
                                              color: Color(0xFF15161E),
                                              fontSize: 14.0,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.w500,
                                            ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: 36.0,
                                    height: 36.0,
                                    decoration: BoxDecoration(
                                      color: Color(0x4D9489F5),
                                      borderRadius: BorderRadius.circular(12.0),
                                      border: Border.all(
                                        color: Color(0xFF6F61EF),
                                        width: 2.0,
                                      ),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.all(2.0),
                                      child: ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                        child: Image.network(
                                          'data:image/png;base64,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',
                                          width: 120.0,
                                          height: 120.0,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                  ),
                                  if (responsiveVisibility(
                                    context: context,
                                    phone: false,
                                  ))
                                    Expanded(
                                      flex: 3,
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            12.0, 0.0, 0.0, 0.0),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Emily Rambo',
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily:
                                                        'Plus Jakarta Sans',
                                                    color: Color(0xFF15161E),
                                                    fontSize: 14.0,
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 0.0, 12.0, 0.0),
                                              child: Text(
                                                'emily@domain.com',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .labelSmall
                                                        .override(
                                                          fontFamily:
                                                              'Plus Jakarta Sans',
                                                          color:
                                                              Color(0xFF6F61EF),
                                                          fontSize: 12.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                        ),
                                              ),
                                            ),
                                          ].divide(SizedBox(height: 4.0)),
                                        ),
                                      ),
                                    ),
                                  if (responsiveVisibility(
                                    context: context,
                                    phone: false,
                                  ))
                                    Expanded(
                                      flex: 2,
                                      child: Text(
                                        'June 5th',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Plus Jakarta Sans',
                                              color: Color(0xFF15161E),
                                              fontSize: 14.0,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.w500,
                                            ),
                                      ),
                                    ),
                                  Expanded(
                                    flex: 2,
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(
                                            color: Color(0x4C39D2C0),
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                            border: Border.all(
                                              color: Color(0xFF39D2C0),
                                            ),
                                          ),
                                          child: Align(
                                            alignment:
                                                AlignmentDirectional(0.0, 0.0),
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(8.0, 4.0, 8.0, 4.0),
                                              child: Text(
                                                'Redeem',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodySmall
                                                        .override(
                                                          fontFamily:
                                                              'Plus Jakarta Sans',
                                                          color:
                                                              Color(0xFF15161E),
                                                          fontSize: 12.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                        ),
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
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              16.0, 0.0, 16.0, 0.0),
                          child: Container(
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 0.0,
                                  color: Color(0xFFE5E7EB),
                                  offset: Offset(
                                    0.0,
                                    1.0,
                                  ),
                                )
                              ],
                            ),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  16.0, 12.0, 16.0, 12.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Expanded(
                                    flex: 4,
                                    child: Align(
                                      alignment:
                                          AlignmentDirectional(-1.0, 0.0),
                                      child: Text(
                                        '25% discount at a local eco-cafe.',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Plus Jakarta Sans',
                                              color: Color(0xFF15161E),
                                              fontSize: 14.0,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.w500,
                                            ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: 36.0,
                                    height: 36.0,
                                    decoration: BoxDecoration(
                                      color: Color(0x4D9489F5),
                                      borderRadius: BorderRadius.circular(12.0),
                                      border: Border.all(
                                        color: Color(0xFF6F61EF),
                                        width: 2.0,
                                      ),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.all(2.0),
                                      child: ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                        child: Image.network(
                                          'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAQUAAADBCAMAAADxRlW1AAAB41BMVEX/////iwCMkP4AAAD///3//v/9jAD/igCMj/////z9//+MkPz/iQD9iwP8jQCLkP8jHyAfHiEiHx3///QeGxskHh34+PgZFxj5hwD///ggHxwjHh0iHyQjHR///+8fHR6np6dgYGCFhYUsKivV1dUeHCPKfyb7TgBlacZiaMv//+nn5ue0tLRJR0gQDA7x8PGYmJh0c3TuhQASFR3Ix8fffgD2khy6urrYhic1NDUVFB0AABUAAAT7khw0HhEJDx6VmPhjPxlubm4tLUO/fCr7cAf2VBQZICL9fQk5OVl9getdYssYEAD6+tvo2WD05ZbtsnDql0Puv4fsyxHuzjj58qf32bPl1GzhyxTu4Jz2zqD87M7on1T87sePjo/AvuSnpeOkodGXltjcy67s7PyBTx3a3/s0HhbCwNymayT0w4HtsGpQMRZBQETx38Dkw5j83q2MkOB7USTYl1TunU4xGBGucCbPtI1TMAjDeBxdPR8ACSAgDQ0aGSlAMiFST1/IxP2vsNKeoLWiofNhYYJSUHtnZp1/fbOVYiWEXS13RhG4bRuBg+GvShfKzvkmCg7QUh2jRRpmKxfnVBaBNhtPIxY/GA+KSxJtKhD9+821fjqaSCZ7e8YwLUxKSn1ZXqBQUY60pXaYAAAbTUlEQVR4nO1di1/b1vW30cNYRkIysoUfQrzEVh4CYiKEjDEkdG460jRJk/6a9/ILZWykLWzltwTI+luXzOtrXV9rfm23/am/c67klywTugWbdvomn0D8wLpfnXvO95x77iUUChAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECPCfCJqjuSjt+xTDweO0/3M/MgALNM1xfs9EmSgHf9t+SR0AMMC0uN8MzZwf4Jg2X1AnQHN9fSnO/4bT3MArF/4zbOH8qxcvDfjOiBB3/sLl164M/Pg9Ax261N9z6qq/fxx4/fLly//1xn8AC9yl/kj/NX+rj45fuHz5Sh99ZBpo8vcHCO76xVM3rvuHSo4Bv5Bq8b7md3AQVcnDP0B/So/fHGghGGBQ58dbxIjo6MzU/eFkw8ujDM3hu36A9sDBbQVV4HflMKzme46kTEzOipSR0YypehqmQykmxd1jfogTA+4cDSrR/zlQj00sjN6aUihFk2WKEqm5umdu3wmlQrd/4bzzeC722MBx0ZB/oETbBoKidY9MTJ6hKEXWlEXj/q3RGUOZrXt16Bd3uNt3mR/kjEBT4Hx8HXmODtVua3JueAoo0DSDUs5MToDS+G9KE+teHeVuT9++F+0ACXizwJejV2pxQ48E//eSGU6eiU4MDsE0kGWFMqZmRplQ3/VrNyxrSaJGqyzBq+8x9+iOsIBJAO2Y7nEFqOm54fsUlYiDESzMohGMX3314qn+noiwXlJmqizQ9Jt3k3dudyIJxcgElsCge3vun44/EIwAwoGq2hQFRpAEI7h0wzzVH4mE+XB4NZeecq0F8Ob2vVTy7u0OuEaIciRAIwnPPe2Znp/VICAmZIO6PzufDKXG33kVGOgJR3g2Emb5sLmhGRNVFn55j6ZTyV+2nwWcCDD6KAPzokWp5F/F6Ax4AiOrKhQ1NDjKhcbBE5gwDcIsy4Yj8AdQWJGMycqgwc3SjHtRbSaCwQ/kkALu+dkCNzE/a1CGggFxYXgOjOD6tVct9AQ8DwzAbGCBC2BB2MwpQ9W30XAv0EfWB5b2AETuwNUBLsVx41f7nstPTM7NYEBUVYPShgYn6NDAW7/67en+np4wD3MgjEbAs8gCC/+1bI2qykc0BjrqXNVzuZQjAz5v3Pp1H3Bx4zf+LDzrzjBObHFi5fTkmRHKkFXwBAu3HCP4NXoCYv8+MLekevnYKemMNcPr1qup8Rs3BnxfAE4jRIeOMlmm525BQJTVLDCAqig6fvUSBsSeSCsOYEqUc/Lss3/0cQPrx9xN6623b4z7J4bgtd9MHnaHHCOAgAhGkJbTEBBvjbpG0N9PYkFLDgDWnrrQccFMcwCaG+/rG2jOe1z84uXbh/8QUEXAgCIpxAimQ9Hz7/yKqCKMBxAVW3PAQqxE+dh5gC2k3r7+1tWUfyEgSn+y/eYhtjBKpLEqYkCcGQVf6KqiHhIFDrUDeDoi7OSMmWMb21GBxtB36fT1q6evtYiU0VBLK0nOz44YhiKDEWiz89Ogiq46ARHkAMZEHnlgD2OCZx/k5KljHN/RAANMXTr9Voq7dvod/9oYTf40IQmqCAKiSALiDBj1AKgiVMYRYgEQBRt8oh8V5AU4JSY8H9huMKgXxq5yXDR67Td9h0QCJxwyrqaZnpxdoAxdg4BYGp5DTwD5EfhCjwuoDJ1HacB6n+P5SFgwVx95HQPK2SMFpecGOsrR0YEosMBF+452E8AIQBXpWsKgRkAVQYZ481e/JZLA734TbcSykQjvfZbl2cJYeSkvxalp72e0eyEHE2sOpWOrQknldc6XiclZCAeaJmNABFUUhYAIniCCurA5FkQcnRwWXMHsocFaV3KYZwx6PgrEfJsXtLA8GsUiA9YID39pcvTWfcOplEhDoIpSA1cxIPI1628eKj7AkyzaOyHYwuq7dlanFoa9gRLizKVrA22lgUglmviHQ93SxOAZBY1AoRbBCDjiC4k0drwh64SCJhpANMHct0zB8wzLF8r5rEgNoXz2DhjE7EV/IXtMwOwlSmrItG8kIEjODd+HgKiKokqdmSe1IiKNeSSArdgCW7n3HlsQzJXE0gOhcb5ECmW7pChz6J+9lwSh++b1qO+VHB8cf1AvCSqlN/IQqCKnakxpmipNk1oRyRAr42Hrh9w0I8AFrufSesJka69C+9gtZo2hpPMpHlsgNe2TUoemKwVDOSMalAiqaEhZ/B9SMGwerT/I/bf2xbRun66wQDwFa+2XjKGTvaRP8iMGAqKB0tig5KmZUY4ev/4/v1s3+Z4wf2QW4LazQtmW4vqWWbEUFr8prNjy/SR9eFjqOKbnQRUtSqq6SN0fnsdpgNKYLwgsVkqEZ2QHDTA3smK2uCtU/AdGC3YsFzdGQ25J5WQCjEAGaSyTguEEB6ro0m9N9AREEgjh1tUCH2MAU1BF6ZFZcxpAR2FFV4ZDLddyOg6nYAi+0KCmsGDYR1QRiYd4M0ED+gqgVhDC5pIkavamEBYq5EFMtZQs6EX/Fd5Og5m7hZ4AjWARVBEd6gNVZEJyAEN346Dj2nzvuoBoshN211Az0lItQsCMEJyaKxdlTtyarLuMKoI0uj88StNEFfX3e4plPJqCZ6gspAi8+WB95eHO7ukCZNRCLXiy5lZaj+fKAlsfRoWdHDVJPpVz0OGxVzEDATGRxYAI0ph2VFE/y3qLA2zBKrAeY4gI4cLq0p6iJuSism6CUVRHzAqrRVXL7lvhGnMsllz1E1Ff8mKUUrXKCtpNsniC0RCdYeOIC+uJ9YLnMcgIyrYuShlRk7K5Lat+ypi/07MZe71BOPLgK3StKY08AZhZVIYm4cLOv/OqWzCsjLBhwOFTGwf7ljcvEsp5KSvGQWBrCaDBrNUShLFcNq0mrAgbYatEYK1RX0j6XEWnp8eMsT+Tug4BkaSI9Xqg0QcUHuq5XS8L1r4eF7P23l4xK4rx3Cb4BfddEBGltL4joM7ma+IRWZiYTp64Hq5RSn+EtSIy7EikzgYahyyUc/pKoZEZYb2U0SW7bFm7SzAxtA2zyoKVl+JZ22r0JCzOCHmRQhjyyMLU1NTQ0JnZ2eHh4VszM4OTk/NzE8++4uNAckHNjznOv+IQXdfoiQdWTt83G20BxpSJ27sFQeCtDTGR3bN4MmoIiTuSlgHWeA+dhS1ddZDJaCJ8kQGKohiGQTnoUFV6Vi6Csnk2QATlHzS+0NrPatkt0zEVOyvmdmFK4DIEiCOQjchuI1hhR8mMLIykK1hbW0O7WDMM+G5NVuRsh0LIPKX/znOPfSGsF5tYMMTMwQcFkmOv7mUzOaSTh/8V1vVsQn/o/bGgqjcV7ffvObiN+F+CPzi49Ycp1VuEaw/oJCUZ1rNJgDld3jQbZwnYQlrfArkUiYDbENXiLu+Unax9TRSLq556ZESICJaSXtzu7u7uitWwXMX7f9QXO8JCKDQkw9UfwRhA/3os3Hykx9EvwD223tVE8AsgJzHbgJQ6Udoym4ovEV5YkeTHy91diF5goxcA38ZiXfCf7thjuTO2EAoNUvpO4dkckNVXT9xYl0RR2ndiRDwBSQNmz2A170JmDk7CG1hx6W61GLe/jcGwYfDEJrrIV0RXb+xx1hXY7QYzQakbp49gCn5xwwCZIBUV2da1DLgFHiU0CymTpmIe1WRh2M/0UEqcWwZDIDbgEEC+IxbxWKPmO0ECHYpOycUHYNSYDTvX2ooFiIMCz9YNDryBlBCzmTjEPym3YvYQrsxHWVHLlcnr2JpiqigJRV17vNwb6+6NOSN3JgNhJPY43dAY3EYWQreM3DpcMckfWlYQcBSggVAPVxNHuLPreV3VxEwik4Y8wq3J7+ZAUW9gHsUKbA+kXBGnk4lkl2xhs5g1wDXEYjDqmGsFzuSILYNfaC8LtZ7jUcoxX7aVFSDIKpz5wBLqWeB7zN0l29b1XHGjbJKlODCFrWxWVcpCdRqRr0LYXceLFNbt+Nq5bdczuH4S6EAazmlt1gsVFuhQckQD7x4ha+3hVtGC5SHO7eRJxlQtpwIEcxXrC5uW0BN23r0KeZQIKTWZZGRVwrLM+iqMuV7MJg6eLMfI4J1pAZ4xBjS0nYUKokxoVrXLPK4jO9Ge9SsvwlxgQf+CB4lEqtOmB2uRbq2pR8AYEIkUtkpqOgcpNXYxwJwZW9/a399aHzNdmQ5MFSAVTSsHT77dXka1cPdPj59sg6fo6l5uNwvYZVkxh3lKfWg6gxFQFPiyAEOH7ElfF+pXY4j5OG6QTIcIpNQ2KAdIwuHlIKasnXwJwqaey+/AZCI8g3MRxrYgC12jDs4Bztogn/N/ioHDXD6XaSsLdIi5F8KeV5qh6WlKUiHm/3lnZWVnfRfN148G+LtqSzAlwhVjidRzEXYWHCClToggQNCPsoK1ZWuqKooihJAlk6+4CJglm0tFTZIy8Uwavuhq/GC7F20h3j4WsPH33vbL7ycrq+RDmhjP5xRVyqpqce9R2SpgSkTCQmXEpFXJ3NCNsTDvayx4n+FNY/uSFlcslpi+CSmkmJayekaNk/WZWr8Xa47tbCUMw7btja0/P5Kob9E3nI1T7cutYSbc7u7t/mVlnXCekkXsTkFIesLeL5s4CLTy+rXICNxoyJia1ZADHgPAjg6DXjGdmw4xM5HNGltbeR2toT53RXVlWmOru6tjVqFQzqUfw5RYbiMLNGlfe7n35TerWzxmNEM8MzM3Ojo3ODuyKIvFpbFCc4cKL6zm86stlyVwqliLmipCSk0avMwtSUzoW2OmObZVEjP6Vn2SCU7DWfhHK3qQT5xd7gIWEu20hSjNvHf3dt3SeXKi1pM8N0SpWbtcCBMNUS1EojkXHjwoNHrHRhaEsi3qJI9CK7LymqiDo4SgYi1pKlakPT0d2AFAIsm7uvLHJ0+eZFVquk0rFWSLTCrE0anmHfPOSQLzpbRklAv1jVmkmZ1H19ZKUeCLrQ1dEo1dN2o82BNVfUdAWVFYz2VUe5Xl64RnhTyISsIHelpR0ko6I7VruQaHzqRgVtBM05opNkeDt5ieMqT8JllkqdUhWefeuaHRxxZ4UmVIb5lOlwuykFX+LJCulvKBJNqrgkef4nwg5c7dopg1sCLZtmTK2ZBBtsg0E8/gLiI6xA0Z6bUx1A7VZXfXJljv2kwVAnYwiio4wR6HK2svrqoPC8iduaKn4/ZYIwO1tT/W2s8qw4ODg16v0OGWjuSCpvnUSZyMsoUtsJtFVcQqQ9jRDqaSVnV70xSEQtlWM9JGy8oeRh9vHkVj51WHlzOZCUPF3gPBU1KAWcK3WLXFLQ8ZqQgTSagoqAMV/OzO5uaKLSWk3DpoqRaFXnCrStM+AWy56iwNTGjGAKHY40kqYKibY/69HLywa8dVHVNqd4GbHbOluCbKig0TJa6irI4Ivj0QEETsxKJnxOipO20MIUbL5B7wnovmCx/sLXpX6pxnQB7ocYywkUoSHcZaQkIDCkQxq+c3C2xNfXtY6DEfeRMp0mnW+UVtrL4UPAOOFD44yJX9zXoVMiQJV6lZp1gD3gOyR12MZ+NxQoLvu9yfK6wryq3Gz3/ue/v+JUxQen0ThnvXdov6Q9/xmA8lVZIg5ySTn0gNyLPHVpTiXrGYWLEKWKcS/CUXEDaWlxfqP51mPnnvsN0Z7UJyQZWtsLeZw8ofqKYn6LPY4z6Wz6azi1Z93RJlg2l9uLn7oWW6eybq30b+5d35YyZUo2FK3P7ozkdvpjpPw5CCRZVGU4BAUFI8i9coIWCq6AnVp6bPksJF092vNczC8ygfCytpY7Duw5ntT0Lv3+nMwBswa+x92JRRseWisu6JEnifLUVKQN7d3BVe1VtNz4C2RnkNNtLz0osvfly/zRRw5/1PPvqk86YQGgYWPHcRMirrL/kPvVklZAI7NiTP3rX9sCuSfZYmwm4BjuWBgp/85Cc/+zghjdR1eND37my/1+JMrLZi2M8WIrxpOX3udZ0OkFLboqjZXlOo7xNvshKYCXz/Sy/+DCn49K+fvauqU3XtHc5u447rBdcveK8dHaHnhqPvLxcltbRV8PaEsU5nSPNGMlzjcY3g84+/+HI/p2uJxjVKDgRD9PmfBvB9wdyXFYv1tj6zPm2PbMTcSKtiflXwiiLWm0VWuHQZACP4MqFoJU0xjIXGJUrM6pgOyyaOA72AqzVN3ZzOKOq9HUQIc0lSdZ/sq/IWlmgpnpSgkYGKESwpJVGUDGqEHNdyEjFoHHzgNfHKsCKNj7PCZj5n7DYt8DmrUayz4BPBoIgUoCf4HDzBRqmUkBSKuo99hicV8fTealPzpzMyFAC11jUWa3Fju5aPsCYeAacFhpEKAzANvvjKLpXScVHL4p7UE4xBo7TkZ+LY071eNiNsvWhwhsl699izztzBbmqXAvAE33z2rlIqaeqacTYjj2AQ6LgLbIkJBfc2eAsqmAZECn/by39Y5wgjZNGfLO15SCP1R0GIVHzh5x9/tgS+UEqvKQeP/7T9/jknLpxYFpgpWcJllGYjx9NEina9VMbdE3jXvdvlHAqqAfHTb75USlJWiq/Z5558u4wtTU8MkZruLAnknF4Oz4Xx1B/xqoaMuDEm+JXWWOx9zC7VqmeRipOoOJGIOxnggZon+PrdUknKpGUDjWA51hXr7e7qWj4r60OVLXw1MsjeRhBMbdhQw+HpPFxfX10LMjwSxQJPaGLKwMaknrB/Z4u5pO9ZTdKArTLAO6ta/TVVZJRK8bhs6GgEy9UWnq6ubSNjDCU5rrHMSpOTg/Asr2PnAbftRVOXrkXJUWbup5PDcqIzRkLPlwvg+v3rrIV1XSk3KSRnARumB77NmQZEGm+oeimdXqPOOkbQW+tgge+fUAkb9xXW1dacy8F1Ao4+/o7pKNjAzVPmTa7hw/pGhxUwBGW3wMOEEMJ+2+bYB/mDFW+6LDh5E4aDlyqeAFSRomk4Dc49wWaF7t5up3+nQkNs+YkRV4zBxupaiokOpEA7Rge4458UzPg7FstffGe8evwCQw+OUIaeLW5BxsS3bAyOmCtb3p5OYgqsRxVJqpaGgPiY9Gv0Vvr66nnoBhrSKrVQJ5yiTJRJvXGhj+678EY7ttq9fbon3NNz+u3arJynElk7t7RrOoeKsM3HBhDwBbNppz1S4ErjTz/+4iuQBJK6tuYaQcydBjj6miWQXp7Yt2fX1LixKC5MDc0kyWIyGOfTVy4MXHjt/HGzgMeb9928yPffuF53BsWQkt744IHpLiiwrRq+IDL2eMKiGxDBCL757C8YETNr9lnStNML3jDWhS4Rm/q66jhAGsA3LD85u6aockaWKVJnQV8ZfXoB/hz/hGA4cAw3Tet8/S6VKc34v8KzW+Srq/ess4uWdwPi5x9/vaTouqbKlI3NSjBGxxM0GIAX3bHlbx+fpfCUE1KN50LgGKPnx8+njl9J4CHvXBRiRI0FOjRs5Mr+CycVs3dyg4i7nh3h+Uh/TRXlcpJUktd0RxV19fa2Hno90EyWl7e3zynUXIh2Doa48srTV65wqeMOEuSUS6IXamE5Okc19lq0NAWhWi170fGFX0OGKGUTGBBdT3DI3W+iASdNbNlpfY1ihenpa0/pK689fdb5GP8+C+QEZmIHtSmRHNH3D9snQHJEcsIGbxZecj0B1opKJTWz5kpjiAXEExw2Czxzohsd5fK5tcW5EOk4i77xFCzi6RvR43cMGBkcAmrHLpyRc5uHtMA6hUSIoj3W77Y+xXDwzWdLuVJJVA03IKLDQw+IYfHILDghBFjAw2AhUtJMClvQ2iEeQ+RoR/IbQVxbAFomF/WVQ5bSyOoC3/Piiz/7Jpf7AgJiIgcBETSB4wkqnc1O23+dSHymKaDpxCDFHMU4CXoBD0YCKo69Bg1TjoHMgfBQc4/Tz9o6U5HG3yhSLqdL8YRigxEsY34Uw95mEgvJzo+uo9sCsRuYESo5GJhBCyXH9XRoaz4TmornPmQF97wR90A2RxfDPKgVDL+SRVEEG3BVEXqCfxe9Tutr52vvIdxmihvCatsaiB/gnSS5oor2UReCKvoOPAHZ39DSB3TX4dksfIftjieChVFcqe6pW3XhcZdDxQj+CtIYhKGqGAeuKuqOdTlmcGQv0JqFtra+Hgp6QXa7sJwO4Hpp/OW+LIERKMZZLBOQ9Cjm3m7S3d/lElL9pjrAI7KQMSZOyK+QGFaK1S0ebH2GCLownZAV8AQfLbubALvqdwTi/92sqdfPLqrvqY27t15dAguqMn1CWJijpEfEMUQwIBJV9M2XiZykZzX74Lu//+OnL7zwc8ALFdS+e+FlD2KHgpDgGk+vy0L8pLCQHNHyFlurFX2NdXNVVeNx8fd/fPKPKn5ahxc8qDDz8xpqD7aiqgv8wkhnWHAqCw1+eUgu/q1aMMQygYYnmKmZTNa2FYB9UMHZs98R4GaPc39HPMZ//vnPf3pp8tDlmNLPXZYq//3pQdr3dIZ2sNB06vMklf3sc1xGRSOIy8aiYRhKDbKDTJwgnU7H4wl8IO48rsoy5Na4kV7SXQBbCIesc+cePyZMuQZVR9YTPQMsnIwZgfIx8dlXdkmS8BcenBmcHBwcnJmZuTU8PDx7ZmhoiuD+wsjISLpyXgBg0QVhDMhQkaZMJpNIZPDfjCjCt+TQAULWWj0UwtXBgSh3yBZCmE54UpYpTUtouuwe1+L3DiYJmJ6engCMAubm5ufnJycHkavZ2dkzQBawtTCCRyR7Ybg8yQ4dGVnW5HgGaFOluDEc6swvr/M5Bn1ihCK/9WKaJJvVq3IbS+jv2WBC+HLYArIcw7oFhjXrGNb9BYKRkXha0c4kmQ6xQDP3vCctJucHiREwXPOKAO2eJdPIHXkI6WlcXTkaXVzFsqZDzLGXVXzB0NydO3eTR727yAseJI1LJv/i+uKJyBM8oKPJ7eTde0d9OUeTX4fEgIl0vuXo+QFu6+27t498f7BWCX8H+uCbE3w44fdGCifvkQdE4xJ3tO/1p1zqBDThPTfgukf0e8xVLhTlmKeXXxnvjBs7JnC4g+zoA8IwOXDltcuXXz+fasNKatvQ+hhkXzBc34XLiNeeHjmw47a8H9H0IW0G9PgFsIVXrhy9aZ/j+lLP8fcYdR5YG+ZS6BdCzZsxWyF67eKvx39M1uD8orKB169gP9BR39N3sefUtWO9rDaDJotZ0fE+Ip2O9h4m9eop6/rJOd30eQCjRJTjmNa/bcULhhu4ev37ROOTD1BNjLMP+ei5H0qLH5V3dBJx7ET8Pu1nnfrFYgECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAE6hP8HxFVzyeOmBycAAAAASUVORK5CYII=',
                                          width: 120.0,
                                          height: 120.0,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                  ),
                                  if (responsiveVisibility(
                                    context: context,
                                    phone: false,
                                  ))
                                    Expanded(
                                      flex: 3,
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            12.0, 0.0, 0.0, 0.0),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Emily Rambo',
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily:
                                                        'Plus Jakarta Sans',
                                                    color: Color(0xFF15161E),
                                                    fontSize: 14.0,
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 0.0, 12.0, 0.0),
                                              child: Text(
                                                'emily@domain.com',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .labelSmall
                                                        .override(
                                                          fontFamily:
                                                              'Plus Jakarta Sans',
                                                          color:
                                                              Color(0xFF6F61EF),
                                                          fontSize: 12.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                        ),
                                              ),
                                            ),
                                          ].divide(SizedBox(height: 4.0)),
                                        ),
                                      ),
                                    ),
                                  if (responsiveVisibility(
                                    context: context,
                                    phone: false,
                                  ))
                                    Expanded(
                                      flex: 2,
                                      child: Text(
                                        'June 5th',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Plus Jakarta Sans',
                                              color: Color(0xFF15161E),
                                              fontSize: 14.0,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.w500,
                                            ),
                                      ),
                                    ),
                                  Expanded(
                                    flex: 2,
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(
                                            color: Color(0x4CEE8B60),
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                            border: Border.all(
                                              color: Color(0xFFEE8B60),
                                            ),
                                          ),
                                          child: Align(
                                            alignment:
                                                AlignmentDirectional(0.0, 0.0),
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(8.0, 4.0, 8.0, 4.0),
                                              child: Text(
                                                'Redeem',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodySmall
                                                        .override(
                                                          fontFamily:
                                                              'Plus Jakarta Sans',
                                                          color:
                                                              Color(0xFF15161E),
                                                          fontSize: 12.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                        ),
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
                      ].divide(SizedBox(height: 1.0)),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}