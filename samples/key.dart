class Product {
  final String name;
  final String image;
  final double price;
  Product(this.name, this.price, this.image);
}

class ProductList extends StatefulWidget {
  @override
  State<ProductList> createState() => _ProductListState();
}

class ProductListItem extends StatefulWidget {
  final Product product;

  ProductListItem(this.product, {Key? key}) : super(key: key);

  @override
  State<ProductListItem> createState() => _ProductListItemState();
}

class _ProductListItemState extends State<ProductListItem> {
  int count = 0;

  _reset() {
    count = 0;
  }

  @override
  Widget build(BuildContext ctx) {
    final product = widget.product;
    final portraitItem = Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Container(
              margin: EdgeInsets.symmetric(vertical: 15, horizontal: 12),
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  image: DecorationImage(image: NetworkImage(product.image))),
            ),
            SizedBox(width: 8),
            Text(product.name),
            SizedBox(
              width: 5,
            ),
            Text('${product.price}元/份')
          ],
        ),
        Row(
          children: [
            Icon(
              Icons.clear,
              size: 18,
            ),
            GestureDetector(
              child: Text(
                '$count',
                style: TextStyle(fontSize: 18),
              ),
              onTap: () {
                setState(() {
                  count++;
                });
              },
            )
          ],
        )
      ],
    );
    final landscapeItem = ListTile(
      title: Text(product.name),
      leading: Container(
        margin: EdgeInsets.symmetric(vertical: 15, horizontal: 12),
        width: 50,
        height: 50,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            image: DecorationImage(image: NetworkImage(product.image))),
      ),
      trailing: Row(
        children: [
          Icon(
            Icons.clear,
            size: 18,
          ),
          GestureDetector(
            child: Text(
              '$count',
              style: TextStyle(fontSize: 18),
            ),
            onTap: () {
              setState(() {
                count++;
              });
            },
          )
        ],
      ),
    );

    return MediaQuery.of(ctx).orientation == Orientation.portrait
        ? portraitItem
        : landscapeItem;
  }
}

class _ProductListState extends State<ProductList> {
  final List<Product> products = [
    Product('西红柿盖浇饭', 15,
        'https://tse3-mm.cn.bing.net/th/id/OIP-C.eLuOOhkWGQ3vJm6UP8ZtdgAAAA?rs=1&pid=ImgDetMain'),
    Product('煎饼果子', 12,
        'https://tse3-mm.cn.bing.net/th/id/OIP-C.ufH5eKFe4eUBc8iijWx8zAAAAA?rs=1&pid=ImgDetMain'),
    Product('烧饼里脊', 8,
        'https://tse2-mm.cn.bing.net/th/id/OIP-C.BttfZF6MMBdafI5QxRZkVwAAAA?rs=1&pid=ImgDetMain'),
    Product('老婆饼', 30,
        'https://img.phb123.com/uploads/allimg/230330/817-2303301559240-L.jpg'),
    Product('驴肉火烧', 6,
        'https://b2b-jiameng.cdn.bcebos.com/dev/2020/07/29/aa647466ce7b953f1235f79a80e4a6646a7fc276?w=451&h=437&s=35229&x-bce-process=image/quality,q_80'),
  ];

  List<ProductListItem> items = [];
  List<GlobalKey<_ProductListItemState>> keys =
      List.generate(5, (_) => GlobalKey());

  @override
  initState() {
    super.initState();
    products.map((product) {
      return ProductListItem(
        product,
        key: keys[products.indexOf(product)],
      );
    }).forEach((item) {
      items.add(item);
    });
  }

  @override
  Widget build(BuildContext ctx) {
    return ListView(
      padding: EdgeInsets.symmetric(horizontal: 12),
      children: [
        Padding(
          padding: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
          child: Row(
            children: [
              GestureDetector(
                  child: Text('shuffle'),
                  onTap: () {
                    setState(() {
                      items.shuffle();
                    });
                  }),
              SizedBox(width: 8),
              GestureDetector(
                  child: Text('reset'),
                  onTap: () {
                    keys.forEach((key) {
                      key.currentState?._reset();
                      
                      // key.currentWidget as ProductListItem;
                      // (key.currentContext?.findRenderObject() as RenderBox).size;

                    });
                  })
            ],
          ),
        ),
        ...items
      ],
    );
  }
}
