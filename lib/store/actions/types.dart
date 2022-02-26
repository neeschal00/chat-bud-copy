//Types of actions

import 'package:chat_bud/models/Models.dart';

enum Types { ClearError, ClearUser, ClearLog, ClearReg, IsAuthenticated }

//Update Error Message
class UpdateErrorAction {
  String _error;

  String get error => this._error;

  UpdateErrorAction(this._error);
}

//update user action
class UpdateUserAction {
  User _user;

  User get user => this._user;
  UpdateUserAction(this._user);
}
