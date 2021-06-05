class Product {
    static List<Product> products = [
      Product('assets/iphone.jpeg','IPhone 12', '5.0', '6', '20', '60', '1'),
      Product('assets/macbook-pro-m1.jpg','Macbook 2020', '5.0', '6', '20', '60', '1'),
      Product('assets/macbook-air-m1.jpeg','Macbook 2020', '5.0', '6', '20', '60', '1'),
      Product('assets/gaming-pc.jpeg','Gaming PC', '5.0', '6', '20', '60', '1'),
      Product('assets/laptop.jpeg','Laptop', '5.0', '6', '20', '60', '1'),
      Product('assets/macbook.jpeg','Macbook Pro', '5.0', '6', '20', '60', '1'),
    ];
    String imageUrl;
    String productName;
    String rating;
    String numberOfReviews;
    String stock;
    String price;
    String quantity;
    // Short form constructor.
    Product(
      this.imageUrl,
      this.productName,
      this.rating,
      this.numberOfReviews,
      this.stock,
      this.price,
      this.quantity
    );
}