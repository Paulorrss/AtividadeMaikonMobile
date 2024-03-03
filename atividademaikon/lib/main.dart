import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

// Obrigado comunidade da Rocketseat por ajudar no código pelo Discord
// a estrelinha de favoritar ela muda de formato, de marcado para desmarcado

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cidades de Rondônia',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool isFavorite = false; // state
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Cidades de Rondônia',
          style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
        ),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Image.network(
              'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/09/cd/7c/8b/rio-ji-parana.jpg?w=700&h=-1&s=1',
              fit: BoxFit.cover,
              height: 280,
            ),
            Container(
              padding: const EdgeInsets.all(1.0),
              child: Card(
                child: Column(
                  children: <Widget>[
                    ListTile(
                      title: const Text('Brasil',
                          style: TextStyle(fontWeight: FontWeight.w500)),
                      leading: const Icon(
                        Icons.location_city,
                        color: Colors.blue,
                      ),
                      trailing: IconButton(
                        icon: const Icon(Icons.star),
                        color: isFavorite
                            ? Colors.yellow[600]
                            : Colors.grey, // altera
                        onPressed: () {
                          setState(() {
                            isFavorite = !isFavorite; // state
                          });
                        },
                      ),
                      subtitle: const Text('Ji-Paraná, Rondônia'),
                    ),
                    const Divider(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Expanded(
                          child: InkWell(
                            onTap: () {},
                            child: const ListTile(
                              leading: Icon(Icons.facebook, color: Colors.blue), contentPadding: EdgeInsets.zero,
                              title: Text('Facebook', softWrap: false, style: TextStyle(fontSize: 15.0),),
                            ),
                          ),
                        ),
                        Expanded(
                          child: InkWell(
                            onTap: () {},
                            child: const ListTile(
                              contentPadding: EdgeInsets.zero,
                              leading: Icon(Icons.map, color: Colors.blue),
                              title: Text('Endereço',
                                  style: TextStyle(fontSize: 15.0),
                                  softWrap: false),
                            ),
                          ),
                        ),
                        Flexible(
                          child: InkWell(
                            onTap: () {},
                            child: const ListTile(
                              contentPadding: EdgeInsets.zero,
                              leading: Icon(Icons.share, color: Colors.blue),
                              title: Text(
                                'Compartilhar',
                                style: TextStyle(fontSize: 15.0),
                                softWrap: false,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Text(
                        'Ji-Paraná é um município brasileiro do estado de Rondônia. Sua população, conforme estimativas do IBGE de 2021, era de 131.026 habitantes, sendo o segundo mais populoso do estado e o décimo sexto mais populoso da Região Norte do Brasil, a 226ª mais populosa do Brasil e a 113ª mais populosa cidade do interior brasileiro. ',
                        style: TextStyle(fontSize: 16.0)
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