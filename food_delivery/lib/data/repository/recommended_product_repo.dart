import 'package:food_delivery/data/api/api_client.dart';
import 'package:food_delivery/utils/app_constants.dart';
import 'package:get/get.dart';

class RecommendedProductRepo extends GetxService{

  final ApiClient apiClient;
  RecommendedProductRepo({ required this.apiClient});

  Future<Response> getRecommendedProductList() async{
    //api istemcisinden apiyi çağırır
    //repo yalnızca yöntem çağırmaktan sorumludur
    return await apiClient.getData(AppConstants.RECOMMENDED_PRODUCT_URL);
    //return await apiClient.getData("http://mvs.bslmeiyu.com/api/v1/products/popular");
  }

}