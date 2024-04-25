import 'package:crypto_coins_list/repositories/crypto_coins/crypto_coins.dart';
import 'package:dio/dio.dart';

class CryptoCoinsRepository implements AbstractCoinsRepository {
  CryptoCoinsRepository({
    required this.dio
  });

  final Dio dio;
  
  @override
  Future<List<CryptoCoin>> getCoinsList() async {
    final response = await dio.get(
      'https://min-api.cryptocompare.com/data/pricemultifull?fsyms=BTC,ETH,BNB,AVAX,AID,BTO,BTM,SOL,CAG,DOV&tsyms=USD'
    );
    final dataRaw = response.data['RAW'] as Map<String, dynamic>;
    final cryptoCoinsList = dataRaw.entries
      .map((el) {
        final usdData = (el.value as Map<String, dynamic>)['USD'] as Map<String, dynamic>;
        final price = usdData['PRICE'];
        final imageUrl = usdData['IMAGEURL'];
        return CryptoCoin(
          name: el.key,
          priceInUSD: price,
          imageUrl: 'https://www.cryptocompare.com/$imageUrl'
        );
      })
      .toList();
    return cryptoCoinsList;
  }
}
