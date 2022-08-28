import 'package:flutter/material.dart';
import 'package:recipe_app/recipe.dart';

class RecipeDetail extends StatefulWidget {
  final Recipe recipe;
  const RecipeDetail({Key? key, required this.recipe}) : super(key: key);

  @override
  State<RecipeDetail> createState() => _RecipeDetailState();
}

class _RecipeDetailState extends State<RecipeDetail> {
  //todo: Add _sliderVal here

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.recipe.label),
      ),
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 300,
              width: double.infinity,
              child: Image(
                image: AssetImage('assets/${widget.recipe.url}'),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              widget.recipe.label,
              style: TextStyle(fontSize: 18),
            ),
            //todo: Add Expanded

            //todo: Add Slider() here
          ],
        ),
      ),
    );
  }
}
