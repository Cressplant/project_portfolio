import 'package:flutter/material.dart';
import 'package:project_portfolio/business_logic/models/job.dart';
import 'package:project_portfolio/business_logic/utils/date_formats.dart';
import 'package:project_portfolio/business_logic/utils/spacers.dart';

class JobTile extends StatelessWidget {
  final Job job;

  JobTile(this.job);

  @override
  Widget build(BuildContext context) {
    ThemeData _theme = Theme.of(context);

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 4.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (job.logo != null)
            Image.asset(job.logo ?? '', height: 80.0, width: 80.0)
          else
            Container(
              width: 80.0,
              height: 80.0,
              child: Center(
                child: Icon(
                  Icons.work,
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
              Text(job.company, style: _theme.textTheme.caption),
              // smallVerticalSpacer,
              RichText(
                text: TextSpan(
                  style: _theme.textTheme.bodyText1,
                  children: <TextSpan>[
                    TextSpan(text: job.role),
                    if (job.contract.isNotEmpty) ...[
                      TextSpan(text: ' - '),
                      TextSpan(text: job.contract),
                    ]
                  ],
                ),
              ),

              smallVerticalSpacer,
              RichText(
                text: TextSpan(
                  style: _theme.textTheme.caption,
                  children: <TextSpan>[
                    TextSpan(text: yMMMM.format(job.start)),
                    TextSpan(text: ' - '),
                    // TextSpan(text: job.currentlyWorkingHere ? 'Present' : ddMMyy.format(job.end ?? DateTime.now())),
                    TextSpan(text: job.currentlyWorkingHere ? 'Present' : yMMMM.format(job.end ?? DateTime.now())),
                  ],
                ),
              ),

              smallVerticalSpacer,
              Text(job.description)

            ],
          ))
        ],
      ),
    );
  }
}
