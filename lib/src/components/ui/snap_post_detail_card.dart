import 'package:cheese_client/src/components/ui/common/aspect_ratio_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SnapPostDetailCard extends HookConsumerWidget {
  final String title;
  final List<String> images;
  final String address;
  final String? comment;
  const SnapPostDetailCard({
    Key? key,
    required this.title,
    required this.images,
    required this.address,
    required this.comment,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedImage = useState<String>(images.first);

    void onTapedImage(String image) {
      selectedImage.value = image;
    }

    return Card(
      elevation: 0,
      shape: const RoundedRectangleBorder(
        // アンダーラインを引く
        borderRadius: BorderRadius.all(Radius.circular(16.0)),
      ),
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(title,
              style:
                  const TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold)),
          Text(address),
          const SizedBox(height: 16.0),
          _imageList(imageUrls: images, onTapedImage: onTapedImage),
          const SizedBox(height: 16.0),
          AspectRatio(
            aspectRatio: 1.0,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.network(
                selectedImage.value,
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(height: 16.0),
          Text(comment ?? "",
              style: const TextStyle(fontWeight: FontWeight.bold)),
        ]),
      ),
    );
  }

  Widget _imageList(
      {required List<String> imageUrls,
      required void Function(String) onTapedImage}) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
          children: imageUrls
              .map((e) => Row(
                    children: [
                      Container(
                          padding: const EdgeInsets.only(right: 8.0),
                          child: GestureDetector(
                            onTap: () => onTapedImage(e),
                            child: AspectRatioImage(
                              image: e,
                              size: 72.0,
                            ),
                          ))
                    ],
                  ))
              .toList()),
    );
  }
}
