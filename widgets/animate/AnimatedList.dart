class AnimatedListDemo extends StatefulWidget {
  @override
  State<AnimatedListDemo> createState() => _AnimatedListDemoState();
}

class _AnimatedListDemoState extends State<AnimatedListDemo> {
  final GlobalKey<AnimatedListState> key = GlobalKey();
  List<Map<String, dynamic>> todos = [
    {'title': 'delectus aut autem', 'completed': false},
    {'title': 'quis ut nam facilis et officia qui', 'completed': false},
    {'title': 'fugiat veniam minus', 'completed': false},
    {'title': 'et porro tempora', 'completed': false},
    {'title': 'laboriosam mollitia et enim quasi', 'completed': false},
  ];

  @override
  Widget build(BuildContext ctx) {
    return AnimatedList(
      key: key,
      initialItemCount: todos.length,
      itemBuilder: (context, index, animation) {
        final child = ListTile(
            title: Text(todos[index]['title']),
            leading: GestureDetector(
                child: todos[index]['completed']
                    ? Icon(Icons.panorama_fish_eye)
                    : Icon(Icons.check_circle_outline),
                onTap: () {
                  setState(() {
                    todos[index]['completed'] = !todos[index]['completed'];
                  });
                }),
            trailing: IconButton(
              icon: Icon(Icons.delete),
              onPressed: () {
                key.currentState!.removeItem(index, (context, animation) {
                  todos.removeAt(index);
                  return FadeTransition(
                    opacity: animation,
                    child: null,
                  );
                });
              },
            ));

        return FadeTransition(
          opacity: animation,
          child: child,
        );
      },
    );
  }
}
