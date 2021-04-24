import 'package:flutter/material.dart';
import 'package:project_portfolio/views/business_logic/models/user_preferences.dart';
import 'package:project_portfolio/views/business_logic/utils/enums.dart';
import 'package:project_portfolio/views/business_logic/utils/spacers.dart';
import 'package:project_portfolio/views/utils/floating_modal.dart';
import 'package:provider/provider.dart';

Future<HandShakeStatus> showHandShakeOverlay(BuildContext context) async {
  int _handshakeAttempts = Provider.of<UserPreferences>(context, listen: false).handshakeAttempts;

  HandShakeStatus _handShakeStatus = await showFloatingModalBottomSheet(
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
                                      backgroundImage: AssetImage('images/profile_picture.png'),
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
                              // style: Theme.of(context).textTheme.caption,
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Text(
                            '$_handshakeAttempts Handshake Attempt${_handshakeAttempts > 1 ? 's' : ''}',
                            style: _theme.textTheme.caption,
                          ),
                          if (_handshakeAttempts > 1) ...[
                            mediumVerticalSpacer,
                            Text(
                              'You\'ve uncovered one of my valuable qualities - persistence.',
                              textAlign: TextAlign.center,
                              // style: _theme.textTheme.caption,
                            ),
                          ]
                        ],
                      )),
                  Row(
                    children: <Widget>[
                      Expanded(
                          child: InkWell(
                        onTap: () => Navigator.pop(context, HandShakeStatus.accepted),
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
                        onTap: () => Navigator.pop(context, HandShakeStatus.ignored),
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
                        onTap: () => Navigator.pop(context, HandShakeStatus.refused),
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
          }) ??
      HandShakeStatus.refused;

  if (_handShakeStatus == HandShakeStatus.ignored) {
    Provider.of<UserPreferences>(context, listen: false).updateHandshakeAttempts(handshakeAttempts: _handshakeAttempts + 1);
    _handShakeStatus = await showHandShakeOverlay(context);
  }

  return _handShakeStatus;
}
