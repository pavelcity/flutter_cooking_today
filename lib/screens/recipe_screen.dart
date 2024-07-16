import 'package:cooking_today/widgets/food_counter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:cooking_today/models/food.dart';

class RecipeScreen extends StatefulWidget {
  final Food food;
  const RecipeScreen({super.key, required this.food});

  @override
  State<RecipeScreen> createState() => _RecipeScreenState();
}

class _RecipeScreenState extends State<RecipeScreen> {
  int currentNumber = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: Container(
        padding: EdgeInsets.all(20),
        child: Row(
          children: [
            Expanded(
              flex: 6,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green[400],
                    foregroundColor: Colors.white
                  ),
                  child: Text('Start cooking'),
                ),
            ),
            SizedBox(width: 10,),
            Expanded(
              child: IconButton(
                onPressed: () {},
                style: IconButton.styleFrom(
                  shape: CircleBorder(
                      side: BorderSide(
                        color: Colors.grey.shade300,
                        width: 2
                      ),
                  ),
                ),
                icon: Icon(
                  widget.food.isLiked ? Iconsax.heart5 : Iconsax.heart,
                  color: widget.food.isLiked ? Colors.redAccent : Colors.grey,
                  size: 22,
                ),
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Positioned(
                  child: Container(
                    height: MediaQuery.of(context).size.width - 20,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(widget.food.image),
                          fit: BoxFit.fill),
                    ),
                  ),
                ),
                Positioned(
                  top: 60,
                  left: 10,
                  right: 10,
                  child: Row(
                    children: [
                      IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Icon(CupertinoIcons.chevron_back),
                        style: IconButton.styleFrom(
                          backgroundColor: Colors.grey[50],
                          fixedSize: Size(54, 54),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                      ),
                      Spacer(),
                      IconButton(
                        onPressed: () {},
                        style: IconButton.styleFrom(
                          backgroundColor: Colors.grey[200],
                          fixedSize: Size(54, 54),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15)),
                        ),
                        color: Colors.black,
                        icon: Icon(Iconsax.notification),
                      ),
                    ],
                  ),
                ),
                Positioned(
                    left: 0,
                    right: 0,
                    top: MediaQuery.of(context).size.width - 50,
                    child: Container(
                      width: double.infinity,
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(20),
                          topLeft: Radius.circular(20),
                        ),
                      ),
                    )),
              ],
            ),
            Center(
              child: Container(
                width: 50,
                height: 5,
                decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                  borderRadius: BorderRadius.circular(2),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.food.name,
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.w800),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Icon(Iconsax.flash_1, size: 18, color: Colors.green[700]),
                      SizedBox(
                        width: 2,
                      ),
                      Text(
                        '${widget.food.cal} Cal',
                        style: TextStyle(fontSize: 12, color: Colors.grey[700]),
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Icon(Iconsax.clock, size: 18, color: Colors.green[700]),
                      SizedBox(
                        width: 2,
                      ),
                      Text(
                        '${widget.food.time} Min',
                        style: TextStyle(fontSize: 12, color: Colors.grey[700]),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Icon(
                        Iconsax.star5,
                        color: Colors.yellow.shade700,
                        size: 20,
                      ),
                      SizedBox(
                        width: 4,
                      ),
                      Text(
                        '${widget.food.rate}/5',
                        style: TextStyle(
                            fontSize: 12, color: Colors.grey.shade600),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        '(${widget.food.reviews} Reviews)',
                        style: TextStyle(
                            fontSize: 12, color: Colors.grey.shade400),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Ingridients',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Text(
                            'How many servings?',
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Colors.grey),
                          )
                        ],
                      ),
                      Spacer(),
                      FoodCounter(
                        currentNumber: currentNumber,
                        onAdd: () => setState(() {
                          currentNumber++;
                        }),
                        onRemove: () => setState(() {
                          if (currentNumber != 1) {
                            currentNumber--;
                          }
                        }),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Container(
                            width: 60,
                            height: 60,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                image: DecorationImage(
                                  image: AssetImage(widget.food.image),
                                  fit: BoxFit.fill,
                                )),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'Ramen Noodless',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          Spacer(),
                          Text('400g', style: TextStyle(fontSize: 14, color: Colors.grey.shade600),),
                        ],
                      ),
                      SizedBox(height: 10,),
                      Divider(
                        height: 10,
                        color: Colors.grey.shade300,
                      ),

                      Row(
                        children: [
                          Container(
                            width: 60,
                            height: 60,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                image: DecorationImage(
                                  image: AssetImage(widget.food.image),
                                  fit: BoxFit.fill,
                                )),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'Ramen Noodless',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          Spacer(),
                          Text('300g', style: TextStyle(fontSize: 14, color: Colors.grey.shade600),),
                        ],
                      ),
                      SizedBox(height: 10,),
                      Divider(
                        height: 10,
                        color: Colors.grey.shade300,
                      ),

                      Row(
                        children: [
                          Container(
                            width: 60,
                            height: 60,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                image: DecorationImage(
                                  image: AssetImage(widget.food.image),
                                  fit: BoxFit.fill,
                                )),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'Ramen Noodless',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          Spacer(),
                          Text('300g', style: TextStyle(fontSize: 14, color: Colors.grey.shade600),),
                        ],
                      ),
                      SizedBox(height: 10,),
                      Divider(
                        height: 10,
                        color: Colors.grey.shade300,
                      ),

                      Row(
                        children: [
                          Container(
                            width: 60,
                            height: 60,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                image: DecorationImage(
                                  image: AssetImage(widget.food.image),
                                  fit: BoxFit.fill,
                                )),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'Ramen Noodless',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          Spacer(),
                          Text('300g', style: TextStyle(fontSize: 14, color: Colors.grey.shade600),),
                        ],
                      ),
                      SizedBox(height: 10,),
                      Divider(
                        height: 10,
                        color: Colors.grey.shade300,
                      ),

                      Row(
                        children: [
                          Container(
                            width: 60,
                            height: 60,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                image: DecorationImage(
                                  image: AssetImage(widget.food.image),
                                  fit: BoxFit.fill,
                                )),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'Ramen Noodless',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          Spacer(),
                          Text('300g', style: TextStyle(fontSize: 14, color: Colors.grey.shade600),),
                        ],
                      ),
                      SizedBox(height: 10,),
                      Divider(
                        height: 10,
                        color: Colors.grey.shade300,
                      ),

                    ],
                  ),
                  SizedBox(height: 10,),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
