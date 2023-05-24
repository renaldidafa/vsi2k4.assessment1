import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final ValueNotifier<bool?> selectedVehicle = ValueNotifier(null);
  final ValueNotifier<bool> is12HoursSelected = ValueNotifier(false);
  final ValueNotifier<bool> is18HoursSelected = ValueNotifier(false);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('DPPB'),
        ),
        body: Column(
          children: [
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                  color: Colors.black,
                  width: 2,
                ),
              ),
              child: const TextField(
                decoration: InputDecoration(
                  hintText: 'Nama',
                  hintStyle: TextStyle(
                    color: Colors.black,
                  ),
                  border: InputBorder.none,
                ),
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                ),
              ),
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        color: Colors.black,
                        width: 2,
                      ),
                    ),
                    child: const TextField(
                      decoration: InputDecoration(
                        hintText: 'Prodi',
                        hintStyle: TextStyle(
                          color: Colors.black,
                        ),
                        border: InputBorder.none,
                      ),
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        color: Colors.black,
                        width: 2,
                      ),
                    ),
                    child: const TextField(
                      decoration: InputDecoration(
                        hintText: 'Fakultas',
                        hintStyle: TextStyle(
                          color: Colors.black,
                        ),
                        border: InputBorder.none,
                      ),
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 16),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                  color: Colors.black,
                  width: 2,
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Keperluan Peminjaman Kendaraan',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    'Jenis Kendaraan',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                    ),
                  ),
                  Row(
                    children: [
                      Checkbox(
                        value: selectedVehicle.value == true,
                        onChanged: (selected) {
                          selectedVehicle.value = selected;
                        },
                      ),
                      const Text(
                        'Avanza/Xenia',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                        ),
                      ),
                      Checkbox(
                        value: selectedVehicle.value == false,
                        onChanged: (selected) {
                          selectedVehicle.value = selected;
                        },
                      ),
                      const Text(
                        'Elf',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    'Durasi Peminjaman',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                    ),
                  ),
                  Row(
                    children: [
                      Checkbox(
                        value: is12HoursSelected.value,
                        onChanged: (selected) {
                          is12HoursSelected.value = selected ?? false;
                          is18HoursSelected.value = !(selected ?? false);
                        },
                      ),
                      const Text(
                        '12 Jam',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                        ),
                      ),
                      Checkbox(
                        value: is18HoursSelected.value,
                        onChanged: (selected) {
                          is18HoursSelected.value = selected ?? false;
                          is12HoursSelected.value = !(selected ?? false);
                        },
                      ),
                      const Text(
                        '18 Jam',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                // Perform submit logic here
              },
              child: const Text('Submit'),
            ),
          ],
        ),
      ),
    );
  }
}
