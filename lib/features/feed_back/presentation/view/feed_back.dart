import 'package:aast_restuarant/features/custom_star_rating/presentation/view/custom_star_rating.dart';
import 'package:aast_restuarant/features/feed_back/presentation/controller/feed_back_cubit/feed_back_cubit.dart';
import 'package:aast_restuarant/features/feed_back/presentation/controller/feed_back_cubit/feed_back_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quickalert/quickalert.dart';

class FeedbackScreen extends StatelessWidget {
  const FeedbackScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            color: Colors.blue[100],
            // Add your content here if needed
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.25,
            color: Colors.indigo.shade900,
            child: Stack(
              children: <Widget>[
                Positioned(
                  left: -50,
                  top: -50,
                  child: Opacity(
                    opacity: 0.1,
                    child: Image.asset(
                      'images/AAST.png',
                      width: 500.0,
                      height: 500.0,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.only(
                  left: 20,
                  right: 30,
                  top: 230,
                  bottom: 450), // Adjust the padding as needed
              child: CustomStarRating(
                initialRating: FeedBackCubit.get(context).rating.toDouble(),
                onRatingChanged: (rating) {
                  FeedBackCubit.get(context).rating = rating.toInt();
                  debugPrint(
                      'User rated: ${FeedBackCubit.get(context).rating}');
                },
              ),
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.only(left: 10, right: 4, top: 350, bottom: 2),
            child: SingleChildScrollView(
              child: TextField(
                controller: FeedBackCubit.get(context).commentController,
                maxLines: null, // Allow unlimited lines
                decoration: InputDecoration(
                  hintText: 'Type your comment...',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.only(left: 100, right: 4, top: 450, bottom: 2),
            child: SizedBox(
              width: 250,
              height: 60,
              child: BlocConsumer<FeedBackCubit, FeedBackState>(
                listener: (context, state) {
                  if (state is SendFeedBackSuccess) {
                    QuickAlert.show(
                        context: context, type: QuickAlertType.success);
                  } else if (state is SendFeedBackFailure) {
                    QuickAlert.show(
                        context: context,
                        type: QuickAlertType.error,
                        text: state.eMessage);
                    print(state.eMessage);
                  }
                },
                builder: (context, state) {
                  return TextButton(
                    onPressed: () {
                      FeedBackCubit.get(context).addComment();
                    },
                    style: TextButton.styleFrom(
                      padding: const EdgeInsets.all(15),
                      foregroundColor: const Color(0xFFEEB340),
                      backgroundColor: Colors
                          .indigo.shade900, // Set the button background color
                    ),
                    child: state is SendFeedBackLoading
                        ? const Center(
                            child: CircularProgressIndicator(),
                          )
                        : const Text(
                            'Submit',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                            ),
                          ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
