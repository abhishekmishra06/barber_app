import 'dart:io';
import 'package:barber_app/utils/imports.dart';

File? galleryFile;

class Editinfo extends StatefulWidget {
  const Editinfo({super.key});

  @override
  State<Editinfo> createState() => _EditinfoState();
}

class _EditinfoState extends State<Editinfo> {
  final picker = ImagePicker();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: white,
          title: const Text("Edit Information",
              style: TextStyle(color: Colors.black)),
          leading: const BackButton(
            color: Colors.black,
          ),
        ),
        body: Stack(
          children: [
            SingleChildScrollView(
                padding: const EdgeInsets.only(top: 30),
                child: Column(children: [
                  Column(children: [
                    Stack(
                      children: [
                        GestureDetector(
                          onTap: () {
                            _showImageDialog(context);
                          },
                          child: SizedBox(
                              width: 120,
                              height: 120,
                              child: galleryFile == null
                                  ? ClipRRect(
                                      borderRadius: BorderRadius.circular(100),
                                      child: Image.asset(
                                        "assets/profileimage.png",
                                        fit: BoxFit.cover,
                                      ))
                                  : ClipRRect(
                                      borderRadius: BorderRadius.circular(100),
                                      child: Image.file(
                                        galleryFile!,
                                        fit: BoxFit.cover,
                                      ),
                                    )),
                        ),
                        Positioned(
                            bottom: 0,
                            right: 0,
                            child: Container(
                              width: 30,
                              height: 30,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100),
                                  color: yellow),
                              child: IconButton(
                                onPressed: () {
                                  _showPicker(context: context);
                                },
                                icon: const Icon(Icons.edit),
                                iconSize: 20,
                                color: Colors.white,
                                tooltip: "change picture",
                                mouseCursor: SystemMouseCursors.click,
                              ),
                            ))
                      ],
                    ),
                    const SizedBox(
                      height: 14,
                    ),
                    const Text("krishna", style: Textstyle.black),
                    const Text("krishna@gmail.com", style: Textstyle.black),
                    const SizedBox(
                      height: 10,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                  ]),
                  Container(
                    padding: const EdgeInsets.only(
                        left: 15, right: 15, top: 0, bottom: 100),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 15,
                        ),
                        const Text(
                          "First Name",
                          style: Textstyle.hinttextcolor,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Inputfield(
                            controller: emailController,
                            hinttext: "Krishna",
                            inputfieldIcon: const Icon(Icons.person)),
                        const SizedBox(
                          height: 15,
                        ),
                        const Text(
                          "Last Name",
                          style: Textstyle.hinttextcolor,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Inputfield(
                            controller: emailController,
                            hinttext: "Kumar",
                            inputfieldIcon: const Icon(Icons.person)),
                        const SizedBox(
                          height: 15,
                        ),
                        const Text(
                          "Email",
                          style: Textstyle.hinttextcolor,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Inputfield(
                            controller: emailController,
                            hinttext: "krishna@gmail.com",
                            inputfieldIcon: const Icon(Icons.date_range)),
                        const SizedBox(
                          height: 15,
                        ),
                        const Text(
                          "DOB",
                          style: Textstyle.hinttextcolor,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Inputfield(
                            controller: emailController,
                            hinttext: "12/12/1856",
                            inputfieldIcon: const Icon(Icons.person)),
                        const SizedBox(
                          height: 15,
                        ),
                        const Text(
                          "Phone Number",
                          style: Textstyle.hinttextcolor,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        GestureDetector(
                          onTap: () {
                            showSnackBar(context,
                                message: "Phone number is can't update");
                          },
                          child: Container(
                            height: 50,
                            padding: const EdgeInsets.only(left: 5),
                            decoration: BoxDecoration(
                              color: lightgrey,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: const Row(
                              children: [
                                SizedBox(
                                  width: 15,
                                ),
                                Icon(
                                  Icons.phone,
                                  color: grey,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  "+91 9000000000",
                                  style: Textstyle.hinttextcolor,
                                )
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        const Text(
                          "Gender",
                          style: Textstyle.hinttextcolor,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Inputfield(
                            controller: emailController,
                            hinttext: "Male",
                            inputfieldIcon: const Icon(Icons.male)),
                        const SizedBox(
                          height: 15,
                        ),
                        const Text(
                          "Address",
                          style: Textstyle.hinttextcolor,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Inputfield(
                            controller: emailController,
                            hinttext: "368 new avenue, new York",
                            inputfieldIcon: const Icon(Icons.location_city)),
                      ],
                    ),
                  ),
                ])),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                  color: Colors.white,
                  child: TextButtonwidget(
                    buttonText: "Update Information",
                    buttonbgcolor: yellow,
                    buttonborderRadius: 10,
                    buttonheight: 60,
                    buttontextcolor: black,
                    buttonwidth: double.infinity,
                    onTap: () {
                      // Get.to(const ());
                      AwesomeDialog(
                        context: context,
                        dialogType: DialogType.question,
                        // headerAnimationLoop: false,
                        animType: AnimType.topSlide,
                        title: 'Question',
                        desc: 'Dialog description here...',
                        buttonsTextStyle: const TextStyle(color: Colors.black),
                        showCloseIcon: true,
                        btnCancelOnPress: () {},
                        btnOkOnPress: () {},
                      ).show();
                    },
                  ),
                ),
              ],
            ),
          ],
        ));
  }

  void _showPicker({
    required BuildContext context,
  }) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return SafeArea(
          child: Wrap(
            children: <Widget>[
              ListTile(
                leading: const Icon(Icons.photo_library),
                title: const Text('Photo Library'),
                onTap: () {
                  getImage(ImageSource.gallery);
                  Navigator.of(context).pop();
                },
              ),
              ListTile(
                leading: const Icon(Icons.photo_camera),
                title: const Text('Camera'),
                onTap: () {
                  getImage(ImageSource.camera);
                  Navigator.of(context).pop();
                },
              ),
            ],
          ),
        );
      },
    );
  }

  Future getImage(
    ImageSource img,
  ) async {
    final pickedFile = await picker.pickImage(source: img);
    XFile? xfilePick = pickedFile;
    galleryFile = File(pickedFile!.path);

    setState(
      () {
        if (xfilePick != null) {
          galleryFile = File(pickedFile.path);
          ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text("Image update successfully")));
        } else {
          ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text('Nothing is selected')));
        }
      },
    );
  }

  void _showImageDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          child: SizedBox(
            width: 300,
            height: 300,
            child: galleryFile == null
                ? Image.asset(
                    "assets/profileimage.jpg",
                    fit: BoxFit.cover,
                  )
                : Image.file(
                    galleryFile!,
                    fit: BoxFit.cover,
                  ),
          ),
        );
      },
    );
  }
}
