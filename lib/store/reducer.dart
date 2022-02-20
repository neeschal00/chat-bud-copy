import 'package:flutter/material.dart';
import 'package:redux/redux.dart';
import 'package:chat_bud/main.dart';
import 'package:chat_bud/models/Models.dart';
import 'actions/types.dart';

class ChatState {
  //auth state values
  final String errMsg;
  final bool isAuthenticated;
  final bool regLoading;
  final bool logLoading;
  final User user;
  final List<UserData> allUsers;

  //Chats state values
  final String activeUser;
  final String activeRoom;

  final List<Map<String, dynamic>> messages;
//  constructor
  ChatState({
    this.user,
    this.errMsg,
    this.isAuthenticated,
    this.regLoading,
    this.logLoading,
    this.allUsers,
    this.activeUser,
    this.activeRoom,
    this.messages,
  });

  ChatState copyWith({
    errMsg,
    bool isAuthenticated,
    User user,
    List<UserData> allUsers,
    String activeUser,
    String activeRoom,
    List<Map<String, dynamic>> messages,
  }) {
    return ChatState(
      errMsg: errMsg ?? this.errMsg,
      isAuthenticated: isAuthenticated ?? this.isAuthenticated,
      user: user ?? this.user,
      allUsers: allUsers ?? this.allUsers,
      activeUser: activeUser ?? this.activeUser,
      activeRoom: activeRoom ?? this.activeRoom,
      messages: messages ?? this.messages,
    );
  }
}

//Auth reducer
ChatState authReducer(ChatState state, dynamic action) {
  if (action is UpdateErrorAction) {
    return state.copyWith(errMsg: action.error);
    // print(action.error);
  }
  return state;
}

//Reset Reducer
ChatState resetReducer(ChatState state, dynamic action) {
  switch (action) {
    case Types.ClearError:
      return state.copyWith(errMsg: null);
    case Types.IsAuthenticated:
      return state.copyWith(isAuthenticated: true);
  }
  return state;
}

//combine reducers()
final reducers = combineReducers<ChatState>([authReducer, resetReducer]);
