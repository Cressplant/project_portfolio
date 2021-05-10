
import 'dart:async';
import 'dart:typed_data';
// ignore: unused_import
import 'package:flutter/material.dart' as material; // to prevent accidental import
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart';
import 'package:printing/printing.dart';
import 'package:project_portfolio/business_logic/models/job.dart';
import 'package:project_portfolio/business_logic/utils/date_formats.dart';
import 'package:project_portfolio/business_logic/utils/globals.dart';
import 'package:flutter/services.dart' show rootBundle;


class CV {

  SizedBox _smallVerticalSpacer = SizedBox(height: 5.0);
  SizedBox _mediumVerticalSpacer = SizedBox(height: 15.0);
  SizedBox _largeVerticalSpacer = SizedBox(height: 30.0);

  FutureOr<Uint8List> generate(PdfPageFormat _pdfPageFormat) async {

    Font? _bodyFont;
    ImageProvider? _summaryTitleImage;
    ImageProvider? _aboutTitleImage;
    ImageProvider? _skillsTitleImage;
    ImageProvider? _experienceTitleImage;
    ImageProvider? _educationTitleImage;
    ImageProvider? _accomplishmentsTitleImage;
    Map<String, ImageProvider> _jobLogos = {}; //* FORMAT: { JOBID : IMAGEPROVIDER }

    Future<void> _getBodyFont() async => _bodyFont = Font.ttf(await rootBundle.load("assets/fonts/Roboto-Light.ttf"));
    Future<void> _getSummaryTitleImage() async => _summaryTitleImage = await imageFromAssetBundle('assets/cv_assets/summary_title.jpg');
    Future<void> _getAboutTitleImage() async => _aboutTitleImage = await imageFromAssetBundle('assets/cv_assets/about_title.jpg');
    Future<void> _getSkillsTitleImage() async => _skillsTitleImage = await imageFromAssetBundle('assets/cv_assets/skills_title.jpg');
    Future<void> _getExperienceTitleImage() async => _experienceTitleImage = await imageFromAssetBundle('assets/cv_assets/experience_title.jpg');
    Future<void> _getEducationTitleImage() async => _educationTitleImage = await imageFromAssetBundle('assets/cv_assets/education_title.jpg');
    Future<void> _getAccomplishmentsTitleImage() async => _accomplishmentsTitleImage = await imageFromAssetBundle('assets/cv_assets/accomplishments_title.jpg');
    Future<void> _getJobLogo(Job _job) async => _jobLogos[_job.id] = await imageFromAssetBundle(_job.logo);

    await Future.wait([
      _getBodyFont(),
      _getSummaryTitleImage(),
      _getAboutTitleImage(),
      _getSkillsTitleImage(),
      _getExperienceTitleImage(),
      _getEducationTitleImage(),
      _getAccomplishmentsTitleImage(),
      ...Globals.jobList.map((_job) =>_getJobLogo(_job)).toList()
    ]);

    ThemeData _themeData = ThemeData.withFont(base: _bodyFont);

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
            _mediumVerticalSpacer,
            Text('Oscar Newman', style: _themeData.header3),
            Text('Flutter Developer', style: _themeData.header5),
            _mediumVerticalSpacer,
            Text(Globals.phone),
            Text(Globals.email),
            Text(Globals.portfolio),
            _mediumVerticalSpacer,
            Container(
                child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  _buildTitle(_summaryTitleImage),
                  _mediumVerticalSpacer,
                  Text(Globals.summary, style: TextStyle(height: 1.5)),
                ])),
            _mediumVerticalSpacer,
            Container(
                child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  _buildTitle(_aboutTitleImage),
                  _mediumVerticalSpacer,
                  Text(Globals.about),
                ])),
            _largeVerticalSpacer,
            Container(
                child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  _buildTitle(_skillsTitleImage),
                  _mediumVerticalSpacer,
                  Wrap(spacing: 5.0, runSpacing: 5.0, children: [
                    for (String _skill in Globals.skills)
                      Container(
                          padding: EdgeInsets.symmetric(vertical: 4.0, horizontal: 9.0),
                          decoration: BoxDecoration(color: PdfColors.grey200, borderRadius: BorderRadius.circular(12.0)),
                          child: Text(_skill))
                  ]),
                ])),
            _largeVerticalSpacer,
            Container(
                child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  _buildTitle(_experienceTitleImage),
                  _mediumVerticalSpacer,
                  ...Globals.jobList.map((_job){

                    ImageProvider? _logo = _jobLogos[_job.id];

                    return Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 4.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [

                          if (_logo != null)
                            ...[
                              Image(_logo, height: 55.0),
                              SizedBox(
                                width: 15.0,
                              ),
                            ],
                          Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(_job.company,
                                    // style: _theme.textTheme.caption
                                  ),
                                  // smallVerticalSpacer,
                                  RichText(
                                    text: TextSpan(
                                      // style: _theme.textTheme.bodyText1,
                                      children: <TextSpan>[
                                        TextSpan(text: _job.role),
                                        if (_job.contract.isNotEmpty) ...[
                                          TextSpan(text: ' - '),
                                          TextSpan(text: _job.contract),
                                        ]
                                      ],
                                    ),
                                  ),

                                  _smallVerticalSpacer,
                                  RichText(
                                    text: TextSpan(
                                      // style: _theme.textTheme.caption,
                                      children: <TextSpan>[
                                        TextSpan(text: yMMMM.format(_job.start)),
                                        TextSpan(text: ' - '),
                                        // TextSpan(text: job.currentlyWorkingHere ? 'Present' : ddMMyy.format(job.end ?? DateTime.now())),
                                        TextSpan(text: _job.currentlyWorkingHere ? 'Present' : yMMMM.format(_job.end ?? DateTime.now())),
                                      ],
                                    ),
                                  ),

                                  _smallVerticalSpacer,
                                  Text(_job.description)

                                ],
                              ))

                        ],
                      ),
                    );

                  }),
                ])),
            _largeVerticalSpacer,
            Container(
                child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  _buildTitle(_educationTitleImage),
                  // mediumVerticalSpacer,
                  Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                        Text(
                          'Bournemouth University',
                        ),
                        Text(
                          'BA (Hons) Business Studies with Enterprise, 2:1',
                        ),
                      ])),
                ])),
            _largeVerticalSpacer,
            Container(
                child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  _buildTitle(_accomplishmentsTitleImage),

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
            _largeVerticalSpacer,
            _largeVerticalSpacer
          ];
        }));

    return _pdf.save();
  }


  Widget _buildTitle(ImageProvider? _titleImage) => _titleImage != null ? Image(_titleImage, height: 50.0) : SizedBox();

}