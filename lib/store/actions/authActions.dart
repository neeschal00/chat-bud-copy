import 'dart:math';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import "package:redux/redux.dart";
import 'package:shared_preferences/shared_preferences.dart';
import 'package:signal/models/Models.dart';
import 'package:signal/screens/auth/Login.dart';
import 'package:signal/screens/home/UsersList.dart';
import 'package:signal/store/actions/types.dart';
import 'package:signal/store/reducer.dart';
import 'dart:convert';
