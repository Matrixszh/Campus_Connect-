import 'package:campus_connect/Features/auth/screen/login.dart';
import 'package:campus_connect/Features/community/screens/add_mods_screen.dart';
import 'package:campus_connect/Features/community/screens/community_screen.dart';
import 'package:campus_connect/Features/community/screens/create_community_screens.dart';
import 'package:campus_connect/Features/community/screens/edit_community_screen.dart';
import 'package:campus_connect/Features/community/screens/mod_tools_screen.dart';
import 'package:campus_connect/Features/post/screens/add_post_screen.dart';
import 'package:flutter/material.dart';
import 'package:routemaster/routemaster.dart';
/*
import 'Features/authentication/repository/home/screen/home_screen.dart';

final loggedOutRoute = RouteMap(routes: {
  '/': (_) => const MaterialPage(child: LoginScreen()),
});

final loggedInRoute = RouteMap(routes: {
  '/': (_) => const MaterialPage(child: HomeScreen()),
  '/create-community': (_) => const MaterialPage(child: CreateCommunityScreen()),
});*/



import 'Features/home/screens/home_screen.dart';
import 'Features/post/screens/add_post_type_screen.dart';
import 'Features/post/screens/comments_screen.dart';
import 'Features/user_profile/screens/edit_profile_screen.dart';
import 'Features/user_profile/screens/user_profile_screen.dart';

final loggedOutRoute = RouteMap(routes: {
  '/': (_) => const MaterialPage(child: LoginScreen()),
});

final loggedInRoute = RouteMap(
  routes: {
    '/': (_) => const MaterialPage(child: HomeScreen()),
    '/create-community': (_) => const MaterialPage(child: CreateCommunityScreen()),
    '/r/:name': (route) => MaterialPage(
          child: CommunityScreen(
            name: route.pathParameters['name']!,
          ),
        ),
    '/mod-tools/:name': (routeData) => MaterialPage(
          child: ModToolsScreen(
            name: routeData.pathParameters['name']!,
          ),
        ),
    '/edit-community/:name': (routeData) => MaterialPage(
          child: EditCommunityScreen(
            name: routeData.pathParameters['name']!,
          ),
        ),
    '/add-mods/:name': (routeData) => MaterialPage(
          child: AddModsScreen(
            name: routeData.pathParameters['name']!,
          ),
        ),
    '/u/:uid': (routeData) => MaterialPage(
          child: UserProfileScreen(
            uid: routeData.pathParameters['uid']!,
          ),
        ),
    '/edit-profile/:uid': (routeData) => MaterialPage(
          child: EditProfileScreen(
            uid: routeData.pathParameters['uid']!,
          ),
        ),
    '/add-post/:type': (routeData) => MaterialPage(
          child: AddPostTypeScreen(
            type: routeData.pathParameters['type']!,
          ),
        ),
    '/post/:postId/comments': (route) => MaterialPage(
          child: CommentsScreen(
            postId: route.pathParameters['postId']!,
          ),
        ),
    '/add-post': (routeData) => const MaterialPage(
          child: AddPostScreen(),
        ),
  },
);