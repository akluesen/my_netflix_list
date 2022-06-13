import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../main.dart';
import '../score_details/score_details_widget.dart';
import '../serie/serie_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class MyListWidget extends StatefulWidget {
  const MyListWidget({Key key}) : super(key: key);

  @override
  _MyListWidgetState createState() => _MyListWidgetState();
}

class _MyListWidgetState extends State<MyListWidget> {
  double ratingBarValue1;
  double ratingBarValue2;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).background,
        automaticallyImplyLeading: false,
        title: Text(
          'Meine Liste ',
          style: FlutterFlowTheme.of(context).title1,
        ),
        actions: [],
        centerTitle: false,
        elevation: 0,
      ),
      backgroundColor: FlutterFlowTheme.of(context).background,
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          await Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => NavBarPage(initialPage: 'findSeries'),
            ),
          );
        },
        backgroundColor: Color(0xFFFD0000),
        elevation: 8,
        child: Icon(
          Icons.add_rounded,
          color: FlutterFlowTheme.of(context).textColor,
          size: 36,
        ),
      ),
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(16, 0, 16, 12),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Text(
                    'Bewertet: ',
                    style: FlutterFlowTheme.of(context).bodyText1,
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView(
                padding: EdgeInsets.zero,
                scrollDirection: Axis.vertical,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(16, 0, 16, 12),
                    child: InkWell(
                      onTap: () async {
                        await Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ScoreDetailsWidget(),
                          ),
                        );
                      },
                      child: Material(
                        color: Colors.transparent,
                        elevation: 3,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          height: 90,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context).darkBackground,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(12, 12, 12, 12),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Expanded(
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            4, 0, 0, 0),
                                        child: Text(
                                          'Stranger Things Staffel 1',
                                          style: FlutterFlowTheme.of(context)
                                              .title3,
                                        ),
                                      ),
                                    ),
                                    InkWell(
                                      onTap: () async {
                                        await Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) => SerieWidget(),
                                          ),
                                        );
                                      },
                                      child: Icon(
                                        Icons.chevron_right_rounded,
                                        color: FlutterFlowTheme.of(context)
                                            .grayLight,
                                        size: 24,
                                      ),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 8, 0, 0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Card(
                                        clipBehavior:
                                            Clip.antiAliasWithSaveLayer,
                                        color: FlutterFlowTheme.of(context)
                                            .background,
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  8, 4, 8, 4),
                                          child: Text(
                                            '12.06.2022-10:34',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyText1
                                                .override(
                                                  fontFamily: 'Lexend Deca',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .textColor,
                                                ),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            8, 0, 0, 0),
                                        child: Text(
                                          'Score',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyText1,
                                        ),
                                      ),
                                      Align(
                                        alignment: AlignmentDirectional(0, 0),
                                        child: RatingBar.builder(
                                          onRatingUpdate: (newValue) =>
                                              setState(() =>
                                                  ratingBarValue1 = newValue),
                                          itemBuilder: (context, index) => Icon(
                                            Icons.star_rounded,
                                            color: Color(0xFFFF0000),
                                          ),
                                          direction: Axis.horizontal,
                                          initialRating: ratingBarValue1 ??= 3,
                                          unratedColor:
                                              FlutterFlowTheme.of(context)
                                                  .textColor,
                                          itemCount: 5,
                                          itemSize: 20,
                                          glowColor: Color(0xFFFF0000),
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
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(16, 0, 16, 12),
                    child: InkWell(
                      onTap: () async {
                        await Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ScoreDetailsWidget(),
                          ),
                        );
                      },
                      child: Material(
                        color: Colors.transparent,
                        elevation: 3,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          height: 90,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context).darkBackground,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(12, 12, 12, 12),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Expanded(
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            4, 0, 0, 0),
                                        child: Text(
                                          'Stranger Things Staffel 2',
                                          style: FlutterFlowTheme.of(context)
                                              .title3,
                                        ),
                                      ),
                                    ),
                                    InkWell(
                                      onTap: () async {
                                        await Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) => SerieWidget(),
                                          ),
                                        );
                                      },
                                      child: Icon(
                                        Icons.chevron_right_rounded,
                                        color: FlutterFlowTheme.of(context)
                                            .grayLight,
                                        size: 24,
                                      ),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 8, 0, 0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Card(
                                        clipBehavior:
                                            Clip.antiAliasWithSaveLayer,
                                        color: FlutterFlowTheme.of(context)
                                            .background,
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  8, 4, 8, 4),
                                          child: Text(
                                            '04.05.2022-22:40',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyText1
                                                .override(
                                                  fontFamily: 'Lexend Deca',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .textColor,
                                                ),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            8, 0, 0, 0),
                                        child: Text(
                                          'Score',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyText1,
                                        ),
                                      ),
                                      Align(
                                        alignment: AlignmentDirectional(0, 0),
                                        child: RatingBar.builder(
                                          onRatingUpdate: (newValue) =>
                                              setState(() =>
                                                  ratingBarValue2 = newValue),
                                          itemBuilder: (context, index) => Icon(
                                            Icons.star_rounded,
                                            color: Color(0xFFFF0000),
                                          ),
                                          direction: Axis.horizontal,
                                          initialRating: ratingBarValue2 ??= 3,
                                          unratedColor:
                                              FlutterFlowTheme.of(context)
                                                  .textColor,
                                          itemCount: 5,
                                          itemSize: 20,
                                          glowColor: Color(0xFFFF0000),
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
