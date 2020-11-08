import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_material_color_picker/flutter_material_color_picker.dart';
import 'package:multi_image_picker/multi_image_picker.dart';
import 'package:pet_help/components/rescue_pet_list.dart';
import 'package:pet_help/view/RescueHome.dart';
import 'package:pet_help/view/UserPetManagement.dart';
import 'package:pet_help/view/loadimg.dart';
import 'package:pet_help/view/utils.dart';

class UploadImagesRes extends StatefulWidget {
  final GlobalKey<ScaffoldState> globalKey;
  const UploadImagesRes({Key key, this.globalKey}) : super(key: key);
  @override
  _UploadImagesResState createState() => new _UploadImagesResState();
}

class _UploadImagesResState extends State<UploadImagesRes> {
  List<Asset> images = List<Asset>();
  List<String> imageUrls = <String>[];
  bool isUploading = false;

  @override
  void initState() {
    super.initState();
  }

  Widget buildGridView() {
    return GridView.count(
      crossAxisCount: 3,
      children: List.generate(images.length, (index) {
        Asset asset = images[index];
        print(asset.getByteData(quality: 100));
        return Padding(
          padding: EdgeInsets.all(8.0),
          child: ThreeDContainer(
            backgroundColor: MultiPickerApp.darker,
            backgroundDarkerColor: MultiPickerApp.darker,
            height: 50,
            width: 50,
            borderDarkerColor: MultiPickerApp.pauseButton,
            borderColor: MultiPickerApp.pauseButtonDarker,
            child: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(15)),
              child: AssetThumb(
                asset: asset,
                width: 300,
                height: 300,
              ),
            ),
          ),
        );
      }),
    );
  }

  @override
  Widget build(BuildContext context) {
    int _value = 1;
    //  SingleChildScrollView(
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 30,
          ),
          Container(

            //   child: Column(
            //     children: <Widget>[
            //       SizedBox(
            //         height: 10,
            //       ),
            //       SizedBox(
            //         height: 120,
            //         child: buildGridView(),
            //       ),
            //       SizedBox(
            //         height: 10,
            //       ),
            //       Column(
            //         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //         children: <Widget>[
            //           InkWell(
            //             onTap: loadAssets,
            //             child: ThreeDContainer(
            //               width: 240,
            //               height: 50,
            //               backgroundColor: Colors.orange,
            //               backgroundDarkerColor: Colors.orange,
            //               child: Center(
            //                   child: Text(
            //                 "Đăng hình ảnh",
            //                 style: TextStyle(color: Colors.white, fontSize: 20),
            //               )),
            //             ),
            //           ),
            //           InkWell(
            //             onTap: () {
            //               if (images.length == 0) {
            //                 showDialog(
            //                     context: context,
            //                     builder: (_) {
            //                       return AlertDialog(
            //                         backgroundColor:
            //                             Theme.of(context).backgroundColor,
            //                         content: Text("No image selected",
            //                             style: TextStyle(color: Colors.white)),
            //                         actions: <Widget>[
            //                           InkWell(
            //                             onTap: () {
            //                               Navigator.pop(context);
            //                             },
            //                             child: ThreeDContainer(
            //                               width: 80,
            //                               height: 30,
            //                               backgroundColor:
            //                                   MultiPickerApp.navigateButton,
            //                               backgroundDarkerColor:
            //                                   MultiPickerApp.background,
            //                               child: Center(
            //                                   child: Text(
            //                                 "Ok",
            //                                 style: TextStyle(color: Colors.white),
            //                               )),
            //                             ),
            //                           )
            //                         ],
            //                       );
            //                     });
            //               } else {
            //                 SnackBar snackbar = SnackBar(
            //                     content: Text('Please wait, we are uploading'));
            //                 widget.globalKey.currentState.showSnackBar(snackbar);
            //                 uploadImages();
            //               }
            //             },
            //             child: ThreeDContainer(
            //               width: 0,
            //               height: 0,
            //               backgroundColor: MultiPickerApp.navigateButton,
            //               backgroundDarkerColor: MultiPickerApp.background,
            //               child: Center(
            //                   child: Text(
            //                 "Upload Images",
            //                 style: TextStyle(color: Colors.white),
            //               )),
            //             ),
            //           ),
            //         ],
            //       ),
            //     ],
            //   ),

            child: ImgLoad(),

          ),
          SizedBox(
            height: 20,
          ),
          new Column(
            children: <Widget>[
              new ListTile(
                title: new Text(
                  "Đến: Luân",
                  style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 18,),
                ),
              ),

                // Row(
                //   children: [
                //     Text(
                //       "   Giới tính: ",
                //       style: TextStyle(
                //           fontSize: 17, color: Colors.black54 ),
                //     ),
                //     DropdownButton(
                //         value: _value,
                //         items: [
                //           DropdownMenuItem(
                //             child: Text(""),
                //             value: 1,
                //           ),
                //           DropdownMenuItem(
                //             child: Text("Đực"),
                //             value: 2,
                //           ),
                //           DropdownMenuItem(
                //               child: Text("Cái"), value: 3),
                //
                //         ],
                //         onChanged: (value) {
                //           setState(() {
                //             _value = value;
                //           });
                //         }),
                //     Text(
                //       "   Loại: ",
                //       style: TextStyle(
                //           fontSize: 17, color: Colors.black54 ),
                //     ),
                //     DropdownButton(
                //         value: _value,
                //         items: [
                //           DropdownMenuItem(
                //             child: Text(""),
                //             value: 1,
                //           ),
                //           DropdownMenuItem(
                //             child: Text("Chó"),
                //             value: 2,
                //           ),
                //           DropdownMenuItem(
                //               child: Text("Mèo"), value: 3),
                //           DropdownMenuItem(
                //               child: Text("Hamster"),
                //               value: 4),
                //           DropdownMenuItem(
                //               child: Text("Khác"), value: 5)
                //         ],
                //         onChanged: (value) {
                //           setState(() {
                //             _value = value;
                //           });
                //         }),
                //   ],
                // ),
                Column(
                  children: [

                  ],
                ),

                // new ListTile(
                //   title: new TextField(
                //     decoration: new InputDecoration(
                //       hintText: "Thuộc giống",
                //     ),
                //   ),
                // ),
                // Padding(
                //     padding: const EdgeInsets.all(8.0),
                //     child: Container(
                //       width: 400,
                //       height: 220,
                //       decoration: BoxDecoration(
                //           color: Colors.white,
                //           borderRadius: BorderRadius.circular(18),
                //           boxShadow: [
                //             new BoxShadow(
                //                 color: Colors.black54,
                //                 offset: new Offset(1.0, 2.0),
                //                 blurRadius: 3.5),
                //           ]),
                //       child: Row(
                //         children: [
                //           Text(
                //             "   Màu: ",
                //             style: TextStyle(
                //               fontSize: 17, ),
                //           ),
                //
                //           Container(
                //             width: 320,
                //             child: MaterialColorPicker(
                //
                //                 allowShades: false, // default true
                //                 onMainColorChange: (ColorSwatch color) {
                //                   // Handle main color changes
                //                 },
                //                 selectedColor: Colors.red
                //             ),
                //           ),
                //         ],
                //       ),
                //     )
                //
                // ),
                // new ListTile(
                //   title: new TextField(
                //     decoration: new InputDecoration(
                //
                //       hintText: "Cân nặng",
                //     ),
                //   ),
                // ),
                Row(
                  children: [
                    Text(
                      "    Hiện Trạng: ",
                      style: TextStyle(
                          fontSize: 17, color: Colors.black54 ),
                    ),
                    DropdownButton(
                        value: _value,
                        items: [
                          DropdownMenuItem(
                            child: Text(""),
                            value: 1,
                          ),
                          DropdownMenuItem(
                            child: Text("Khoẻ mạnh"),
                            value: 2,
                          ),
                          DropdownMenuItem(
                              child: Text("Bị thương"), value: 3),

                        ],
                        onChanged: (value) {
                          setState(() {
                            _value = value;
                          });
                        }),

                  ],
                ),

                SizedBox(height: 10,),
                Row(
                  children: [
                    Text(
                      "    Mức độ hiện tại: ",
                      style: TextStyle(
                          fontSize: 17, color: Colors.black54 ),
                    ),
                    DropdownButton(
                        value: _value,
                        items: [
                          DropdownMenuItem(
                            child: Text(""),
                            value: 1,
                          ),
                          DropdownMenuItem(
                            child: Text("Nhẹ"),
                            value: 2,
                          ),
                          DropdownMenuItem(
                              child: Text("Trung bình"), value: 3),
                          DropdownMenuItem(
                              child: Text("Nặng"), value: 3),

                        ],
                        onChanged: (value) {
                          setState(() {
                            _value = value;
                          });
                        }),

                  ],
                ),
              SizedBox(height: 20,),
              new ListTile(
                title: new TextField(
                  decoration: new InputDecoration(

                    hintText: "Vị trí vết thương: ",
                  ),
                ),
              ),
                SizedBox(height: 20,),
              Row(
                children: [
                  Text(
                    "    Có bị nôn mửa không? ",
                    style: TextStyle(
                        fontSize: 17, color: Colors.black54 ),
                  ),
                  DropdownButton(
                      value: _value,
                      items: [
                        DropdownMenuItem(
                          child: Text(""),
                          value: 1,
                        ),
                        DropdownMenuItem(
                          child: Text("Có"),
                          value: 2,
                        ),
                        DropdownMenuItem(
                            child: Text("Không"), value: 3),

                      ],
                      onChanged: (value) {
                        setState(() {
                          _value = value;
                        });
                      }),

                ],
              ),
              SizedBox(height: 20,),
              Row(
                children: [
                  Text(
                    "    Có ho, hắt hơi hoặc chảy dịch từ mắt không? ",
                    style: TextStyle(
                        fontSize: 17, color: Colors.black54 ),
                  ),
                  DropdownButton(
                      value: _value,
                      items: [
                        DropdownMenuItem(
                          child: Text(""),
                          value: 1,
                        ),
                        DropdownMenuItem(
                          child: Text("Có"),
                          value: 2,
                        ),
                        DropdownMenuItem(
                            child: Text("Không"), value: 3),

                      ],
                      onChanged: (value) {
                        setState(() {
                          _value = value;
                        });
                      }),

                ],
              ),
                SizedBox(height: 20,),
              new ListTile(
                title: new TextField(
                  decoration: new InputDecoration(

                    hintText: "Có bị bất kỳ vấn đề nào khác không ?",
                  ),
                ),
              ),
                const Divider(
                  height: 1.0,
                ),
              ],
          ),
          Padding(
            padding: const EdgeInsets.all(12),
            child: SizedBox(
              width: double.infinity,
              height: 45,
              child: RaisedButton(
                color: Color.fromRGBO(253, 158, 121, 1),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(8))),
                onPressed: () {
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: (context) => RescueHome(),
                  ));
                },
                child: Text("Đã cứu trợ",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    )),
              ),
            ),
          ),
        ],
      ),
    );
    // );
  }

  void uploadImages() {
    for (var imageFile in images) {
      postImage(imageFile).then((downloadUrl) {
        imageUrls.add(downloadUrl.toString());
        if (imageUrls.length == images.length) {
          String documnetID = DateTime.now().millisecondsSinceEpoch.toString();
          Firestore.instance
              .collection('images')
              .document(documnetID)
              .setData({'urls': imageUrls}).then((_) {
            SnackBar snackbar =
                SnackBar(content: Text('Uploaded Successfully'));
            widget.globalKey.currentState.showSnackBar(snackbar);
            setState(() {
              images = [];
              imageUrls = [];
            });
          });
        }
      }).catchError((err) {
        print(err);
      });
    }
  }

  Future<void> loadAssets() async {
    List<Asset> resultList = List<Asset>();
    try {
      resultList = await MultiImagePicker.pickImages(
        maxImages: 10,
        enableCamera: true,
        selectedAssets: images,
        cupertinoOptions: CupertinoOptions(takePhotoIcon: "chat"),
        materialOptions: MaterialOptions(
          actionBarColor: "#abcdef",
          actionBarTitle: "Upload Image",
          allViewTitle: "All Photos",
          useDetailsView: false,
          selectCircleStrokeColor: "#000000",
        ),
      );
      print(resultList.length);
      print((await resultList[0].getThumbByteData(122, 100)));
      print((await resultList[0].getByteData()));
      print((await resultList[0].metadata));
    } on Exception {}

    // If the widget was removed from the tree while the asynchronous platform
    // message was in flight, we want to discard the reply rather than calling
    // setState to update our non-existent appearance.
    if (!mounted) return;
    setState(() {
      images = resultList;
    });
  }

  Future<dynamic> postImage(Asset imageFile) async {
    String fileName = DateTime.now().millisecondsSinceEpoch.toString();
    StorageReference reference = FirebaseStorage.instance.ref().child(fileName);
    StorageUploadTask uploadTask =
        reference.putData((await imageFile.getByteData()).buffer.asUint8List());
    StorageTaskSnapshot storageTaskSnapshot = await uploadTask.onComplete;
    print(storageTaskSnapshot.ref.getDownloadURL());
    return storageTaskSnapshot.ref.getDownloadURL();
  }
}
