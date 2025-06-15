import 'package:groww_flutter/constant/app_images.dart';

class DummyStockModel {
  DummyStockModel({required this.stockName, required this.stockImage});
  String stockName;
  String stockImage;
}

class DummyStocks {
  static List<DummyStockModel> allDummyStocks = [
    DummyStockModel(
        stockImage: AppImages.triveniTurbineStocks,
        stockName: "Triveni Turbine"),
    DummyStockModel(stockImage: AppImages.bseStocks, stockName: "BSE"),
    DummyStockModel(stockImage: AppImages.zomatoStocks, stockName: "Zomato"),
    DummyStockModel(stockImage: AppImages.swiggyStocks, stockName: "Swiggy"),
    DummyStockModel(
        stockImage: AppImages.triveniTurbineStocks, stockName: "TCS"),
    DummyStockModel(
        stockImage: AppImages.triveniTurbineStocks,
        stockName: "MARUTI SUZUKI INDIA LTD"),
    DummyStockModel(
        stockImage: AppImages.triveniTurbineStocks,
        stockName: "ICICI BANK LTD"),
    DummyStockModel(
        stockImage: AppImages.triveniTurbineStocks,
        stockName: "ADANI PORT & SEZ LTD"),
    DummyStockModel(
        stockImage: AppImages.triveniTurbineStocks,
        stockName: "ASIAN PAINTS LTD"),
  ];
}
