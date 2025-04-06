import 'package:flutter/material.dart';

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
