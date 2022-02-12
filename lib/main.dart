import 'package:flutter/material.dart';
import 'package:graphql_demo/past_launches_provider.dart';
import 'package:graphql_demo/repository/graphql/graphql_api.graphql.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:provider/provider.dart';

void main() async {
  await initHiveForFlutter();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (ctx) => PastLaunchesProvider()..getPastLaunches(),
        ),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          // This is the theme of your application.
          //
          // Try running your application with "flutter run". You'll see the
          // application has a blue toolbar. Then, without quitting the app, try
          // changing the primarySwatch below to Colors.green and then invoke
          // "hot reload" (press "r" in the console where you ran "flutter run",
          // or simply save your changes to "hot reload" in a Flutter IDE).
          // Notice that the counter didn't reset back to zero; the application
          // is not restarted.
          primarySwatch: Colors.blue,
        ),
        home: const MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Past Launches'),
      ),
      body: Consumer<PastLaunchesProvider>(
        builder: (context, provider, child) {
          if (provider.films != null && provider.films!.isNotEmpty) {
            final List<PastLaunches$Root$FilmsConnection$Film?> films =
                provider.films!;

            return RefreshIndicator(
              onRefresh: provider.getPastLaunches,
              child: ListView.separated(
                itemCount: films.length,
                itemBuilder: (ctx, index) {
                  final PastLaunches$Root$FilmsConnection$Film film =
                      films[index]!;

                  return ListTile(
                    title: Text(film.title!),
                    subtitle: Text(film.releaseDate!),
                  );
                },
                separatorBuilder: (ctx, index) => const SizedBox(
                  height: 16,
                ),
              ),
            );
          } else if (provider.isLoading) {
            return const CircularProgressIndicator();
          } else if (provider.films != null && provider.films!.isEmpty) {
            return Column(
              children: [
                const Text('No films exist'),
                const SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  onPressed: provider.getPastLaunches,
                  child: const Text('Refresh'),
                ),
              ],
            );
          } else {
            return Column(
              children: [
                const Text('Something went wrong!'),
                const SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  onPressed: provider.getPastLaunches,
                  child: const Text('Retry'),
                ),
              ],
            );
          }
        },
      ),
    );
  }
}
