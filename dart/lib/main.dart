import 'package:chuva_dart/shared/widgets/card_widget.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const ChuvaDart());
}

class ChuvaDart extends StatelessWidget {
  const ChuvaDart({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(255, 32, 44, 61)),
        useMaterial3: true,
      ),
      home: const Calendar(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Calendar extends StatefulWidget {
  const Calendar({super.key});

  @override
  State<Calendar> createState() => _CalendarState();
}

class _CalendarState extends State<Calendar> {
  DateTime _currentDate = DateTime(2023, 11, 26);
  bool _clicked = false;

  void _changeDate(DateTime newDate) {
    setState(() {
      _currentDate = newDate;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: MediaQuery.sizeOf(context).height * 0.2,
        centerTitle: true,
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Column(
          children: [
            const Text(
              'Chuva 💜 Flutter',
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
            ),
            const Text(
              'Programação',
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.w300),
            ),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50),
              ),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: const Padding(
                          padding:
                              EdgeInsets.symmetric(vertical: 6, horizontal: 12),
                          child: Icon(Icons.calendar_month),
                        ),),
                  ),
                  SizedBox(
                    width: MediaQuery.sizeOf(context).width * 0.6,
                    child: const Text(
                      'Exibindo todas atividades',
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const CardWidget(
                cabecalho: 'cabecalho',
                titulo: 'titulo',
                autor: 'autor',
                cor: Colors.pink),
            const Text(
              'Programação',
            ),
            const Text(
              'Nov',
            ),
            const Text(
              '2023',
            ),
            OutlinedButton(
              onPressed: () {
                _changeDate(DateTime(2023, 11, 26));
              },
              child: Text(
                '26',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
            ),
            OutlinedButton(
              onPressed: () {
                _changeDate(DateTime(2023, 11, 28));
              },
              child: Text(
                '28',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
            ),
            if (_currentDate.day == 26)
              OutlinedButton(
                  onPressed: () {
                    setState(() {
                      _clicked = true;
                    });
                  },
                  child: const Text('Mesa redonda de 07:00 até 08:00')),
            if (_currentDate.day == 28)
              OutlinedButton(
                  onPressed: () {
                    setState(() {
                      _clicked = true;
                    });
                  },
                  child: const Text('Palestra de 09:30 até 10:00')),
            if (_currentDate.day == 26 && _clicked) const Activity(),
          ],
        ),
      ),
    );
  }
}

class Activity extends StatefulWidget {
  const Activity({super.key});

  @override
  State<Activity> createState() => _ActivityState();
}

class _ActivityState extends State<Activity> {
  bool _favorited = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).colorScheme.inversePrimary,
      child: Column(children: [
        Text(
          'Activity title',
          style: Theme.of(context).textTheme.bodySmall,
        ),
        const Text('A Física dos Buracos Negros Supermassivos'),
        const Text('Mesa redonda'),
        const Text('Domingo 07:00h - 08:00h'),
        const Text('Sthepen William Hawking'),
        const Text('Maputo'),
        const Text('Astrofísica e Cosmologia'),
        ElevatedButton.icon(
          onPressed: () {
            setState(() {
              _favorited = !_favorited;
            });
          },
          icon: _favorited
              ? const Icon(Icons.star)
              : const Icon(Icons.star_outline),
          label: Text(
              _favorited ? 'Remover da sua agenda' : 'Adicionar à sua agenda'),
        )
      ]),
    );
  }
}
