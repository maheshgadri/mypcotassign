import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DashboardScreen extends StatefulWidget {
  @override
  _DashboardScreenState createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: SvgPicture.asset(
            'assets/menu1.svg', // Path to your SVG asset
            width: 35,
            height:35,
          // Set the color if needed
          ),
          onPressed: () {
            // Define the action to be taken when the menu icon is pressed
          },
        ),

        // title: Text('Welcome, Mypcot !!'),
        actions: [
          IconButton(
            icon: SvgPicture.asset(
              'assets/like.svg', // Path to your SVG asset for notifications
              width: 35,
              height: 35,
              // color: Color(0xFF2C3D63), // Set the color if needed
            ),
            onPressed: () {
              // Define the action to be taken when the like icon is pressed
            },
          ),
          IconButton(
            icon: SvgPicture.asset(
              'assets/noti.svg', // Path to your SVG asset for notifications
              width: 35,
              height: 35,
              // color: Color(0xFF2C3D63), // Set the color if needed
            ),
            onPressed: () {
              // Define the action to be taken when the notification icon is pressed
            },
          ),
          IconButton(
            icon: SvgPicture.asset(
              'assets/customers.svg', // Path to your SVG asset for profile
              width: 35,
              height: 35,
              // color: Color(0xFF2C3D63), // Set the color if needed
            ),
            onPressed: () {
              // Define the action to be taken when the profile icon is pressed
            },
          ),
        ],


      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              DashboardHeader(),
              SizedBox(height: 16),
              OrderSection(),
              SizedBox(height: 16),
              TimelineSection(),
              SizedBox(height: 60),
              NewOrderSection(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        selectedItemColor: Color(0xFF2C3D63),
        unselectedItemColor: Colors.grey,
        selectedLabelStyle: TextStyle(
          fontWeight: FontWeight.bold,
          color:  Color(0xFF2C3D63),
        ),
        unselectedLabelStyle: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.grey,
        ),
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/home.svg',
              width: 24,
              height: 24,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/customers.svg',
              width: 24,
              height: 24,
            ),
            label: 'Customers',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/khata.svg',
              width: 24,
              height: 24,
            ),
            label: 'Khata',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/orders.svg',
              width: 24,
              height: 24,
            ),
            label: 'Orders',
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Define the action to be taken when the FAB is pressed
        },
        child: Icon(Icons.add,color: Colors.white),
        shape: CircleBorder(),
        backgroundColor: Color(0xFF2C3D63),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}



class DashboardHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Welcome, Mypcot !!',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'here is your dashboard....',
              style: TextStyle(
                fontSize: 12,
                color: Colors.grey,
              ),
            ),
          ],
        ),
        Material(
          color: Colors.transparent, // To ensure the ripple effect is visible
          child: InkWell(
            borderRadius: BorderRadius.circular(22), // Half of width and height to make the ripple circle-shaped
            onTap: () {
              // Define the action when the search icon is pressed
              print('Search icon clicked');
            },
            child: Container(
              width: 44,
              height: 44,
              child: SvgPicture.asset(
                'assets/search.svg',
                width: 44,
                height: 44,
              ),
            ),
          ),
        ),
      ],
    );
  }
}




class OrderSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      // width: 450,
      height: 300, // Adjust the height according to your need
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            OrderCard1(), // First card
            OrderCard2(), // Second card
            OrderCard3(), // Third card
          ],
        ),
      ),
    );
  }
}

class OrderCard1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Color(0xFF33A1CC),
      margin: EdgeInsets.all(10),
      child: Container(
        width: 300, // Adjust the width as needed
        height: 400,
        child: Row(
          children: [
            // Expanded(
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: SizedBox(
                      width: 100,
                      height: 100,
                      child: SvgPicture.asset(
                        'assets/orders-illustration-image.svg', // Replace with your SVG asset path
                        // color: Colors.black, // Change the color as needed
                      ),
                    ),
                  ),

                  SizedBox(
                    width: 130, // Set your desired width here
                    height: 30, // Set your desired height here
                    child: Padding(
                      padding: EdgeInsets.only(left: 16.0), // Add padding from the start (left) here
                      child: ElevatedButton(
                        onPressed: () {
                          // Add your order button onPressed functionality here
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Colors.orange,
                        ),
                        child: Text(
                          'Orders',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  )

                ],
              ),
            // ),
            // New Card for active orders
            Column(
              children: [
                Card(
                  color: Color(0xFFFE804E),
                  child: Container(
                    width: 150, // Adjust the width as needed
                    height: 80, // Adjust the height as needed
                    child: Center(
                      child: Text(
                        style: TextStyle(color: Colors.white),
                        'You have 3 active orders from',
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
                Card(
                  color: Colors.white,
                  child: Container(
                    width: 80, // Adjust the width as needed
                    height: 80, // Adjust the height as needed
                    child: Center(
                      child: Text(
                        '2 pending orders from',
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            // New Card for pending orders

          ],
        ),
      ),
    );
  }
}






class OrderCard2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Color(0xFFDCB223),
      margin: EdgeInsets.all(10),
      child: Container(
        width: 300, // Adjust the width as needed
        height: 400,
        child: Row(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: SizedBox(
                    width: 100,
                    height: 100,
                    child: SvgPicture.asset(
                      'assets/subscriptions-illustration-image.svg', // Replace with your SVG asset path
                      // color: Colors.black, // Change the color as needed
                    ),
                  ),
                ),
                SizedBox(
                  width: 150, // Set your desired width here
                  height: 30, // Set your desired height here
                  child: Padding(
                    padding: EdgeInsets.only(left: 16.0), // Add padding from the start (left) here
                    child: ElevatedButton(
                      onPressed: () {
                        // Add your order button onPressed functionality here
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Color(0xFF234DDC),
                      ),
                      child: Text(
                        'Subscription',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                )
              ],
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Card(
                      color: Color(0xFF234DDC),
                      child: Container(
                        width: 120, // Adjust the width as needed
                        height: 70, // Adjust the height as needed
                        child: Center(
                          child: Text(
                            style: TextStyle(color: Colors.white),
                            '03 deliveries',
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 10), // Add spacing between cards
                    Card(
                      color: Colors.white,
                      child: Container(
                        width: 100, // Adjust the width as needed
                        height: 50, // Adjust the height as needed
                        child: Center(
                          child: Text(
                            '10 Active Subscriptions',
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 10), // Add spacing between cards
                    Card(
                      color: Colors.white,
                      child: Container(
                        width: 120, // Adjust the width as needed
                        height: 80, // Adjust the height as needed
                        child: Center(
                          child: Text(
                            '119 pending deliveries',
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
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




class OrderCard3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Color(0xFF31CE95),
      margin: EdgeInsets.all(10),
      child: Container(
        width: 300, // Adjust the width as needed
        height: 400,
        child: Row(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: SizedBox(
                    width: 100,
                    height: 100,
                    child: SvgPicture.asset(
                      'assets/customers-illustration-image.svg', // Replace with your SVG asset path
                      // color: Colors.black, // Change the color as needed
                    ),
                  ),
                ),
                SizedBox(
                  width: 180, // Set your desired width here
                  height: 30, // Set your desired height here
                  child: Padding(
                    padding: EdgeInsets.only(left: 16.0), // Add padding from the start (left) here
                    child: ElevatedButton(
                      onPressed: () {
                        // Add your order button onPressed functionality here
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Color(0xFFCE316A),
                      ),
                      child: Text(
                        'View Customers',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                )
              ],
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Card(
                      color: Color(0xFF234DDC),
                      child: Container(
                        width: 120, // Adjust the width as needed
                        height: 70, // Adjust the height as needed
                        child: Center(
                          child: Text(
                            style: TextStyle(color: Colors.white),
                            '15 New Customers',
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 10), // Add spacing between cards
                    Card(
                      color: Colors.white,
                      child: Container(
                        width: 100, // Adjust the width as needed
                        height: 50, // Adjust the height as needed
                        child: Center(
                          child: Text(
                            '1.8%',
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 10), // Add spacing between cards
                    Card(
                      color: Colors.white,
                      child: Container(
                        width: 120, // Adjust the width as needed
                        height: 80, // Adjust the height as needed
                        child: Center(
                          child: Text(
                            '10 Active Customers',
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
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



// class OrdersSection extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       // padding: EdgeInsets.all(16),
//       decoration: BoxDecoration(
//         color: Colors.white10,
//         // borderRadius: BorderRadius.circular(16),
//       ),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Center(
//             // child: Text(
//             //   'Orders',
//             //   style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),
//             // ),
//           ),
//           SizedBox(height: 16),
//           Container(
//             height: 200, // Set a fixed height for the ListView
//             child: ListView(
//               scrollDirection: Axis.horizontal,
//               children: [
//                 buildOrderCard(
//                   color: Color(0xFF33A1CC),
//                   title: 'You have 3 active\norders from',
//                   userImages: [
//                     'assets/user1.png',
//                     'assets/user2.png',
//                     'assets/user3.png',
//                   ],
//                   active: true,
//                   svgImage: 'assets/orders-illustration1.svg', // Path to the SVG image
//                 ),
//                 SizedBox(width: 16),
//                 buildOrderCard(
//                   color: Color(0xFFDCB223),
//                   title: '02 Pending\nOrders from',
//                   userImages: [
//                     'assets/user4.png',
//                     'assets/user5.png',
//                   ],
//                   active: false,
//                   svgImage: 'assets/orders-illustration2.svg', // Path to the SVG image
//                 ),
//                 SizedBox(width: 16),
//                 buildOrderCard(
//                   color: Color(0xFF31CE95),
//                   title: 'You have 1 new\norder from',
//                   userImages: [
//                     'assets/user6.png',
//                   ],
//                   active: true,
//                   svgImage: 'assets/orders-illustration3.svg', // Path to the SVG image
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
//
//   Widget buildOrderCard({
//     required Color color,
//     required String title,
//     required List<String> userImages,
//     required bool active,
//     required String svgImage, // Path to the SVG image
//   }) {
//     return Container(
//       width: 150,
//       padding: EdgeInsets.all(8),
//       decoration: BoxDecoration(
//         color: color, // Use the color parameter directly
//         borderRadius: BorderRadius.circular(16),
//       ),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           SvgPicture.asset(
//             svgImage,
//             height: 60,
//             width: 60,
//           ),
//           SizedBox(height: 8),
//           Text(
//             title,
//             style: TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.bold),
//           ),
//           SizedBox(height: 8),
//           Row(
//             children: userImages.map((image) {
//               return Container(
//                 margin: EdgeInsets.only(right: 4),
//                 width: 40,
//                 height: 40,
//                 decoration: BoxDecoration(
//                   shape: BoxShape.circle,
//                   image: DecorationImage(
//                     image: AssetImage(image),
//                     fit: BoxFit.cover,
//                   ),
//                 ),
//               );
//             }).toList(),
//           ),
//           Spacer(), // This pushes the button to the bottom
//           TextButton(
//             onPressed: () {
//               // Add your onPressed code here!
//             },
//             style: TextButton.styleFrom(
//               backgroundColor: Colors.orange,
//               primary: Colors.white,
//               shape: RoundedRectangleBorder(
//                 borderRadius: BorderRadius.circular(8),
//               ),
//             ),
//             child: Text('Order'),
//           ),
//         ],
//       ),
//     );
//   }
// }




class TimelineSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'January, 23 2021',
          style: TextStyle(fontSize: 10.0), // Reduced font size
        ),
        Expanded(
          child: Align(
            alignment: Alignment.centerRight,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Text(
                          'TIMELINE',
                          style: TextStyle(fontSize: 10.0), // Reduced font size
                        ),
                        Icon(Icons.arrow_drop_down),
                      ],
                    ),
                  ),
                ),
                SizedBox(width: 8), // Add some spacing between the cards
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        SvgPicture.asset(
                          'assets/calender.svg',
                          width: 20.0,
                          height: 20.0,
                        ),
                        SizedBox(width: 8), // Add some spacing between the icon and the text
                        Text(
                          'JAN, 2021',
                          style: TextStyle(fontSize: 10.0), // Reduced font size
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}





class NewOrderSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 1,
            blurRadius: 5,
          ),
        ],
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min, // Ensure the column takes the minimum required space
              children: [
                Text(
                  'New order created',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.normal,
                    color: Color(0xFF2C3D63),
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  'New Order created with Order',
                  style: TextStyle(fontSize: 12, color: Colors.black),
                ),
                SizedBox(height: 18),
                Text(
                  '09:00 AM',
                  style: TextStyle(fontSize: 12, color: Color(0xFFFF8C00),),
                ),
                SizedBox(height: 10), // Add some space between the text and the icon
                Image.asset(
                  'assets/back.png', // Path to your PNG file
                  width: 24,
                  height: 24,
                ),
              ],
            ),
          ),
          SizedBox(width: 16), // Added a SizedBox for spacing
          Container(
            width: 74,
            height: 74,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Color(0xFFFF8C00), // Set the color to #343434
            ),
            child: Center(
              child: SvgPicture.asset(
                'assets/new_order.svg',
                width: 36, // Adjust the size of the SVG icon to fit within the circular container
                height: 36, // Adjust the size of the SVG icon to fit within the circular container
                color: Colors.white, // Set the color of the SVG icon
              ),
            ),
          ),
        ],
      ),
    );
  }
}

