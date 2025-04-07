import 'package:flutter/material.dart';


class UnknownScreen extends StatelessWidget {
  @override
  Widget build(BuildContext ctx) {
    return Scaffold(
      body: Center(
        child: TextButton(
          onPressed: ()=>Navigator.pop(ctx),
          child: Text('back')
        )
      )
    );
  }
}

class MoreScreen extends StatelessWidget {
  final String category;
  
  MoreScreen({Key? key, required this.category}): super(key:key);
  
  @override
  Widget build(BuildContext ctx) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(ctx);
          },
          child: Text('[$category] go back')
        )
      )
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext ctx) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:[
            ElevatedButton(
              onPressed: () {
                Navigator.push(ctx, MaterialPageRoute(builder: (_)=>MoreScreen(category: 'live')));
              },
              child: Text('more')
            ),
            SizedBox(height: 8),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(ctx, 'dynamic', arguments:{'timestamp':89187817});
              },
              child: Text('dynamic')
            ),
            SizedBox(height: 8),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(ctx, 'unknown');
              },
              child: Text('unknown')
            ),
            SizedBox(height: 8),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(ctx, 'member');
              },
              child: Text('member')
            ),
            
            
          ]
        )
      )
    );
  }
}

class DynamicScreen extends StatelessWidget {
  @override
  Widget build(BuildContext ctx) {
    final dynamic args = ModalRoute.of(ctx)?.settings.arguments;
    
    return Scaffold(
      appBar: AppBar(
        title: Text('Dynamic'),
      ),
      body: Center(
        child: Column(
          children:[
            ElevatedButton(
              onPressed: () {
                Navigator.pop(ctx);
              },
              child: Text('[${args['timestamp']}] go back')
            ),
 
          ]
        )
      )
    );
  }
}

class MemberScreen extends StatelessWidget {
  @override
  Widget build(BuildContext ctx) {
    return Scaffold(
      appBar: AppBar(title:Text('Member')),
      body: Center(
        
      )
    );
  }
}


class MimeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext ctx) {
    return Scaffold(
      body: Center(
       
      )
    );
  }
}


class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
//       home: HomeScreen(),
      initialRoute: 'home',
      routes: {
        'home': (_) => HomeScreen(),
        'dynamic': (_) => DynamicScreen(),
        'mime': (_) => MimeScreen(),
        
      },
      onUnknownRoute: (setting) {
        return MaterialPageRoute(builder: (_)=>UnknownScreen());
      },
      onGenerateRoute: (setting) {
        final name = setting.name;
         
        if(name == 'member') {
          return MaterialPageRoute(builder: (_)=>MemberScreen());
        }
        
        return MaterialPageRoute(builder: (_)=>UnknownScreen());
      },
      
    );
  }
}

class Product {
  final String name;
  final String description;
  Product(this.name, this.description);
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home')),
      body: Container(
        child: TextButton(
          onPressed: () async {
            final result = await Navigator.push(context, MaterialPageRoute(
              builder: (_) => Category(),
            ));
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('result: $result')));
          },
          child: Text('category'),
        ),
      ),
    );
  }
}

class Category extends StatelessWidget {
  final List<Product> products = List.generate(5, 
        (i)=>Product('product-$i', 'details of product-$i'));
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Category')),
      body: Container(
        child: Column(
          children:[
            TextButton(
              onPressed: () {
                Navigator.pop(context, 'product category');
              },
              child: Text('back'),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: products.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(products[index].name),
                    subtitle: Text(products[index].description),
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(
                        builder: (_) => ProductDetail(product: products[index])
                      ));
                    }
                  );
                },
              ),
            )
          ]
        )
      ),
    );
  }
}

class ProductDetail extends StatelessWidget {
  final Product product;
  
  ProductDetail({Key? key, required this.product}): super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(product.name)),
      body: Container(
        child: Text(product.description)
      ),
    );
  }  
}


class Mime extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Mime')),
      body: Container(),
    );
  }
}

class Demo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(body: Home()),
    );
  }
}

void main() {
  runApp(Demo());
}
