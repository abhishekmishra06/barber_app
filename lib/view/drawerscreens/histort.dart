import 'package:barber_app/utils/components/imports.dart';



class History extends StatefulWidget {
  const History({
    super.key,
  });

  @override
  State<History> createState() => _HistoryState();
}

class _HistoryState extends State<History> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text("Request History"),
        leading: const BackButton(
          color: Colors.black,
        ),
        elevation: 2,
      ),
      body: Column(
                          children: [
                            InkWell(
                              onTap: () {
                                Get.to( ());
                              },
                              child: SizedBox(
                                  height: 80,
                                  width: double.infinity,
                                  child: DecoratedBox(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        // border:
                                        //     Border.all(color: Colors.black)
                                      ),
                                      child: Card(
                                
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(10)),
                                        elevation: 2,
                                        child: ListTile(
                                            title: const Text(
                                              "destination",
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            subtitle: const Row(
                                              children: [
                                                Text(
                                                  "starttime",
                                                  style: TextStyle(
                                                      color: Colors.grey,
                                                      fontSize: 13),
                                                ),
                                                SizedBox(width: 13),
                                                SizedBox(
                                                    height: 4,
                                                    width: 4,
                                                    child: CircleAvatar(
                                                      backgroundColor:
                                                          Colors.grey,
                                                    )),
                                                SizedBox(width: 5),
                                                Text(
                                                  "seats",
                                                  style: TextStyle(
                                                      color: Colors.grey,
                                                      fontSize: 13),
                                                ),
                                                SizedBox(width: 2),
                                                Text(
                                                  "Seat",
                                                  style: TextStyle(
                                                      color: Colors.grey,
                                                      fontSize: 13),
                                                ),
                                              ],
                                            ),
                                            leading: const CircleAvatar(
                                                child: Icon(
                                                    Icons.location_history)),
                                            trailing: Container(
                                              // width: 124,
                                              // height: 40,
                                              padding: const EdgeInsets.all(5),
                                              clipBehavior: Clip.antiAlias,
                                              decoration: ShapeDecoration(
                                                color: "status" == 'successful'
                                                    ? Colors.greenAccent
                                                        .withOpacity(
                                                            0.1599999964237213)
                                                    : Colors.redAccent
                                                        .withOpacity(
                                                            0.1599999964237213),
                                                shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            6)),
                                              ),
                                              child: const Text(
                                                "status",
                                                style: TextStyle(
                                                    fontSize: 15,
                                                    color:
                                                        "status" == 'successful'
                                                            ? Colors.green
                                                            : Colors.red,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            )),
                                      ))),
                            ),
                            const SizedBox(height: 4),
                          ],
                        )
    );
  }
}
