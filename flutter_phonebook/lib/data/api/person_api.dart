import 'package:http/http.dart' as http;

  class PersonApi{
    static Future getAll(){
      var url = Uri.http("10.6.28.62:5000", '/api/person', {'q': '{http}'});
    return http.get(url);
    }
    static Future update(){
      var url = Uri.http("10.6.28.62:5000", '/api/person', {'q': '{http}'});
      return http.put(url);
    }
  }

