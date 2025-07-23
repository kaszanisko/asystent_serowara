// Import biblioteki Fluttera, bez której nie można budować interfejsu
import 'package:flutter/material.dart';

// To jest nasz nowy widget, który reprezentuje cały ekran "Pulpitu"
class PulpitScreen extends StatelessWidget {
  // To jest konstruktor widgetu, na razie go nie ruszamy
  const PulpitScreen({super.key});

  // Każdy widget musi mieć metodę `build`, która "rysuje" go na ekranie
  @override
  Widget build(BuildContext context) {
    // Zwracamy `Scaffold`, czyli podstawowy szkielet ekranu w Material Design.
    return Scaffold(
      // Górny pasek aplikacji
      appBar: AppBar(
        title: const Text('Asystent Serowara'),
        backgroundColor: Colors.orange[700],
      ),
      // Główna treść ekranu
      body: Padding(
        padding: const EdgeInsets.all(16.0), // Dodajemy odstęp od krawędzi ekranu
        child: Column(
          crossAxisAlignment:
              CrossAxisAlignment.start, // Wyrównujemy elementy do lewej
          children: [
            // Pierwszy rząd z naszymi panelami informacyjnymi
            Row(
              children: [
                // Lewy panel - Zapas Mleka
                Expanded(
                  child: Card(
                    elevation: 4, // Dodajemy lekki cień
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        children: const [
                          Text('Zapas Mleka',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold)),
                          SizedBox(height: 8), // Mały odstęp
                          Text('25.5 L',
                              style:
                                  TextStyle(fontSize: 28, color: Colors.blue)),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 16), // Odstęp między panelami

                // Prawy panel - Sery w Dojrzewalni
                Expanded(
                  child: Card(
                    elevation: 4,
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        children: const [
                          Text('Sery w Dojrzewalni',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold)),
                          SizedBox(height: 8),
                          Text('4 szt.',
                              style:
                                  TextStyle(fontSize: 28, color: Colors.green)),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),

            // Odstęp między panelami a przyciskiem
            const SizedBox(height: 32),

            // Nasz główny przycisk akcji
            ElevatedButton(
              onPressed: () {
                print('Przycisk wciśnięty!');
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red[600], // Kolor tła
                foregroundColor: Colors.white, // Kolor tekstu
                padding:
                    const EdgeInsets.symmetric(horizontal: 48, vertical: 16),
                textStyle: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              child: const Text('+ WPROWADŹ NOWE MLEKO'),
            ),

            // Odstęp między głównym przyciskiem a dolną nawigacją
            const SizedBox(height: 32),

            // Rząd z naszymi przyciskami nawigacyjnymi
            Row(
              // `mainAxisAlignment` rozkłada przyciski równomiernie w rzędzie
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                // Przycisk 1: Receptury
                Column(
                  children: [
                    IconButton(
                      icon: const Icon(Icons.book,
                          size: 30, color: Colors.brown),
                      onPressed: () {
                        print('Naciśnięto Receptury');
                      },
                    ),
                    const Text('Receptury'),
                  ],
                ),

                // Przycisk 2: Produkcja
                Column(
                  children: [
                    IconButton(
                      icon: const Icon(Icons.blender,
                          size: 30, color: Colors.blueGrey),
                      onPressed: () {
                        print('Naciśnięto Produkcja');
                      },
                    ),
                    const Text('Produkcja'),
                  ],
                ),

                // Przycisk 3: Dojrzewalnia
                Column(
                  children: [
                    IconButton(
                      icon: const Icon(Icons.calendar_today,
                          size: 30, color: Colors.deepOrange),
                      onPressed: () {
                        print('Naciśnięto Dojrzewalnia');
                      },
                    ),
                    const Text('Dojrzewalnia'),
                  ],
                ),

                // Przycisk 4: Finanse i Zapasy
                Column(
                  children: [
                    IconButton(
                      icon: const Icon(Icons.inventory,
                          size: 30, color: Colors.green),
                      onPressed: () {
                        print('Naciśnięto Finanse');
                      },
                    ),
                    const Text('Finanse'),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
