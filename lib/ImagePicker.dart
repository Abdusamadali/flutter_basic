import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class Imgpicker extends StatefulWidget {
  const Imgpicker({super.key});

  @override
  State<Imgpicker> createState() => _ImgpickerState();
}

class _ImgpickerState extends State<Imgpicker> {

  XFile? file;
  ImagePicker _picker=ImagePicker();
  List<XFile>? files;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
      title: Text('ImagePicker'),
      ),
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                color: Colors.grey.shade200,
                height: 300,
                width: 300,
                 child: Center(child:file == null? Text('image not picked'):Image.file(File(file!.path))),
              ),
              ElevatedButton(onPressed: ()async{
                final XFile? photo=await _picker.pickImage(source:ImageSource.gallery) ;
                setState(() {
                  file=photo;
                });
              },
                  child:Text('image'),
                ),
              ElevatedButton(onPressed: ()async{
                final List<XFile> photos= await _picker.pickMultiImage();
                setState(() {
                  files=photos ;
                });
                print("image picked");
                for(int i=0;i<files!.length;i++){
                  print(files?[i].path);
                }
              },
                child:Text('  images  '),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
