import 'dart:async';
import 'dart:typed_data';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart';
import 'package:printing/printing.dart';
import 'package:project_portfolio/views/business_logic/models/job.dart';
import 'package:project_portfolio/views/business_logic/utils/date_formats.dart';
import 'package:project_portfolio/views/business_logic/utils/globals.dart';
// import 'package:http/http.dart' as http;
import 'package:flutter/services.dart' show rootBundle;

FutureOr<Uint8List> generateCV() async {
  SizedBox smallVerticalSpacer = SizedBox(height: 5.0);
  SizedBox mediumVerticalSpacer = SizedBox(height: 15.0);
  SizedBox largeVerticalSpacer = SizedBox(height: 30.0);

  Font? _bodyFont;
  ImageProvider? _summaryTitleImage;
  ImageProvider? _skillsTitleImage;
  ImageProvider? _experienceTitleImage;
  ImageProvider? _educationTitleImage;
  ImageProvider? _accomplishmentsTitleImage;

  Future<void> _getBodyFont() async => _bodyFont = Font.ttf(await rootBundle.load("assets/fonts/Roboto-Light.ttf"));
  Future<void> _getSummaryTitleImage() async => _summaryTitleImage = await imageFromAssetBundle('assets/cv_assets/summary_title.jpg');
  Future<void> _getSkillsTitleImage() async => _skillsTitleImage = await imageFromAssetBundle('assets/cv_assets/skills_title.jpg');
  Future<void> _getExperienceTitleImage() async => _experienceTitleImage = await imageFromAssetBundle('assets/cv_assets/experience_title.jpg');
  Future<void> _getEducationTitleImage() async => _educationTitleImage = await imageFromAssetBundle('assets/cv_assets/education_title.jpg');
  Future<void> _getAccomplishmentsTitleImage() async => _accomplishmentsTitleImage = await imageFromAssetBundle('assets/cv_assets/accomplishments_title.jpg');

  await Future.wait([
    _getBodyFont(),
    _getSummaryTitleImage(),
    _getSkillsTitleImage(),
    _getExperienceTitleImage(),
    _getEducationTitleImage(),
    _getAccomplishmentsTitleImage()
  ]);

  ThemeData _themeData = ThemeData.withFont(base: _bodyFont
      // bold: Font.ttf(await rootBundle.load("fonts/OpenSans-Bold.ttf")),
      );

  // TextStyle _caption = TextStyle(); //!
  // TextStyle _bodyText1 = TextStyle(); //!

  final Document _pdf = Document(theme: _themeData);

  // ImageProvider? _profilePicture;

  // _profilePicture = await _getNetworkImage(''); // TODO: add img path

  final PageTheme _pageTheme = PageTheme(
    pageFormat: PdfPageFormat.a4,
    margin: EdgeInsets.symmetric(vertical: 14, horizontal: 30),
  );

  _pdf.addPage(MultiPage(
      pageTheme: _pageTheme,
      build: (Context context) {
        return [
          mediumVerticalSpacer,

          Text('Oscar Newman'),

          Text('Flutter Developer'),

          smallVerticalSpacer,

          Text(Globals.phone),

          Text(Globals.email),

          // if (_profilePicture != null)
          //   Container(
          //       margin: EdgeInsets.only(right: 20.0),
          //       height: 70,
          //       width: 70,
          //       decoration: BoxDecoration(shape: BoxShape.circle, image: DecorationImage.provider(image: _profilePicture, fit: BoxFit.cover))),

// Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//
//
          // Center(
          //   child: buildCustomTitle(leading: Icon(IconData(0xe873)), title: 'Oscar Newman'), //! TODO: ADD IMAGE ASSET
          // ),

//! TODO ADD CONTACT DEETS

          mediumVerticalSpacer,

          _buildTitle(_summaryTitleImage),

          mediumVerticalSpacer,
          Text(Globals.about),
          largeVerticalSpacer,

          Container(
              child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            _buildTitle(_skillsTitleImage),
            mediumVerticalSpacer,
            Wrap(spacing: 5.0, runSpacing: 5.0, children: [
              for (String _skill in Globals.skills)
                Container(
                    padding: EdgeInsets.symmetric(vertical: 4.0, horizontal: 9.0),
                    decoration: BoxDecoration(color: PdfColors.grey200, borderRadius: BorderRadius.circular(12.0)),
                    child: Text(_skill))
            ]),
          ])),

          largeVerticalSpacer,

          Container(
              child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            _buildTitle(_experienceTitleImage),
            mediumVerticalSpacer,
            ...Globals.jobList.map((_job) => Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      // if (_job.logo != null)
                      //   Image.asset(_job.logo ?? '', height: 80.0, width: 80.0) // TODO: Reinstate
                      // else
                      // Container(
                      //   width: 80.0,
                      //   height: 80.0,
                      //   child: Center(
                      //     child: Icon(
                      //       IconData(0xe886), //* work
                      //       size: 36.0,
                      //     ),
                      //   ),
                      // ),
                      SizedBox(
                        width: 15.0,
                      ),
                      Expanded(
                          child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            _job.company,
                            // style: _caption
                          ),
                          // smallVerticalSpacer,
                          RichText(
                            text: TextSpan(
                              // style: _bodyText1,
                              children: <TextSpan>[
                                TextSpan(text: _job.role),
                                if (_job.contract.isNotEmpty) ...[
                                  TextSpan(text: ' - '),
                                  TextSpan(text: _job.contract),
                                ]
                              ],
                            ),
                          ),

                          smallVerticalSpacer,
                          RichText(
                            text: TextSpan(
                              // style: _caption,
                              children: <TextSpan>[
                                TextSpan(text: yMMMM.format(_job.start)),
                                TextSpan(text: ' - '),
                                TextSpan(text: _job.currentlyWorkingHere ? 'Present' : yMMMM.format(_job.end ?? DateTime.now())),
                              ],
                            ),
                          ),

                          // smallVerticalSpacer,
                          // Text(job.description, style: _theme.textTheme.caption)
                        ],
                      ))
                    ],
                  ),
                )),
          ])),

          largeVerticalSpacer,

          Container(
              child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            _buildTitle(_educationTitleImage),
            // mediumVerticalSpacer,
            Padding(
                padding: EdgeInsets.all(10.0),
                child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  Text(
                    'Bournemouth University',
                    // style: _caption
                  ),
                  Text(
                    'BA (Hons) Business Studies with Enterprise, 2:1',
                    // style: _bodyText1
                  ),
                ])),
          ])),

          largeVerticalSpacer,

          Container(
              child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            _buildTitle(_accomplishmentsTitleImage),

            // mediumVerticalSpacer,
            // ListTile(
            //   title: Text('Santander Entrepreneurship Initiative 2019', style: _caption),
            //   subtitle: Text('Winner & Funding Recipient', style: _bodyText1),
            // ),
            Padding(
                padding: EdgeInsets.all(10.0),
                child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  Text(
                    'Santander Entrepreneurship Initiative 2019',
                    // style: _caption
                  ),
                  Text(
                    'Winner & Funding Recipient',
                    // style: _bodyText1
                  ),
                ])),

            Padding(
                padding: EdgeInsets.all(10.0),
                child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  Text(
                    'Bournemouth University Pitch at the Pitch 2017',
                    // style: _caption
                  ),
                  Text(
                    'Winner & Funding Recipient',
                    // style: _bodyText1
                  ),
                ])),
          ])),

          largeVerticalSpacer,
          largeVerticalSpacer
          // ],
          // ),
        ];
      }));

  return _pdf.save(); // returns as Uint8List
}

Widget _buildTitle(ImageProvider? _titleImage) {
  return _titleImage != null ? Image(_titleImage, height: 50.0) : SizedBox();
}

// Widget buildCustomTitle({required Widget leading, required String title}) {
//   // TextStyle _headline4 = TextStyle();

//   return Container(
//       // margin: EdgeInsets.all(10.0),
//       decoration: BoxDecoration(
//         color: PdfColors.white,
//         borderRadius: BorderRadius.only(topRight: Radius.circular(13.0), topLeft: Radius.circular(13.0), bottomRight: Radius.circular(13.0)),
//         border: Border.all(color: PdfColor.fromInt(0xff030058), width: 0.1),
//         // boxShadow: [
//         //   BoxShadow(
//         //     color: PdfColor.fromInt(0xff030058),
//         //     blurRadius: 10,
//         //     spreadRadius: 20,
//         //   ),
//         // ],
//         // boxShadow: [
//         //   BoxShadow(
//         //       // color: PdfColors.blue.shade900.withOpacity(0.2),
//         //       // color: PdfColors.blue, //! Add Opacity or select whiter?
//         //       // offset: PdfPoint(0.5, 0.5),
//         //       blurRadius: 0.0,
//         //       spreadRadius: 2.0)
//         // ],
//       ),
//       padding: EdgeInsets.all(12.0),
//       child: Row(
//         mainAxisSize: MainAxisSize.min,
//         children: [
//           // Padding(padding: EdgeInsets.only(right: 10.0), child: leading), //! Reinstate
//           Text(
//             title,
//             // style: _headline4,
//           ),
//         ],
//       ));
// }

// Future<ImageProvider?> _getNetworkImage(String _image) async {
//   var _response;
//   ImageProvider? _imageProvider;

//   try {
//     _response = await http.get(Uri.file(_image));
//   } on Exception catch (e) {
//     print('Getting CV Profile Picture failed, returning: $e');
//   }

//   // print('Response to requesting companyLogo from HTTP: ' + _response.toString());

//   if (_response != null) {
//     _imageProvider = MemoryImage(_response.bodyBytes);
//   }

//   return _imageProvider;
// }
