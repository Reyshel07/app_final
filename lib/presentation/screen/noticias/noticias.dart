import 'package:app_final/presentation/providers/noti_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
 
class NotiScreen extends StatelessWidget {
  static const path = '/NotiScreen';
  static const name = 'NotiScreen';
  const NotiScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final resNoti = Provider.of<ProviderNoti>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Noticias',style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),),
        backgroundColor: Colors.red,
      ),
      body: Expanded(
        child: ListView.builder(
          itemCount: resNoti.allResul.length,
          itemBuilder: (BuildContext context, int index) {
            final infoNoti = resNoti.allResul[index];
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                elevation: 5,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRRect(
                      borderRadius: const BorderRadius.vertical(top: Radius.circular(10)),
                      child: Image.network(
                       infoNoti.imageUrl??'',
                        width: double.infinity,
                        height: 200,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            infoNoti.title,
                            style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 8),
                          Text(
                            infoNoti.description??'',
                            style: const TextStyle(
                              fontSize: 14,
                              color: Colors.grey,
                            ),
                            maxLines: 3,
                            overflow: TextOverflow.ellipsis,
                          ),
                          const SizedBox(height: 8),
                          TextButton(
                            onPressed: () {
                              
                            },
                            child: const Text('Leer más'),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          }
        ),
      )
    );
  }
}
