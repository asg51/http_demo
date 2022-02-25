import 'package:http_demo/models/product.dart';
import 'package:http/http.dart' as http;

class ProductApi{
  static Future<http.Response> getProducts(){

 return http.get(Uri.parse("http://10.0.2.2:5000/api/Products/getAll"));
  }
  static Future getProductsByCategoryId(int categoryId) {
    return http.get(Uri.parse("http://10.0.2.2:5000/api/Products/getbycategory?categoryId=$categoryId"));
  }
}