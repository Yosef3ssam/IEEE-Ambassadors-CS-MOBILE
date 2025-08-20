import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Recipe App',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Stack(
          fit: StackFit.expand,
          children: [
            // Background image
            Image.asset(
              'TaskPhoto.jpg',
              fit: BoxFit.cover,
            ),

            // Draggable bottom sheet
            DraggableScrollableSheet(
              initialChildSize: 0.35,
              minChildSize: 0.1,
              maxChildSize: 0.9,
              builder: (BuildContext context, ScrollController scrollController) {
                return Container(
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
                    boxShadow: [
                      BoxShadow(blurRadius: 12, color: Colors.black26),
                    ],
                  ),
                  child: ListView(
                    controller: scrollController,
                    padding: const EdgeInsets.all(16),
                    children: [
                      const SizedBox(height: 8),
                      GestureDetector(
                        behavior: HitTestBehavior.translucent,
                        onVerticalDragUpdate: (details) {
                          scrollController.jumpTo(
                            scrollController.offset - details.delta.dy,
                          );
                        },
                        child: const _GrabHandle(),
                      ),
                      const SizedBox(height: 16),

                      // Title + rating
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            padding: const EdgeInsets.all(12),
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 68, 255, 227)
                                  .withOpacity(0.2),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Column(
                              children: const [
                                Icon(Icons.alarm, color: Colors.blue),
                                SizedBox(height: 10),
                                Text(
                                  '3h 30min',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      color: Colors.blue),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.all(12),
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 68, 255, 227)
                                  .withOpacity(0.2),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Column(
                              children: const [
                                Icon(Icons.person, color: Colors.blue),
                                SizedBox(height: 10),
                                Text(
                                  'Serves 4',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      color: Colors.blue),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.all(12),
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 68, 255, 227)
                                  .withOpacity(0.2),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Column(
                              children: const [
                                Icon(Icons.restaurant_outlined,
                                    color: Colors.blue),
                                SizedBox(height: 10),
                                Text(
                                  'Dinner',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      color: Colors.blue),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Row(children: [
                      const SizedBox(height: 20),

                      const Text(
                        'Ingredients',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                          
                        ),
                        
                      ),
                      const SizedBox(width: 20),
                      Icon(Icons.shopping_cart, color: Colors.blue,)
                      ],),
                      SizedBox(height: 20,),
                      
                      Column(
  crossAxisAlignment: CrossAxisAlignment.start,
  children: [
    Text(
      'For Chicken Dashi',
      style: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.bold,
      ),
    ),
    const SizedBox(width: 20),
    Text('8 Cups                     Low sodium chicken broth'),
    Text('16                          Dried Shiitake mushrooms'),
    Text('30 g                        Kombu (about 10" square piece)'),
    Text('20 g                        Dried Bonito flakes'),
  ],
)

                      ,

                      

                      Column(
  crossAxisAlignment: CrossAxisAlignment.start,
  children: [
    Text(
      'For Tare and Chashu',
      style: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.bold,
      ),
    ),
    const SizedBox(width: 800),
    Text('1                                   1/4 Cups  Low sodium soy sauce'),
    Text('1                                   1/4 Cups  Mirin'),
    Text('1/2 Cup                             Sake'),
    Text('1 1/2 Cups                          Water'), // sorry ran out of time ;D
    // next time i'll set it up properly with rows and columns.
  ],
)


                      
                    ],
                  ),
                );
              },
            ),

            // Top icons
            Positioned(
              top: 5,
              left: 5,
              right: 5,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Icon(Icons.backspace, size: 30, color: Colors.white),
                    Row(
                      children: const [
                        Icon(Icons.bookmark, size: 30, color: Colors.white),
                        SizedBox(width: 16),
                        Icon(Icons.share, size: 30, color: Colors.white),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _GrabHandle extends StatelessWidget {
  const _GrabHandle();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 40,
        height: 4,
        decoration: BoxDecoration(
          color: Colors.black26,
          borderRadius: BorderRadius.circular(2),
        ),
      ),
    );
  }
}
