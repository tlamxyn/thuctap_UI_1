import 'package:flutter/material.dart';
import 'package:project_dak/app/core/theme/theme_provider.dart';
import 'package:project_dak/app/modules/dashboard/components/my_portfolio/components/token_card.dart';

class PortfolioList extends StatelessWidget {
  const PortfolioList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(vertical: 10),
          decoration: const BoxDecoration(
             gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Colors.black12,
                Colors.yellow,
                Colors.black12,
              ],
            ),

          ),
          height: MediaQuery.of(context).size.height * 0.15,
          width: MediaQuery.of(context).size.width,
          child: SingleChildScrollView(
              padding: EdgeInsets.only(right: 20),
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(coinlist.length, (index) {
                  return Padding(
                    padding: const EdgeInsets.only(right: 15),
                    child:
                    Container(
                        decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(12)
                        ),
                        width: MediaQuery.of(context).size.width/1.5,
                        height: MediaQuery.of(context).size.height/10,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Container(
                                  padding: EdgeInsets.all(8),
                                  width: MediaQuery.of(context).size.width/8,
                                  height: MediaQuery.of(context).size.height/12,
                                  decoration:  BoxDecoration(
                                      borderRadius: BorderRadius.circular(5)
                                  ),
                                  child: Image.asset(coinlist[index].imgUrl!, fit: BoxFit.fill,),
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Row(
                                        children: [
                                          Text(coinlist[index].aliat!,style: const TextStyle(
                                              color: Colors.yellow, fontSize: 16
                                          )),
                                          Text('/\USDT')
                                        ],
                                      ),
                                    ),
                                    Text(coinlist[index].name!, style: TextStyle(
                                      color: Colors.grey
                                    ),)

                                  ],
                                ),
                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Row(
                                  children: [
                                    Text('\$ ${coinlist[index].price!}',style: const TextStyle(
                                        color: Colors.yellow, fontSize: 16
                                    )),
                                  ],
                                ),
                                Row(
                                    children:[
                                      Icon(Icons.arrow_drop_down, color: Colors.red,),
                                      Text('\$32 (2%) ', style: TextStyle(
                                          color: Colors.red
                                      ),)
                                    ]

                                )

                              ],
                            )

                          ],
                        )
                    ),
                  );
                }),
              ))
        ),
        const SizedBox(height: 20),
        const TokenCard(),
      ],
    );
  }
}
class coin {
  String? name;
  String? imgUrl;
  String? price ;
  String? aliat ;

  coin(this.name, this.imgUrl, this.price, this.aliat);
}

final List<coin> coinlist = [
  coin("Bitcoin","assets/images/crypto/Bitcoin.png","135,5","BTC"),
  coin("Auroracoin","assets/images/crypto/Auroracoin.png","388,5","AC"),
  coin("Dogecoin","assets/images/crypto/Dogecoin.png","696,5","DGC"),
  coin("Litecoin","assets/images/crypto/Litecoin.png","966,5","LTC"),
];