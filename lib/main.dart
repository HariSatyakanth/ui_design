import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ui design',
      theme: ThemeData(
        primaryColor: Colors.white,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  final List<Map<String, dynamic>> data = [
    {
      'title': 'Visa',
      'amount': '20,000',
      'date': '05/21',
      'number': '**** 2222',
      'color': Colors.blue.shade500,
    },
    {
      'title': 'Visa',
      'amount': '20,000',
      'date': '05/21',
      'number': '**** 2222',
      'color': Colors.purple.shade500,
    },
    {
      'title': 'Visa',
      'amount': '20,000',
      'date': '05/21',
      'number': '**** 2222',
      'color': Colors.red.shade500,
    }
  ];

  final List<Map<String, dynamic>> listData = [
    {
      'title': 'Tinder',
      'subtitle': '29 jun 2021',
      'trailing': ' \$ 45',
    },
    {
      'title': 'Tinder',
      'subtitle': '28 jun 2021',
      'trailing': ' \$ 45',
    },
    {
      'title': 'Tinder',
      'subtitle': '27 jun 2021',
      'trailing': ' \$ 45',
    },
    {
      'title': 'Tinder',
      'subtitle': '27 jun 2021',
      'trailing': ' \$ 45',
    },
    {
      'title': 'Tinder',
      'subtitle': '27 jun 2021',
      'trailing': ' \$ 45',
    },
    {
      'title': 'Tinder',
      'subtitle': '27 jun 2021',
      'trailing': ' \$ 45',
    },
  ];
  @override
  Widget build(BuildContext context) {
    double _height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        elevation: 0,
        leading: Icon(Icons.person),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.more_horiz),
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 15),
            child: Text(
              'Hello',
              style: TextStyle(fontSize: 15),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 15),
            child: Text(
              'Debra Willis',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(5),
            height: _height * 0.27,
            margin: EdgeInsets.symmetric(vertical: 10),
            child: Row(
              children: [
                Container(
                  width: 50,
                  margin: EdgeInsets.only(left: 15, right: 5),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white),
                  height: _height * 0.27,
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.add,
                      color: Colors.grey,
                    ),
                  ),
                ),
                Expanded(
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: data.length,
                    itemBuilder: (context, index) {
                      return buildCard(data[index]);
                    },
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 15),
          Expanded(
            child: Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                ),
              ),
              child: ListView.builder(
                itemCount: listData.length,
                itemBuilder: (context, index) {
                  return buildListTile(listData[index]);
                },
              ),
            ),
          ),
        ],
      ),
    );
  }

  ListTile buildListTile(Map<String, dynamic> i) {
    return ListTile(
      contentPadding: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
      leading: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: Image.asset(
          'assets/images/tinder.jpg',
          fit: BoxFit.contain,
        ),
      ),
      title: Text(
        i['title'],
        style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),
      ),
      subtitle: Text(i['subtitle'],style: TextStyle(color: Colors.black.withOpacity(0.5)),),
      trailing: Text(
        i['trailing'],
        style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),
      ),
    );
  }

  SizedBox buildCard(Map<String, dynamic> i) {
    return SizedBox(
      width: 220,
      child: Card(
        margin: EdgeInsets.symmetric(horizontal: 5),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        color: i['color'],
        elevation: 3,
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      i['title'],
                      style: TextStyle(fontSize: 25, color: Colors.white),
                    ),
                    Icon(
                      Icons.trending_up_sharp,
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(4),
                child: Text(
                  'Current Balance',
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.white,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(4),
                child: Text(
                  '\$ ${i['amount']}',
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: Text(
                  i['number'],
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
              ),
              Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.circle,
                    color: Colors.white,
                  ),
                  Text(
                    i['date'],
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
