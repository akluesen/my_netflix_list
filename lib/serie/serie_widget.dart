import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../score_details/score_details_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class SerieWidget extends StatefulWidget {
  const SerieWidget({Key key}) : super(key: key);

  @override
  _SerieWidgetState createState() => _SerieWidgetState();
}

class _SerieWidgetState extends State<SerieWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  child: Container(
                    height: 450,
                    child: Stack(
                      children: [
                        Align(
                          alignment: AlignmentDirectional(0, 0),
                          child: Image.asset(
                            'assets/images/211639.jpg',
                            width: MediaQuery.of(context).size.width,
                            height: 450,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(0.9, -0.8),
                          child: Icon(
                            Icons.favorite_border,
                            color: Colors.white,
                            size: 24,
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(-0.9, -0.84),
                          child: FlutterFlowIconButton(
                            borderColor: Colors.transparent,
                            borderRadius: 30,
                            buttonSize: 48,
                            icon: Icon(
                              Icons.arrow_back_rounded,
                              color: Colors.white,
                              size: 30,
                            ),
                            onPressed: () async {
                              Navigator.pop(context);
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(16, 12, 16, 0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Text(
                    'Stranger Things - Staffel 1',
                    style: FlutterFlowTheme.of(context).title2.override(
                          fontFamily: 'Lexend Deca',
                          color: Color(0xFF090F13),
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(16, 4, 16, 0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '2016',
                          textAlign: TextAlign.start,
                          style:
                              FlutterFlowTheme.of(context).bodyText1.override(
                                    fontFamily: 'Lexend Deca',
                                    color: Color(0xFF8B97A2),
                                    fontSize: 14,
                                    fontWeight: FontWeight.normal,
                                  ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Card(
                              clipBehavior: Clip.antiAliasWithSaveLayer,
                              color: Color(0xFFF1F4F8),
                              elevation: 2,
                              child: Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(6, 2, 6, 2),
                                child: Text(
                                  '8 EP',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Lexend Deca',
                                        color: Color(0xFF090F13),
                                        fontSize: 14,
                                        fontWeight: FontWeight.normal,
                                      ),
                                ),
                              ),
                            ),
                            Card(
                              clipBehavior: Clip.antiAliasWithSaveLayer,
                              color: Color(0xFFF1F4F8),
                              elevation: 2,
                              child: Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(6, 2, 6, 2),
                                child: Text(
                                  'FSK 12',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Lexend Deca',
                                        color: Color(0xFF090F13),
                                        fontSize: 14,
                                        fontWeight: FontWeight.normal,
                                      ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(16, 12, 16, 0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.9,
                    height: 1,
                    decoration: BoxDecoration(
                      color: Color(0xFFF1F4F8),
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(16, 12, 16, 0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 4),
                        child: Text(
                          'Handlung',
                          textAlign: TextAlign.start,
                          style:
                              FlutterFlowTheme.of(context).bodyText2.override(
                                    fontFamily: 'Lexend Deca',
                                    color: Color(0xFF95A1AC),
                                    fontSize: 14,
                                    fontWeight: FontWeight.normal,
                                  ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Expanded(
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(8, 12, 8, 0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Die erste Staffel der US-amerikanischen Science-Fiction-Horror-Fernsehserie Stranger Things wurde am 15. Juli 2016 weltweit exklusiv über den Streaming-Service Netflix veröffentlicht. Die Serie wurde von den Duffer-Brüdern entwickelt. Die erste Staffel besteht aus acht circa vierzig Minuten langen Episoden.',
                          textAlign: TextAlign.start,
                          style: FlutterFlowTheme.of(context).bodyText1,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 12, 0, 24),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  FFButtonWidget(
                    onPressed: () async {
                      await Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ScoreDetailsWidget(),
                        ),
                      );
                    },
                    text: 'Zur Liste Hinzufügen',
                    icon: Icon(
                      Icons.favorite_border,
                      size: 15,
                    ),
                    options: FFButtonOptions(
                      width: 300,
                      height: 50,
                      color: Color(0xFFFF0000),
                      textStyle:
                          FlutterFlowTheme.of(context).subtitle2.override(
                                fontFamily: 'Lexend Deca',
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                      elevation: 3,
                      borderSide: BorderSide(
                        color: Colors.transparent,
                        width: 1,
                      ),
                      borderRadius: 8,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
