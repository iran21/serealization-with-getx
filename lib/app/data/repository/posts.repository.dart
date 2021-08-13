import 'package:serealization_app/app/data/model/user.model.dart';
import 'package:serealization_app/app/data/service/api.dart';

class MyRepository {
  final MyApiClient provider;

  MyRepository({required this.provider});

  getAll() {
    return provider.getAll();
  }
// getId(id){
//   return api.getId(id);
// }
// delete(id){
//   return api.delete(id);
// }
// edit(obj){
//   return api.edit( obj );
// }
// add(obj){
//     return api.add( obj );
// }

}
