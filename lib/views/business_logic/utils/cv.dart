import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart';
import 'package:project_portfolio/views/business_logic/models/job.dart';
import 'package:project_portfolio/views/business_logic/utils/date_formats.dart';
import 'package:project_portfolio/views/business_logic/utils/globals.dart';

Future generateCV(List<Job> _jobList) async {
  SizedBox smallVerticalSpacer = SizedBox(height: 5.0);
  SizedBox mediumVerticalSpacer = SizedBox(height: 15.0);
  SizedBox largeVerticalSpacer = SizedBox(height: 30.0);

  TextStyle _caption = TextStyle(); //!
  TextStyle _bodyText1 = TextStyle(); //!

  Widget _body = Column(children: [
    Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        mediumVerticalSpacer,

        buildCustomTitle(leading: Icon(IconData(0xe873)), title: 'Summary'), //* description

        mediumVerticalSpacer,
        Text(Globals.about),
        largeVerticalSpacer,

        buildCustomTitle(leading: Icon(IconData(0xe873)), title: 'Skills'), //* description

        mediumVerticalSpacer,
        Wrap(spacing: 5.0, runSpacing: 5.0, children: [
          for (String _skill in Globals.skills)
            Container(padding: EdgeInsets.all(3.0), decoration: BoxDecoration(color: PdfColors.grey200, borderRadius: BorderRadius.circular(20.0)), child: Text(_skill))
        ]),
        largeVerticalSpacer,

        buildCustomTitle(leading: Icon(IconData(0xe886)), title: 'Experience'), //* work

        mediumVerticalSpacer,
        ..._jobList.map((_job) => Padding(
              padding: const EdgeInsets.all(4.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // if (_job.logo != null)
                  //   Image.asset(_job.logo ?? '', height: 80.0, width: 80.0) //! Reinstate
                  // else
                  Container(
                    width: 80.0,
                    height: 80.0,
                    child: Center(
                      child: Icon(
                        IconData(0xe886), //* work
                        size: 36.0,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 15.0,
                  ),
                  Expanded(
                      child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(_job.company, style: _caption),
                      // smallVerticalSpacer,
                      RichText(
                        text: TextSpan(
                          style: _bodyText1,
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
                          style: _caption,
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
        largeVerticalSpacer,

        buildCustomTitle(leading: Icon(IconData(0xe80c)), title: 'Education'),

        mediumVerticalSpacer,

        Padding(
            padding: EdgeInsets.all(10.0),
            child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text('Bournemouth University', style: _caption),
              Text('BA (Hons) Business Studies with Enterprise, 2:1', style: _bodyText1),
            ])),

        largeVerticalSpacer,
        buildCustomTitle(leading: Icon(IconData(0xe895)), title: 'Accomplishments'), //! Trophy

        mediumVerticalSpacer,
        // ListTile(
        //   title: Text('Santander Entrepreneurship Initiative 2019', style: _caption),
        //   subtitle: Text('Winner & Funding Recipient', style: _bodyText1),
        // ),
        Padding(
            padding: EdgeInsets.all(10.0),
            child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text('Santander Entrepreneurship Initiative 2019', style: _caption),
              Text('Winner & Funding Recipient', style: _bodyText1),
            ])),

        Padding(
            padding: EdgeInsets.all(10.0),
            child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text('Bournemouth University Pitch at the Pitch 2017', style: _caption),
              Text('Winner & Funding Recipient', style: _bodyText1),
            ])),

        largeVerticalSpacer,
        largeVerticalSpacer
      ],
    ),
  ]);
}

Widget buildCustomTitle({required Widget leading, required String title}) {
  TextStyle _headline4 = TextStyle();

  return Container(
      decoration: BoxDecoration(
        color: PdfColors.white,
        borderRadius: BorderRadius.only(topRight: Radius.circular(15.0), topLeft: Radius.circular(15.0), bottomRight: Radius.circular(15.0)),
        boxShadow: [
          BoxShadow(
              // color: PdfColors.blue.shade900.withOpacity(0.2),
              color: PdfColors.blue, //! Add Opacity or select whiter?
              offset: PdfPoint(0.5, 0.5),
              blurRadius: 4.0)
        ],
      ),
      padding: EdgeInsets.all(12.0),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(padding: EdgeInsets.only(right: 10.0), child: leading),
          Text(
            title,
            style: _headline4,
          ),
        ],
      ));
}
