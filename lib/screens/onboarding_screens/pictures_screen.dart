import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../blocs/images/images_bloc.dart';
import './widgets/widgets.dart';

class Pictures extends StatefulWidget {
  final TabController tabController;

  const Pictures({
    super.key,
    required this.tabController,
  });

  @override
  State<Pictures> createState() => _PicturesState();
}

class _PicturesState extends State<Pictures> {
  @override
  void initState() {
    LoadImages();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 30.0,
        vertical: 50.0,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomTextHeader(tabController: widget.tabController, text: 'Add 2 or More Pictures'),
              const SizedBox(
                height: 10,
              ),
              BlocBuilder<ImagesBloc, ImagesState>(
                builder: (context, state) {
                  if (state is ImagesLoading) {
                    context.read<ImagesBloc>().add(LoadImages());
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  }

                  if (state is ImagesLoaded) {
                    var imagesCount = state.imageUrls.length;

                    return Column(
                      children: [
                        Row(
                          children: [
                            (imagesCount > 0) ? CustomImageContainer(imageUrl: state.imageUrls[0]) : const CustomImageContainer(),
                            (imagesCount > 1) ? CustomImageContainer(imageUrl: state.imageUrls[1]) : const CustomImageContainer(),
                            (imagesCount > 2) ? CustomImageContainer(imageUrl: state.imageUrls[2]) : const CustomImageContainer(),
                          ],
                        ),
                        Row(
                          children: [
                            (imagesCount > 3) ? CustomImageContainer(imageUrl: state.imageUrls[3]) : const CustomImageContainer(),
                            (imagesCount > 4) ? CustomImageContainer(imageUrl: state.imageUrls[4]) : const CustomImageContainer(),
                            (imagesCount > 5) ? CustomImageContainer(imageUrl: state.imageUrls[5]) : const CustomImageContainer(),
                          ],
                        ),
                      ],
                    );
                  } else {
                    return const Text("Somthing went wrong");
                  }
                },
              ),
            ],
          ),
          CustomFooter(tabController: widget.tabController, index: 4),
        ],
      ),
    );
  }
}
