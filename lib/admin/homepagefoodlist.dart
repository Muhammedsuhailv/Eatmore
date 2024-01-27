import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:hexcolor/hexcolor.dart';

List<Map<String, dynamic>> Popular = [
  {
    'title': "Chicken Biriyani",
    'rate': "₹70",
    'ratingbar': RatingBar.builder(
      initialRating: 4.5,
      minRating: 1,
      direction: Axis.horizontal,
      allowHalfRating: true,
      itemCount: 5,
      itemSize: 15,
      itemBuilder: (context, _) => Icon(
        Icons.star,
        color: HexColor("FFE120"),
      ),
      onRatingUpdate: (rating) {
        // Handle rating updates here
        print(rating);
      },
    ),
    'image': AssetImage("img/chickenbiryani.png")
  },
  {
    'title': "Ghee Rice",
    'rate': "₹40",
    'ratingbar': RatingBar.builder(
      initialRating: 4.0,
      minRating: 1,
      direction: Axis.horizontal,
      allowHalfRating: true,
      itemCount: 5,
      itemSize: 15,
      itemBuilder: (context, _) => Icon(
        Icons.star,
        color: HexColor("FFE120"),
      ),
      onRatingUpdate: (rating) {
        // Handle rating updates here
        print(rating);
      },
    ),
    'image': AssetImage("img/GheeRice.png")
  },
  {
    'title': "Vellappam",
    'rate': "₹12",
    'ratingbar': RatingBar.builder(
      initialRating: 3.5,
      minRating: 1,
      direction: Axis.horizontal,
      allowHalfRating: true,
      itemCount: 5,
      itemSize: 15,
      itemBuilder: (context, _) => Icon(
        Icons.star,
        color: HexColor("FFE120"),
      ),
      onRatingUpdate: (rating) {
        // Handle rating updates here
        print(rating);
      },
    ),
    'image': AssetImage("img/Vallayappam.png")
  },
  {
    'title': "Porotta",
    'rate': "₹10",
    'ratingbar': RatingBar.builder(
      initialRating: 3.0,
      minRating: 1,
      direction: Axis.horizontal,
      allowHalfRating: true,
      itemCount: 5,
      itemSize: 15,
      itemBuilder: (context, _) => Icon(
        Icons.star,
        color: HexColor("FFE120"),
      ),
      onRatingUpdate: (rating) {
        // Handle rating updates here
        print(rating);
      },
    ),
    'image': AssetImage("img/Poratta2.png")
  },
  {
    'title': "Chicken Biriyani",
    'rate': "₹70",
    'ratingbar': RatingBar.builder(
      initialRating: 4.5,
      minRating: 1,
      direction: Axis.horizontal,
      allowHalfRating: true,
      itemCount: 5,
      itemSize: 15,
      itemBuilder: (context, _) => Icon(
        Icons.star,
        color: HexColor("FFE120"),
      ),
      onRatingUpdate: (rating) {
        // Handle rating updates here
        print(rating);
      },
    ),
    'image': AssetImage("img/chickenbiryani.png")
  },
  {
    'title': "Ghee Rice",
    'rate': "₹40",
    'ratingbar': RatingBar.builder(
      initialRating: 4.0,
      minRating: 1,
      direction: Axis.horizontal,
      allowHalfRating: true,
      itemCount: 5,
      itemSize: 15,
      itemBuilder: (context, _) => Icon(
        Icons.star,
        color: HexColor("FFE120"),
      ),
      onRatingUpdate: (rating) {
        // Handle rating updates here
        print(rating);
      },
    ),
    'image': AssetImage("img/GheeRice.png")
  },
  {
    'title': "Vellappam",
    'rate': "₹12",
    'ratingbar': RatingBar.builder(
      initialRating: 3.5,
      minRating: 1,
      direction: Axis.horizontal,
      allowHalfRating: true,
      itemCount: 5,
      itemSize: 15,
      itemBuilder: (context, _) => Icon(
        Icons.star,
        color: HexColor("FFE120"),
      ),
      onRatingUpdate: (rating) {
        // Handle rating updates here
        print(rating);
      },
    ),
    'image': AssetImage("img/Vallayappam.png")
  },
  {
    'title': "Porotta",
    'rate': "₹10",
    'ratingbar': RatingBar.builder(
      initialRating: 3.0,
      minRating: 1,
      direction: Axis.horizontal,
      allowHalfRating: true,
      itemCount: 5,
      itemSize: 15,
      itemBuilder: (context, _) => Icon(
        Icons.star,
        color: HexColor("FFE120"),
      ),
      onRatingUpdate: (rating) {
        // Handle rating updates here
        print(rating);
      },
    ),
    'image': AssetImage("img/Poratta2.png")
  },
  {
    'title': "Chicken Biriyani",
    'rate': "₹70",
    'ratingbar': RatingBar.builder(
      initialRating: 4.5,
      minRating: 1,
      direction: Axis.horizontal,
      allowHalfRating: true,
      itemCount: 5,
      itemSize: 15,
      itemBuilder: (context, _) => Icon(
        Icons.star,
        color: HexColor("FFE120"),
      ),
      onRatingUpdate: (rating) {
        // Handle rating updates here
        print(rating);
      },
    ),
    'image': AssetImage("img/chickenbiryani.png")
  },
  {
    'title': "Ghee Rice",
    'rate': "₹40",
    'ratingbar': RatingBar.builder(
      initialRating: 4.0,
      minRating: 1,
      direction: Axis.horizontal,
      allowHalfRating: true,
      itemCount: 5,
      itemSize: 15,
      itemBuilder: (context, _) => Icon(
        Icons.star,
        color: HexColor("FFE120"),
      ),
      onRatingUpdate: (rating) {
        // Handle rating updates here
        print(rating);
      },
    ),
    'image': AssetImage("img/GheeRice.png")
  },
  {
    'title': "Vellappam",
    'rate': "₹12",
    'ratingbar': RatingBar.builder(
      initialRating: 3.5,
      minRating: 1,
      direction: Axis.horizontal,
      allowHalfRating: true,
      itemCount: 5,
      itemSize: 15,
      itemBuilder: (context, _) => Icon(
        Icons.star,
        color: HexColor("FFE120"),
      ),
      onRatingUpdate: (rating) {
        // Handle rating updates here
        print(rating);
      },
    ),
    'image': AssetImage("img/Vallayappam.png")
  },
  {
    'title': "Porotta",
    'rate': "₹10",
    'ratingbar': RatingBar.builder(
      initialRating: 3.0,
      minRating: 1,
      direction: Axis.horizontal,
      allowHalfRating: true,
      itemCount: 5,
      itemSize: 15,
      itemBuilder: (context, _) => Icon(
        Icons.star,
        color: HexColor("FFE120"),
      ),
      onRatingUpdate: (rating) {
        // Handle rating updates here
        print(rating);
      },
    ),
    'image': AssetImage("img/Poratta2.png")
  },
];

List<Map<String, dynamic>> TodayOrder = [
  {
    'title': "Chicken Biriyani",
    'sub1': "Token No: 031",
    'sub2': "Quantity : 5",
    'rate': "₹70",
    'image': AssetImage("img/chickenbiryani.png"),
  },
  {
    'title': "Chicken Biriyani",
    'sub1': "Token No: 031",
    'sub2': "Quantity : 5",
    'rate': "₹70",
    'image': AssetImage("img/GheeRice.png")
  },
  {
    'title': "Chicken Biriyani",
    'sub1': "Token No: 031",
    'sub2': "Quantity : 5",
    'rate': "₹70",
    'image': AssetImage("img/Vallayappam.png")
  },
  {
    'title': "Chicken Biriyani",
    'sub1': "Token No: 031",
    'sub2': "Quantity : 5",
    'rate': "₹70",
    'image': AssetImage("img/Poratta.png")
  },
  {
    'title': "Chicken Biriyani",
    'sub1': "Token No: 031",
    'sub2': "Quantity : 5",
    'rate': "₹70",
    'image': AssetImage("img/chickenbiryani.png"),
  },
  {
    'title': "Chicken Biriyani",
    'sub1': "Token No: 031",
    'sub2': "Quantity : 5",
    'rate': "₹70",
    'image': AssetImage("img/GheeRice.png")
  },
  {
    'title': "Chicken Biriyani",
    'sub1': "Token No: 031",
    'sub2': "Quantity : 5",
    'rate': "₹70",
    'image': AssetImage("img/Vallayappam.png")
  },
  {
    'title': "Chicken Biriyani",
    'sub1': "Token No: 031",
    'sub2': "Quantity : 5",
    'rate': "₹70",
    'image': AssetImage("img/Poratta.png")
  },
];
