import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class ContactsWidget extends StatefulWidget {
  const ContactsWidget({Key? key}) : super(key: key);

  @override
  _ContactsWidgetState createState() => _ContactsWidgetState();
}

class _ContactsWidgetState extends State<ContactsWidget> {
  TextEditingController? textController;
  final _unfocusNode = FocusNode();
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    textController = TextEditingController();
    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _unfocusNode.dispose();
    textController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      body: GestureDetector(
        onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * 1,
          decoration: BoxDecoration(
            color: Color(0xFF4C3FB5),
          ),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 30, 0, 0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                        child: InkWell(
                          onTap: () async {
                            context.pop();
                          },
                          child: Icon(
                            Icons.chevron_left_outlined,
                            color: FlutterFlowTheme.of(context).primaryBtnText,
                            size: 24,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                        child: Text(
                          'Contacts',
                          style: FlutterFlowTheme.of(context).title2.override(
                                fontFamily:
                                    FlutterFlowTheme.of(context).title2Family,
                                color: FlutterFlowTheme.of(context).lineColor,
                                useGoogleFonts: GoogleFonts.asMap().containsKey(
                                    FlutterFlowTheme.of(context).title2Family),
                              ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(10, 8, 10, 8),
                  child: Container(
                    width: double.infinity,
                    height: 60,
                    decoration: BoxDecoration(
                      color: Color(0x790E151B),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(8, 0, 8, 0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(4, 0, 4, 0),
                            child: Icon(
                              Icons.search_rounded,
                              color:
                                  FlutterFlowTheme.of(context).primaryBtnText,
                              size: 24,
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(4, 0, 0, 0),
                              child: TextFormField(
                                controller: textController,
                                onChanged: (_) => EasyDebounce.debounce(
                                  'textController',
                                  Duration(milliseconds: 2000),
                                  () => setState(() {}),
                                ),
                                obscureText: false,
                                decoration: InputDecoration(
                                  hintText: 'Search...',
                                  enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0x00000000),
                                      width: 1,
                                    ),
                                    borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(4.0),
                                      topRight: Radius.circular(4.0),
                                    ),
                                  ),
                                  focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0x00000000),
                                      width: 1,
                                    ),
                                    borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(4.0),
                                      topRight: Radius.circular(4.0),
                                    ),
                                  ),
                                  errorBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0x00000000),
                                      width: 1,
                                    ),
                                    borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(4.0),
                                      topRight: Radius.circular(4.0),
                                    ),
                                  ),
                                  focusedErrorBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0x00000000),
                                      width: 1,
                                    ),
                                    borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(4.0),
                                      topRight: Radius.circular(4.0),
                                    ),
                                  ),
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyText1
                                    .override(
                                      fontFamily: 'Nunito',
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      fontSize: 14,
                                      fontWeight: FontWeight.normal,
                                      useGoogleFonts: GoogleFonts.asMap()
                                          .containsKey(
                                              FlutterFlowTheme.of(context)
                                                  .bodyText1Family),
                                    ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                  child: Text(
                    'Favourites',
                    style: FlutterFlowTheme.of(context).bodyText1.override(
                          fontFamily:
                              FlutterFlowTheme.of(context).bodyText1Family,
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          useGoogleFonts: GoogleFonts.asMap().containsKey(
                              FlutterFlowTheme.of(context).bodyText1Family),
                        ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(5, 10, 5, 0),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 0, 5, 0),
                          child: Container(
                            width: 100,
                            height: 100,
                            decoration: BoxDecoration(
                              color: Color(0x07FFFFFF),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 5, 0, 0),
                                    child: Container(
                                      width: 70,
                                      height: 70,
                                      clipBehavior: Clip.antiAlias,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                      ),
                                      child: Image.network(
                                        'https://img.freepik.com/premium-photo/close-up-beautiful-black-girl-smiling-against-gray-wall_33839-9197.jpg?w=360',
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  Text(
                                    'Tinashe ❤️',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyText1
                                        .override(
                                          fontFamily:
                                              FlutterFlowTheme.of(context)
                                                  .bodyText1Family,
                                          color: FlutterFlowTheme.of(context)
                                              .primaryBackground,
                                          useGoogleFonts: GoogleFonts.asMap()
                                              .containsKey(
                                                  FlutterFlowTheme.of(context)
                                                      .bodyText1Family),
                                        ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 0, 5, 0),
                          child: Container(
                            width: 100,
                            height: 100,
                            decoration: BoxDecoration(
                              color: Color(0x07FFFFFF),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 5, 0, 0),
                                    child: Container(
                                      width: 70,
                                      height: 70,
                                      clipBehavior: Clip.antiAlias,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                      ),
                                      child: Image.network(
                                        'https://thumbs.dreamstime.com/b/portrait-black-girl-smiling-camera-studio-beautiful-african-lady-headshot-happy-woman-isolated-pastel-orange-wall-174547020.jpg',
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  Text(
                                    'katty 💁🏾',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyText1
                                        .override(
                                          fontFamily:
                                              FlutterFlowTheme.of(context)
                                                  .bodyText1Family,
                                          color: FlutterFlowTheme.of(context)
                                              .primaryBackground,
                                          useGoogleFonts: GoogleFonts.asMap()
                                              .containsKey(
                                                  FlutterFlowTheme.of(context)
                                                      .bodyText1Family),
                                        ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 0, 5, 0),
                          child: Container(
                            width: 100,
                            height: 100,
                            decoration: BoxDecoration(
                              color: Color(0x07FFFFFF),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 5, 0, 0),
                                    child: Container(
                                      width: 70,
                                      height: 70,
                                      clipBehavior: Clip.antiAlias,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                      ),
                                      child: Image.network(
                                        'https://media.istockphoto.com/id/1333828829/photo/back-to-school-first-day-registration.jpg?b=1&s=170667a&w=0&k=20&c=JsBz5aeBB5p8hXVaEe5w0uFv1wWUDxShnWz_gQbRCl4=',
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  Text(
                                    'Bella T',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyText1
                                        .override(
                                          fontFamily:
                                              FlutterFlowTheme.of(context)
                                                  .bodyText1Family,
                                          color: FlutterFlowTheme.of(context)
                                              .primaryBackground,
                                          useGoogleFonts: GoogleFonts.asMap()
                                              .containsKey(
                                                  FlutterFlowTheme.of(context)
                                                      .bodyText1Family),
                                        ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Container(
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(
                            color: Color(0x07FFFFFF),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 5, 0, 0),
                                  child: Container(
                                    width: 70,
                                    height: 70,
                                    clipBehavior: Clip.antiAlias,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                    ),
                                    child: Image.network(
                                      'data:image/jpeg;base64,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',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                Text(
                                  'Mai Kembo',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: FlutterFlowTheme.of(context)
                                            .bodyText1Family,
                                        color: FlutterFlowTheme.of(context)
                                            .primaryBackground,
                                        useGoogleFonts: GoogleFonts.asMap()
                                            .containsKey(
                                                FlutterFlowTheme.of(context)
                                                    .bodyText1Family),
                                      ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(
                            color: Color(0x07FFFFFF),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 5, 0, 0),
                                  child: Container(
                                    width: 70,
                                    height: 70,
                                    clipBehavior: Clip.antiAlias,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                    ),
                                    child: Image.network(
                                      'https://img.freepik.com/premium-photo/close-up-beautiful-black-girl-smiling-against-gray-wall_33839-9197.jpg?w=360',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                Text(
                                  'Tinashe ❤️',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: FlutterFlowTheme.of(context)
                                            .bodyText1Family,
                                        color: FlutterFlowTheme.of(context)
                                            .primaryBackground,
                                        useGoogleFonts: GoogleFonts.asMap()
                                            .containsKey(
                                                FlutterFlowTheme.of(context)
                                                    .bodyText1Family),
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
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 30, 0, 0),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * 1,
                    decoration: BoxDecoration(
                      color: Color(0xFF1B1743),
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(0),
                        bottomRight: Radius.circular(0),
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 30, 0, 0),
                      child: ListView(
                        padding: EdgeInsets.zero,
                        scrollDirection: Axis.vertical,
                        children: [
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                            child: Container(
                              decoration: BoxDecoration(),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        10, 0, 0, 0),
                                    child: Container(
                                      width: 50,
                                      height: 50,
                                      clipBehavior: Clip.antiAlias,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                      ),
                                      child: Image.network(
                                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSNeXu32B1dN8B0E79pU3XVNPFZxItOGjZDcQ&usqp=CAU',
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: Container(
                                      decoration: BoxDecoration(),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            10, 0, 0, 0),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Mwansa Sichalwe',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .title3
                                                      .override(
                                                        fontFamily:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .title3Family,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryBtnText,
                                                        useGoogleFonts: GoogleFonts
                                                                .asMap()
                                                            .containsKey(
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .title3Family),
                                                      ),
                                            ),
                                            Text(
                                              'yonaischalwe@gmail.com',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyText1
                                                      .override(
                                                        fontFamily:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyText1Family,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryBtnText,
                                                        useGoogleFonts: GoogleFonts
                                                                .asMap()
                                                            .containsKey(
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyText1Family),
                                                      ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 0, 15, 0),
                                    child: Icon(
                                      Icons.more_vert_rounded,
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBackground,
                                      size: 24,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                            child: Container(
                              decoration: BoxDecoration(),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        10, 0, 0, 0),
                                    child: Container(
                                      width: 50,
                                      height: 50,
                                      clipBehavior: Clip.antiAlias,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                      ),
                                      child: Image.network(
                                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR7dOAIUjqrF2OixKuJjhiv9HV-9f-yPnqrfvmiBzPScEZkYNhyn-r-qyN81J3OaQZHzMc&usqp=CAU',
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: Container(
                                      decoration: BoxDecoration(),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            10, 0, 0, 0),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Chioni Sichalwe',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .title3
                                                      .override(
                                                        fontFamily:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .title3Family,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryBtnText,
                                                        useGoogleFonts: GoogleFonts
                                                                .asMap()
                                                            .containsKey(
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .title3Family),
                                                      ),
                                            ),
                                            Text(
                                              'chionisichalwe@gmail.com',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyText1
                                                      .override(
                                                        fontFamily:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyText1Family,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryBtnText,
                                                        useGoogleFonts: GoogleFonts
                                                                .asMap()
                                                            .containsKey(
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyText1Family),
                                                      ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 0, 15, 0),
                                    child: Icon(
                                      Icons.more_vert_rounded,
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBackground,
                                      size: 24,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                            child: Container(
                              decoration: BoxDecoration(),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        10, 0, 0, 0),
                                    child: Container(
                                      width: 50,
                                      height: 50,
                                      clipBehavior: Clip.antiAlias,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                      ),
                                      child: Image.network(
                                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTe_8BB6ULF_Qb4QMD9VyRVi788w-Gh2kVgGQ&usqp=CAU',
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: Container(
                                      decoration: BoxDecoration(),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            10, 0, 0, 0),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Random Guy',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .title3
                                                      .override(
                                                        fontFamily:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .title3Family,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryBtnText,
                                                        useGoogleFonts: GoogleFonts
                                                                .asMap()
                                                            .containsKey(
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .title3Family),
                                                      ),
                                            ),
                                            Text(
                                              'randomguy@gmail.com',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyText1
                                                      .override(
                                                        fontFamily:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyText1Family,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryBtnText,
                                                        useGoogleFonts: GoogleFonts
                                                                .asMap()
                                                            .containsKey(
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyText1Family),
                                                      ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 0, 15, 0),
                                    child: Icon(
                                      Icons.more_vert_rounded,
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBackground,
                                      size: 24,
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
