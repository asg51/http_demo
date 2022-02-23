import 'package:http/http.dart' as http;

class CategoryApi{
  static Future<http.Response> getCategories(){

    return http.get(Uri.parse("http://10.0.2.2:5000/api/Categories/getAll"));
  }
  static Future getCategoriesByCategoryId(int categoryId) {
    return http.get(Uri.parse("http://10.0.2.2:5000/api/Categories/getAll"));
  }
}