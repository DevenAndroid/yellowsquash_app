import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:yellowsquash_app/resource/app_Assets.dart';
import 'package:yellowsquash_app/widgets/helper.dart';
import '../../widgets/apptheme.dart';
import 'dart:io';

class RaiseQuery extends StatefulWidget {
  const RaiseQuery({super.key});
  static String raiseQuery = "/raiseQuery";

  @override
  State<RaiseQuery> createState() => _RaiseQueryState();
}

class _RaiseQueryState extends State<RaiseQuery> {
  final queryController = TextEditingController();
  Rx<List<File>> images = Rx<List<File>>([]);

  List<File> selectedImages = []; // List of selected image
  final picker = ImagePicker();  // Instance of Image picker
  Future getImages() async {
    final pickedFile = await picker.pickMultiImage(
        imageQuality: 100,
        maxHeight: 1000,
        maxWidth: 1000);
    List<XFile> xfilePick = pickedFile;
    if (xfilePick.isNotEmpty) {
      for (var i = 0; i < xfilePick.length; i++) {
        selectedImages.add(File(xfilePick[i].path));
      }
      setState(
            () { },
      );
    } else {
    }

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppTheme.yellowColor,
        iconTheme: const IconThemeData(color: AppTheme.blackcolor),
        title: Text(
          "Raise Query",
          style: Theme.of(context)
              .textTheme
              .headline6!
              .copyWith(fontWeight: FontWeight.w500, fontSize: 20, color: AppTheme.blackcolor),
        ),
      ),
      body: Theme(
        data: ThemeData(
          useMaterial3: true
        ),
        child: SingleChildScrollView(
            child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          child: Column(
            children: [
              TextFormField(
                controller: queryController,
                cursorColor: Colors.grey,
                decoration: const InputDecoration(
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                  hintText: "Type in your query",
                  border: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () {
                  getImages();
                },
                child: DottedBorder(
                  color: AppTheme.primaryColor,
                  strokeWidth: 1,
                  radius: const Radius.circular(15),
                  child: Container(
                    height: selectedImages.isNotEmpty ? 100 : 50,
                    color: Colors.green.withOpacity(.2),
                    child: selectedImages.isNotEmpty ? ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: selectedImages.length,
                      itemBuilder: (context, index) {
                        return Stack(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.file(
                                  selectedImages[index],
                                  width: 80,
                                  height: 80,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                             Positioned(
                              right: 5,
                                top: 5,
                                child: GestureDetector(
                                  onTap: (){
                                    selectedImages.removeAt(index);
                                    setState(() {

                                    });
                                  },
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      border: Border.all(color: Colors.white),
                                      color: Colors.grey.shade600
                                    ),
                                      child: const Icon(Icons.clear,size: 15,color: Colors.white,)),
                                ))
                          ],
                        );
                      },
                    )  : const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ImageIcon(
                          AssetImage(AppAssets.attachment),
                          color: AppTheme.primaryColor,
                          size: 15,
                        ),
                        SizedBox(width: 5),
                        Text(
                          "Attach media",
                          style: TextStyle(fontWeight: FontWeight.w400, fontSize: 16, color: AppTheme.primaryColor),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    foregroundColor: const Color(0xffFFE575),
                    backgroundColor: const Color(0xffF9D121),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6),
                    )),
                child: const Center(
                    child:
                        Text("Add Query", style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16, color: AppTheme.blackcolor))),
              ),
            ],
          ),
        )),
      ),
    );
  }
}
