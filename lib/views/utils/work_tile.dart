import 'package:flutter/material.dart';
import 'package:project_portfolio/views/business_logic/models/job.dart';
import 'package:project_portfolio/views/business_logic/utils/date_formats.dart';
import 'package:project_portfolio/views/business_logic/utils/spacers.dart';

class JobTile extends StatelessWidget {
  final Job job;

  JobTile(this.job);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          if (job.logo != null)
            Image.asset(job.logo ?? '', height: 36.0, width: 36.0)
          else
            Icon(
              Icons.work,
              size: 36.0,
            ),
          SizedBox(
            width: 15.0,
          ),
          Expanded(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(job.company),
              smallVerticalSpacer,
              Row(
                children: [
                  Text(job.role),
                  SizedBox(
                    width: 10.0,
                  ),
                  Text(job.contract),
                ],
              ),
              smallVerticalSpacer,
              Row(
                children: [
                  Text(ddMMyy.format(job.start)),
                  SizedBox(
                    width: 10.0,
                  ),
                  if (job.currentlyWorkingHere) Text('Present') else Text(ddMMyy.format(job.end ?? DateTime.now())),
                ],
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
