import 'package:bhaya_store/import.dart';
import 'package:intl/intl.dart';

class Tabs extends StatefulWidget {
  const Tabs({Key? key}) : super(key: key);

  @override
  State<Tabs> createState() => TabsState();
}

class TabsState extends State<Tabs> with TickerProviderStateMixin {
  //live Date&Time
  String date = DateFormat("dd-MM-yyyy").format(DateTime.now());
  String time = DateFormat("hh:mm a").format(DateTime.now());

  // List<String> items = ['item1', 'item2', 'item3', 'item4', 'item5', 'item6'];
  // String? selectedItem = 'item1';

  late TabController tabController;
  @override
  void initState() {
    super.initState();
    tabController = TabController(
      initialIndex: 0,
      length: 4,
      vsync: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Padding(
            padding: const EdgeInsets.only(left: 250.0),
            child: Column(
              children: [
                Text(
                  date,
                  style: const TextStyle(color: Colors.black38, fontSize: 15),
                ),
                Text(
                  time,
                  style: const TextStyle(color: Colors.black38, fontSize: 15),
                ),
              ],
            ),
          ),
          backgroundColor: Colors.blueAccent,
          elevation: 0,
          bottom: const TabBar(
              labelColor: Colors.black,
              unselectedLabelColor: Colors.black38,
              indicatorSize: TabBarIndicatorSize.label,
              indicator: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                ),
                color: Colors.white,
              ),
              tabs: [
                Tab(
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      "BUY",
                      style: TextStyle(fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
                Tab(
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      "SELL",
                      style: TextStyle(fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
                Tab(
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      "REPORT",
                      style: TextStyle(fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
              ]),
        ),
        body: const TabBarView(children: [
          //BUY PAGE
          Buypage(),
          //SELL PAGE
          Sellpage(),
          //REPORTPAGE
          Reportpage(),
        ]),
      ),
    );
  }
}
