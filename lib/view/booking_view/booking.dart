// import 'package:barber_app/utils/imports.dart';

// class AppointmentBooking extends StatefulWidget {
//   const AppointmentBooking({super.key});

//   @override
//   _AppointmentBookingState createState() => _AppointmentBookingState();
// }

// class _AppointmentBookingState extends State<AppointmentBooking> {
//   DateTime selectedDate = DateTime.now();
//   String selectedTime = "";
//   String selectedSpecialist = "";

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("Book Appointment"),
//       ),
//       body: Row(
//         children: [
//           Expanded(
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 // Date selection
//                 DropdownButton<DateTime>(
//                   value: selectedDate,
//                   items: [
//                     DropdownMenuItem<DateTime>(
//                       value: DateTime(2024, 12),
//                       child: const Text("December 2024"),
//                     ),
//                   ],
//                   onChanged: (value) {
//                     setState(() {
//                       selectedDate = value!;
//                     });
//                   },
//                 ),
//                 // Calendar
//                 GridView.count(
//                   shrinkWrap: true,
//                   crossAxisCount: 7,
//                   children: List.generate(
//                     DateTime(2024, 12, 31).difference(DateTime(2024, 12, 1)).inDays +
//                         1,
//                     (index) => TextButton(
//                       onPressed: () {
//                         setState(() {
//                           selectedDate = DateTime(2024, 12, 1 + index);
//                         });
//                       },
//                       child: Text(
//                         (DateTime(2024, 12, 1), Duration(days: index)).toString(),
//                       ),
//                     ),
//                   ),
//                 ),
//                 // Time selection
//                 const Text("Select Hours"),
//                 TextButton(
//                   onPressed: () {
//                     // Handle see all button press
//                   },
//                   child: const Text("See All"),
//                 ),
//                 ListView(
//                   shrinkWrap: true,
//                   children: [
//                     TextButton(
//                       onPressed: () {
//                         setState(() {
//                           selectedTime = "09:00";
//                         });
//                       },
//                       child: const Text("09:00"),
//                     ),
//                     TextButton(
//                       onPressed: () {
//                         setState(() {
//                           selectedTime = "10:00";
//                         });
//                       },
//                       child: const Text("10:00"),
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//           ),
//           SizedBox(
//             width: 100,
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 const Text("Select Specialist"),
//                 TextButton(
//                   onPressed: () {
//                     // Handle see all button press
//                   },
//                   child: const Text("See All"),
//                 ),
//                 ListView(
//                   shrinkWrap: true,
//                   children: [
//                     ListTile(
//                       title: const Text("Nathan"),
//                       subtitle: const Text("Sr. Barber"),
//                       onTap: () {
//                         setState(() {
//                           selectedSpecialist = "Nathan";
//                         });
//                       },
//                     ),
//                     ListTile(
//                       title: const Text("Jenny"),
//                       subtitle: const Text("Hair Stylist"),
//                       onTap: () {
//                         setState(() {
//                           selectedSpecialist = "Jenny";
//                         });
//                       },
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

class AppointmentBooking extends StatefulWidget {
  const AppointmentBooking({super.key});

  @override
  _AppointmentBookingState createState() => _AppointmentBookingState();
}

class _AppointmentBookingState extends State<AppointmentBooking> {
  DateTime selectedDate =
      DateTime(2024, 12, 1); // Initializing with a valid date
  String selectedTime = "";
  String selectedSpecialist = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Book Appointment"),
      ),
      body: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Date selection
                DropdownButton<DateTime>(
                  value: selectedDate,
                  items: [
                    DropdownMenuItem<DateTime>(
                      value: DateTime(2024, 12, 1),
                      child: const Text("December 1, 2024"),
                    ),
                    DropdownMenuItem<DateTime>(
                      value: DateTime(2024, 12, 2),
                      child: const Text("December 2, 2024"),
                    ),
                    // Add more items as needed
                  ],
                  onChanged: (value) {
                    setState(() {
                      selectedDate = value!;
                    });
                  },
                ),
                // Calendar
                GridView.count(
                  shrinkWrap: true,
                  crossAxisCount: 7,
                  children: List.generate(
                    DateTime(2024, 12, 31)
                            .difference(DateTime(2024, 12, 1))
                            .inDays +
                        1,
                    (index) {
                      DateTime date =
                          DateTime(2024, 12, 1).add(Duration(days: index));
                      return TextButton(
                        onPressed: () {
                          setState(() {
                            selectedDate = date;
                          });
                        },
                        child: Text(date.day.toString()),
                      );
                    },
                  ),
                ),
                // Time selection
                const Text("Select Hours"),
                TextButton(
                  onPressed: () {
                    // Handle see all button press
                  },
                  child: const Text("See All"),
                ),
                ListView(
                  shrinkWrap: true,
                  children: [
                    TextButton(
                      onPressed: () {
                        setState(() {
                          selectedTime = "09:00";
                        });
                      },
                      child: const Text("09:00"),
                    ),
                    TextButton(
                      onPressed: () {
                        setState(() {
                          selectedTime = "10:00";
                        });
                      },
                      child: const Text("10:00"),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            width: 100,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text("Select Specialist"),
                TextButton(
                  onPressed: () {
                    // Handle see all button press
                  },
                  child: const Text("See All"),
                ),
                ListView(
                  shrinkWrap: true,
                  children: [
                    ListTile(
                      title: const Text("Nathan"),
                      subtitle: const Text("Sr. Barber"),
                      onTap: () {
                        setState(() {
                          selectedSpecialist = "Nathan";
                        });
                      },
                    ),
                    ListTile(
                      title: const Text("Jenny"),
                      subtitle: const Text("Hair Stylist"),
                      onTap: () {
                        setState(() {
                          selectedSpecialist = "Jenny";
                        });
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
