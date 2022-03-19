import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:tiktok_clone/views/screens/add_video_screen.dart';
import 'controllers/auth_controller.dart';

// pages
const pages = [
  Text('Home Screen'),
  Text('Search Screen'),
  AddVideoScreen(),
  Text('Messages Screen'),
  Text('Profile Screen'),
];

// colours
const backgroundColour = Colors.black;
var buttonColour = Colors.red[400];
const borderColour = Colors.grey;

// firebase
var firebaseAuth = FirebaseAuth.instance;
var firebaseStorage = FirebaseStorage.instance;
var firestore = FirebaseFirestore.instance;

// controller
var authController = AuthController.instance;
