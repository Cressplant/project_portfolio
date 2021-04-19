import 'package:flutter/material.dart';
import 'package:project_portfolio/views/utils/floating_modal.dart';

Future<void> showHandShakeOverlay(BuildContext context) {
  return showFloatingModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        ThemeData _theme = Theme.of(context);

        return ConstrainedBox(
          constraints: BoxConstraints(maxWidth: 400.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Padding(
                  padding: EdgeInsets.all(15.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Text('Hi there!'),
                      SizedBox(
                        height: 136.0,
                        child: Stack(
                          children: <Widget>[
                            Align(
                              alignment: Alignment.center,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: CircleAvatar(
                                  radius: 60.0,
                                  backgroundColor: Colors.white,
                                  backgroundImage: AssetImage('images/profile_picture.jpeg'),
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.bottomCenter,
                              child: Image.asset(
                                'images/handshake_emoji.png',
                                height: 40.0,
                              ),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 4.0),
                        child: Text(
                          '*Oscar has initiated a handshake*',
                          // style: Theme.of(context).textTheme.bodyText1,
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  )),
              Row(
                children: <Widget>[
                  Expanded(
                      child: InkWell(
                    onTap: () => Navigator.pop(context),
                    child: Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          border: Border(
                        top: BorderSide(color: Colors.grey.shade300),
                        right: BorderSide(color: Colors.grey.shade300),
                      )),
                      child: Center(
                        child: Text('Accept', style: _theme.textTheme.bodyText1?.copyWith(color: Colors.blue)),
                      ),
                    ),
                  )),
                  Expanded(
                      child: InkWell(
                    onTap: () {
                      Navigator.pop(context);
                      showHandShakeOverlay(context);
                    },
                    child: Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          border: Border(
                        top: BorderSide(color: Colors.grey.shade300),
                      )),
                      child: Center(
                        child: Text('Ignore', style: _theme.textTheme.bodyText1?.copyWith(color: Colors.orange)),
                      ),
                    ),
                  )),
                  Expanded(
                      child: InkWell(
                    onTap: () => Navigator.pop(context),
                    child: Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          border: Border(
                        top: BorderSide(color: Colors.grey.shade300),
                        left: BorderSide(color: Colors.grey.shade300),
                      )),
                      child: Center(
                        child: Text(
                          'Refuse',
                          style: _theme.textTheme.bodyText1?.copyWith(color: Colors.red),
                        ),
                      ),
                    ),
                  )),
                ],
              ),
            ],
          ),
        );
      });
}
