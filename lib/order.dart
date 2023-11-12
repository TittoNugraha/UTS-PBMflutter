import 'package:flutter/material.dart';

import 'widget/harga_widget.dart';
import 'widget/trainer_widget.dart';
import 'package:custom_calender_picker/custom_calender_picker.dart';
import 'widget/time_widget.dart';

class OrderKu extends StatefulWidget {
  const OrderKu({super.key});

  @override
  State<OrderKu> createState() => _OrderKuState();
}

class _OrderKuState extends State<OrderKu> {
  int selectedDate = 19;

  List<DateTime> eachDateTime = [];
  DateTimeRange? rangeDateTime;

  List serviceSelected = <String>[];
  void handleSelectedServices(String name) {
    if (serviceSelected.contains(name)) {
      serviceSelected.remove(name);
    } else {
      serviceSelected.add(name);
    }
    setState(() {});
  }

  var selectedTrainer = 'Scottie Schefller';
  _selectTrainer(name) {
    setState(() {
      selectedTrainer = name;
    });
  }

  var selectedTime = '21.00';
  void _selectTime(time) {
    setState(() {
      selectedTime = time;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            icon: Icon(Icons.book),
            onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      actions: [
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: const Text('Close')
                          ),
                      ],
                      title: const Text('Booking Order'),
                      alignment: Alignment.topLeft,
                      contentPadding: const EdgeInsets.all(20.0),
                      content: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                        Text('Tanggal : 25 November 2023'),
                        Text('Paket : Driving, w/ Trainer'),
                        Text('Trainer : Patrick Cantlay'),
                        Text('Jam : 19.00'),
                      ]),
                    ));
                })],
        elevation: 0.0,
        title: const Text(
          'BOOKING',
          style: TextStyle(
            fontSize: 18.0,
            color: Colors.black,
          ),
        ),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          Column(
            children: [
              Column(
                children: [
                  ElevatedButton(
                    onPressed: () async {
                      var result = await showDialog(
                        context: context,
                        builder: (context) => Dialog(
                          insetPadding: const EdgeInsets.symmetric(
                            horizontal: 20,
                          ),
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(20),
                            ),
                          ),
                          child: CustomCalenderPicker(
                            returnDateType: ReturnDateType.list,
                            initialDateList: eachDateTime,
                            calenderThema: CalenderThema.white,
                          ),
                        ),
                      );
                      if (result != null) {
                        if (result is List<DateTime>) {
                          setState(() {
                            eachDateTime.clear();
                            eachDateTime.addAll(result);
                          });
                        }
                      }
                    },
                    child: const Text(
                      'Select Booking Date',
                      style: TextStyle(
                        color: Color.fromARGB(255, 48, 48, 230),
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                    ),
                  ),
                  ...List.generate(
                    eachDateTime.length,
                    (index) => Text(
                      eachDateTime[index].toString().substring(0, 10),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 23.0,
              ),
              Container(height: 7, color: Colors.grey),
              const SizedBox(
                height: 24.0,
              ),
              Center(
                child: Text(
                  'ROYAL GOLF DRIVING RANGE',
                  style: TextStyle(
                    letterSpacing: 1.0,
                    fontSize: 26.0,
                    color: Colors.black.withOpacity(0.6),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 9.0),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Wrap(
                  alignment: WrapAlignment.center,
                  children: [
                    ServiceWidget(
                      name: 'Driving',
                      price: '225.000/2hr',
                      tapHandler: handleSelectedServices,
                      isSelected: serviceSelected.contains('Driving'),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    ServiceWidget(
                      name: 'Golf Stick Rent',
                      price: '50.000-500.000/pcs',
                      tapHandler: handleSelectedServices,
                      isSelected: serviceSelected.contains('Golf Stick Rent'),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    const SizedBox(width: 15.0),
                    ServiceWidget(
                      name: 'w/ Trainer',
                      price: '175.000/2hr',
                      tapHandler: handleSelectedServices,
                      isSelected: serviceSelected.contains('w/ Trainer'),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 15.0),
              SizedBox(
                  height: 178.0,
                  child: ListView(
                    padding: const EdgeInsets.only(left: 15.0, right: 15.0),
                    scrollDirection: Axis.horizontal,
                    children: [
                      TrainerWidget(
                        imgPath: 'assets/scottie_scheffler2.jpg',
                        name: 'Scottie Scheffler',
                        tapHandler: _selectTrainer,
                        isSelected: selectedTrainer == 'Scottie Scheffler',
                      ),
                      const SizedBox(width: 15.0),
                      TrainerWidget(
                        imgPath: 'assets/rory_mcIlroy.jpeg',
                        name: 'Rory Mcilroy',
                        tapHandler: _selectTrainer,
                        isSelected: selectedTrainer == 'Rory Mcilroy',
                      ),
                      const SizedBox(width: 15.0),
                      TrainerWidget(
                        imgPath: 'assets/jon_rahm.jpeg',
                        name: 'Jon Rahm',
                        tapHandler: _selectTrainer,
                        isSelected: selectedTrainer == 'Jon Rahm',
                      ),
                      const SizedBox(width: 15.0),
                      TrainerWidget(
                        imgPath: 'assets/viktor_hovland.jpg',
                        name: 'Viktor Hovland',
                        tapHandler: _selectTrainer,
                        isSelected: selectedTrainer == 'Viktor Hovland',
                      ),
                      const SizedBox(width: 15.0),
                      TrainerWidget(
                        imgPath: 'assets/patrick_cantlay.jpg',
                        name: 'Patrick Cantlay',
                        tapHandler: _selectTrainer,
                        isSelected: selectedTrainer == 'Patrick Cantlay',
                      ),
                      const SizedBox(width: 15.0),
                    ],
                  ),
                ),
              const SizedBox(height: 15.0),
              SizedBox(
                height: 110.0,
                child: Wrap(
                  spacing: 5,
                  alignment: WrapAlignment.end,
                  runSpacing: 10,
                  children: [
                    const SizedBox(width: 25.0),
                    TimeWidget(
                      time: '11.00',
                      tapHandler: _selectTime,
                      isSelected: selectedTime == '11.00',
                    ),
                    const SizedBox(width: 25.0),
                    TimeWidget(
                      time: '13.00',
                      tapHandler: _selectTime,
                      isSelected: selectedTime == '13.00',
                    ),
                    const SizedBox(width: 25.0),
                    TimeWidget(
                      time: '15.00',
                      tapHandler: _selectTime,
                      isSelected: selectedTime == '15.00',
                    ),
                    const SizedBox(width: 25.0),
                    TimeWidget(
                      time: '17.00',
                      tapHandler: _selectTime,
                      isSelected: selectedTime == '17.00',
                    ),
                    const SizedBox(width: 25.0),
                    TimeWidget(
                      time: '19.00',
                      tapHandler: _selectTime,
                      isSelected: selectedTime == '19.00',
                    ),
                    const SizedBox(width: 25.0),
                    TimeWidget(
                      time: '21.00',
                      tapHandler: _selectTime,
                      isSelected: selectedTime == '21.00',
                    ),
                    const SizedBox(width: 25.0),
                  ],
                ),
              ),
              SizedBox(
                height: 20),
              ElevatedButton(
                child: const Text(
                  'Book Order',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  primary: Color.fromARGB(255, 48, 48, 230),
                ),
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      actions: [
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: const Text('Close')
                          ),
                      ],
                      title: const Text('Booking'),
                      contentPadding: const EdgeInsets.all(20.0),
                      content: const Text('Your booking has been confirmed'),
                    ),
                  );
                },
              ),
              const SizedBox(height: 25),
            ],
          ),
      ]),
    );
  }
}
