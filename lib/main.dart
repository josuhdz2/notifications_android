import 'package:flutter/material.dart';
import 'package:notifications/notificationService.dart';
void main() async
{
  WidgetsFlutterBinding.ensureInitialized();
  await initNotifications();
  runApp
  (
   const MaterialApp
   (
    debugShowCheckedModeBanner: false,
     home: MyApp()
   )
  );
}
class MyApp extends StatefulWidget
{
  const MyApp({ Key? key }) : super(key: key);
  @override
  State<MyApp> createState() => _MyAppState();
}
class _MyAppState extends State<MyApp>
{
  TextEditingController controlNotificacion=TextEditingController();
  @override
  Widget build(BuildContext context)
  {
    return Scaffold
    (
      appBar: AppBar
      (
        title:const Text("Notifications App"),
      ),
      body: Center
      (
        child: Column
        (
          mainAxisAlignment: MainAxisAlignment.center,
          children:
          [
            const Text
            (
              "Ingresa el texto al que deseas enviar la notificacion",
              style: TextStyle
              (
                fontSize: 20,
                fontWeight: FontWeight.bold
              ),
              textAlign: TextAlign.center,
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: TextFormField
              (
                controller: controlNotificacion,
              ),
            ),
            ElevatedButton
            (
              onPressed:()
              {
                lanzarNotificacion(controlNotificacion.text);
                controlNotificacion.text='';
              },
              child: const Text("Enviar texto")
            )
          ],
        ),
      ),
    );
  }
}