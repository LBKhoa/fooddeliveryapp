import 'package:flutter/material.dart';
import 'package:fooddeliveryapp/widget/widget_support.dart';

class Details extends StatefulWidget {
  const Details({super.key});

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  int a = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: 50.0, left: 20.0, right: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Icon(
                  Icons.arrow_back_ios_new_outlined,
                  color: Colors.black,
                )),
            Image.asset(
              "images/salad2.png",
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 2.5,
              fit: BoxFit.fill,
            ),
            SizedBox(
              height: 15.0,
            ),
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Salad",
                      style: AppWidget.semiBooldTextFeildStyle(),
                    ),
                    Text(
                      "Salad rau củ",
                      style: AppWidget.boldTextFeildStyle(),
                    ),
                  ],
                ),
                Spacer(),
                GestureDetector(
                  onTap: () {
                    if (a > 1) {
                      --a;
                    }
                    setState(() {});
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(8)),
                    child: Icon(
                      Icons.remove,
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(
                  width: 20.0,
                ),
                Text(
                  a.toString(),
                  style: AppWidget.semiBooldTextFeildStyle(),
                ),
                SizedBox(
                  width: 20.0,
                ),
                GestureDetector(
                  onTap: () {
                    ++a;
                    setState(() {});
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(8)),
                    child: Icon(
                      Icons.add,
                      color: Colors.white,
                    ),
                  ),
                )
              ],
            ),
            SizedBox(height: 20.0,),
            Text(
              "Salad rau củ là món ăn nhẹ nhàng, phù hợp cho bữa ăn giảm cân hoặc bổ sung dinh dưỡng. Thành phần gồm rau xà lách, cà chua bi, dưa leo, cà rốt, ớt chuông, và bắp ngọt. Nước sốt làm từ dầu ô-liu, chanh, mật ong, và tiêu.", maxLines: 3,
              style: AppWidget.LightTextFeildStyle(),
            ),
            SizedBox(height: 30.0,),
            Row(children: [
              Text("Thời gian giao", style: AppWidget.semiBooldTextFeildStyle(),),
              SizedBox(width: 25.0,),
              Icon(Icons.alarm, color: Colors.black54,),
              SizedBox(width: 5.0,),
              Text("30 phút", style: AppWidget.semiBooldTextFeildStyle(),)
            ],),
            Spacer(),
            Padding(
              padding: const EdgeInsets.only(bottom: 40.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  Text("Tổng Tiền", style: AppWidget.semiBooldTextFeildStyle(),),
                  Text("50000 VNĐ", style: AppWidget.HeadlineTextFeildStyle(),)
                ],),
                Container(
                  width: MediaQuery.of(context).size.width/2,
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(color: Colors.black, borderRadius: BorderRadius.circular(10)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                    Text("Thêm sản phẩm", style: TextStyle(color: Colors.white, fontSize: 16.0, fontFamily: "Poppins"),),
                      SizedBox(width: 20.0,),
                    Container(
                      padding: EdgeInsets.all(3),
                      decoration: BoxDecoration(
                        color: Colors.grey, borderRadius: BorderRadius.circular(8)
                      ),
                      child: Icon(Icons.shopping_cart_outlined, color: Colors.white,),
                    ),
                      SizedBox(width: 10.0,),
                  ],),
                )
              ],),
            )
          ],
        ),
      ),
    );
  }
}
