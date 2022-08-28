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
  int _sliderVal = 1;

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
            Expanded(
                child: ListView.builder(
                    padding: EdgeInsets.all(7.0),
                    itemCount: widget.recipe.ingrs.length,
                    itemBuilder: (context, index) {
                      final ingreds = widget.recipe.ingrs[index];
                      return Text(
                          '${ingreds.quantity * _sliderVal}   ${ingreds.measure}  '
                          '${ingreds.name}');
                    })),

            //todo: Add Slider() here
            Slider(
              value: _sliderVal.toDouble(),
              onChanged: (newVal) {
                setState(() {
                  _sliderVal = newVal.round();
                });
              },
              min: 1,
              max: 10,
              divisions: 10,
              label: '${_sliderVal * widget.recipe.servings} servings',
              activeColor: Colors.green,
              inactiveColor: Colors.black,
            ),
          ],
        ),
      ),
    );
  }
}
