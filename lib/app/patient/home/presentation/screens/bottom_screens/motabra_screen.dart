import 'package:flutter/material.dart';

class MotabraScreen extends StatelessWidget {
  const MotabraScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: const Text(
          "المتبرع",
          style: TextStyle(
            fontSize: 20,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back, color: Colors.black),
        ),
      ),
      body: SafeArea(
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/motabra.jpg"),
              fit: BoxFit.cover,
            ),
          ),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 30),
                  const Text(
                    'فارمازول',
                    style: TextStyle(color: Colors.white, fontSize: 40),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    'يدعم التبرع بالادوية والمساعدة اللازمة لذوي الحاجه وبصورة مجانية كاملة',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    'ساهم مع فارمازول واتبرع بالعلاج عند عدم الحوجة من خلال الاسفل :',
                    textDirection: TextDirection.rtl,

                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  ),
                  const SizedBox(height: 80),
                  MaterialButton(
                    onPressed: () {},
                    shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20.0))),
                    elevation: 0.0,
                    minWidth: 200.0,
                    height: 80,
                    color: Colors.grey[200]!.withOpacity(0.6),
                    child: const Text(
                      'متبرع',
                      style: TextStyle(
                        fontSize: 25,
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  const SizedBox(height: 50),
                  MaterialButton(
                    onPressed: () {},
                    shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20.0))),
                    elevation: 0.0,
                    minWidth: 200.0,
                    height: 80,
                    color: Colors.grey[200]!.withOpacity(0.6),
                    child: const Text(
                      'ذوي الحاجة',
                      style: TextStyle(
                        fontSize: 25,
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),

                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
//         Image.asset('assets/images/motabra.jpg', height: double.infinity, width: double.infinity),
