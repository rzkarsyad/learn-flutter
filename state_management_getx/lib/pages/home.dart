import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:state_management_getx/controllers/home_controller.dart';

class Home extends StatelessWidget {
  final homeC = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // ----------- Reactive -----------
            Obx(
              () => Text(
                '${homeC.dataPantau}',
                style: TextStyle(fontSize: 56),
              ),
            ),
            // ----------- SIMPLE -----------
            // GetBuilder<HomeController>(
            //   builder: (controller) => Text(
            //     '${controller.dataPantau}',
            //     style: TextStyle(fontSize: 56),
            //   ),
            // ),
            SizedBox(height: 24),
            ElevatedButton(
                onPressed: () {
                  homeC.tambahData();
                },
                child: Text('Tambah')),
            SizedBox(height: 24),
            ElevatedButton(
              onPressed: () {
                homeC.refreshTampilan();
              },
              child: Text(
                'Refresh Tampilan',
              ),
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.amber, foregroundColor: Colors.black),
            )
          ],
        ),
      ),
    );
  }
}
