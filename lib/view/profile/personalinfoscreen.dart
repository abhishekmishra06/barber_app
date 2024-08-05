import 'dart:io';

import 'package:barber_app/utils/imports.dart';

File? galleryFile;

class Personalinfoscreen extends StatefulWidget {
  const Personalinfoscreen({super.key});

  @override
  State<Personalinfoscreen> createState() => _PersonalinfoscreenState();
}

class _PersonalinfoscreenState extends State<Personalinfoscreen> {
  final picker = ImagePicker();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      appBar: AppBar(
        backgroundColor: white,
        title: const Text(
          "Personal Info.",
          style: Textstyle.black,
        ),
        centerTitle: true,
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            padding: const EdgeInsets.only(
                left: 15, right: 15, top: 15, bottom: 100),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Enter The details below so we can get",
                  style: Textstyle.customstyle(grey, 17),
                ),
                Text(
                  " to know and serve you better",
                  style: Textstyle.customstyle(grey, 17),
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Stack(
                      children: [
                        GestureDetector(
                            onTap: () {
                              _showImageDialog(context);
                            },
                            child: SizedBox(
                                width: 120,
                                height: 120,
                                child:
                                    // ClipRRect(
                                    //         borderRadius: BorderRadius.circular(100),
                                    //         child: Image.asset(
                                    //           "assets/profileimage.png",
                                    //           fit: BoxFit.cover,
                                    //         ))
                                    galleryFile == null
                                        ? ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(100),
                                            child: Image.asset(
                                              "assets/profileimage.png",
                                              fit: BoxFit.cover,
                                            ))
                                        : ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(100),
                                            child: Image.file(
                                              galleryFile!,
                                              fit: BoxFit.cover,
                                            )))),
                        Positioned(
                            bottom: 14,
                            right: 5,
                            child: GestureDetector(
                              onTap: () {
                                _showPicker(context: context);
                              },
                              child: Container(
                                width: 20,
                                height: 20,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: yellow),
                                child: const Icon(
                                  Icons.edit,
                                  size: 18,
                                  color: white,
                                ),
                              ),
                            ))
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
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
                    hinttext: "e.g. Sakshi",
                    inputfieldIcon: const Icon(Icons.person_2)),
                const SizedBox(
                  height: 20,
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
                    hinttext: "e.g. Rai",
                    inputfieldIcon: const Icon(Icons.person_3)),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "Date of Birth",
                  style: Textstyle.hinttextcolor,
                ),
                const SizedBox(
                  height: 10,
                ),
                Inputfield(
                    controller: emailController,
                    hinttext: "e.g. 09-08-2000",
                    inputfieldIcon: const Icon(Icons.calendar_month)),
                const SizedBox(
                  height: 20,
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
                    hinttext: "e.g. Female",
                    inputfieldIcon: const Icon(Icons.male)),
                const SizedBox(
                  height: 20,
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
                    hinttext: "e.g. Lucknow",
                    inputfieldIcon: const Icon(Icons.location_city)),
              ],
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                color: Colors.white,
                child: TextButtonwidget(
                  buttonText: "Submit and Next",
                  buttonbgcolor: yellow,
                  buttonborderRadius: 10,
                  buttonheight: 60,
                  buttontextcolor: black,
                  buttonwidth: double.infinity,
                  onTap: () {
                    Get.offAll(const BottomNavigation());
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
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
