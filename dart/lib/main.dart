import 'package:chuva_dart/repository/activities_repository.dart';
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
      home:  Calendar(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Calendar extends StatefulWidget {
  
  ActivitiesRepository activitiesRepository = ActivitiesRepository();
   Calendar({super.key});

  @override
  State<Calendar> createState() => _CalendarState();
}

class _CalendarState extends State<Calendar> {


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
                      ),
                    ),
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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Row(
            children: [
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Text(
                      'Nov',
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                    Text(
                      '2023',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                color: Colors.blue,
                height: MediaQuery.sizeOf(context).height * 0.07,
                width: MediaQuery.sizeOf(context).width * 0.8636,
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: 5,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    const data = 26;

                    return Stack(
                      alignment: Alignment.bottomCenter,
                      children: [
                        Container(
                          child: Row(
                            children: [
                              InkWell(
                                onTap: () {
                                  print('cliquei $index');
                                },
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 20, vertical: 20),
                                  child: Text(
                                    '${data + index}',
                                    style: const TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          color: Colors.grey,
                          height: 3,
                          width: 52,
                        ),
                      ],
                    );
                  },
                ),
              ),
            ],
          ),
          ValueListenableBuilder(
            valueListenable: widget.activitiesRepository.activityModel,
            builder: (context,activity,child) {
              return  CardWidget(
                cabecalho: '${activity?.type?.title?.ptBr ?? ''} de ${activity?.start ?? ''} até ${activity?.end ?? ''}' ,
                titulo: activity?.title?.ptBr ??'' ,
                autor: activity?.people?.first.name ??'',
                cor: Colors.pink,
              );
            }
          ),
        ],
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
