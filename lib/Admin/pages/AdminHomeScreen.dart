import 'package:capstone2/Admin/pages/AddBusRouteScreen.dart';
import 'package:capstone2/Admin/pages/MarkTripCompletedScreen.dart';
import 'package:capstone2/Admin/pages/ScanQRScreen.dart';
import 'package:capstone2/Admin/pages/ViewBookingsScreen.dart';
import 'package:flutter/material.dart';

class AdminHomeScreen extends StatelessWidget {
  const AdminHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Admin Dashboard'),
        backgroundColor: Colors.blue,
      ),
      body: Padding(padding: EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ElevatedButton(
              onPressed:(){
            Navigator.push(context,
                MaterialPageRoute(
                    builder: (context) => AddBusRouteScreen()
                )
            );
          },
            child: Text('Add Bus Route'),
          ),
          SizedBox(height: 16),
          ElevatedButton(
              onPressed: (){
            Navigator.push(context,
                MaterialPageRoute(
                    builder: (context) => ViewBookingsScreen()
                )
            );
          },
            child: Text('View Bookings'),
          ),
          SizedBox(height: 16),
          ElevatedButton(
              onPressed: (){
                Navigator.push(
                    context, MaterialPageRoute(
                    builder: (context) => ScanQRScreen()
                )
                );
              },
            child: Text('Scan QR Code'),
              ),
          SizedBox(height: 16.0),
          ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(
                    builder: (context) => MarkTripCompletedScreen()
                )
                );
              },
          child: Text('Mark Trip Completed'),
          )
        ],
      ),
      ),
    );
  }
}
