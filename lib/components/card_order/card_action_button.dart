import 'package:e_service_app/providers/orders/order.action.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CardOrderAction extends StatelessWidget {
  const CardOrderAction(
      {Key key, this.isCustomer, this.activeIndex, this.index, this.result})
      : super(key: key);
  final activeIndex;
  final index;
  final result;
  final isCustomer;
  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, watch, child) {
        return result[index].status.toLowerCase() == "ingoing"
            ? watch(orderProvider).loading && activeIndex == index
                ? Positioned(
                    left: 140,
                    top: 120,
                    child: CircularProgressIndicator(),
                  )
                : Positioned(
                    bottom: 10,
                    right: 10,
                    child: AnimatedOpacity(
                      duration: Duration(milliseconds: 100),
                      opacity: activeIndex == index ? 1 : 0,
                      child: isCustomer
                          ? Container(
                              child: Text(
                                result[index].status,
                                style: TextStyle(color: Colors.white),
                              ),
                              padding: EdgeInsets.all(10.0),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(18.0),
                                color: Color.fromRGBO(33, 39, 56, 1),
                              ),
                            )
                          : InkWell(
                              // onTap: () => watch(requestProvider)
                              //     .acceptRequest(
                              //         result[index].id, "Accepted"),
                              child: Container(
                                child: Text(
                                  "Mark as done",
                                  style: TextStyle(color: Colors.white),
                                ),
                                padding: EdgeInsets.all(10.0),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(18.0),
                                  color: Color.fromRGBO(33, 39, 56, 1),
                                ),
                              ),
                            ),
                    ),
                  )
            : isCustomer 
                ? result[index].isFeedbackGiven
                    ? SizedBox()
                    : Positioned(
                        bottom: 10,
                        right: 10,
                        child: AnimatedOpacity(
                          duration: Duration(milliseconds: 100),
                          opacity: activeIndex == index ? 1 : 0,
                          child: Container(
                            child: Text(
                              "Give Feedback",
                              style: TextStyle(color: Colors.white),
                            ),
                            padding: EdgeInsets.all(10.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(18.0),
                              color: Color.fromRGBO(33, 39, 56, 1),
                            ),
                          ),
                        ),
                      )
                : Positioned(
                    bottom: 10,
                    right: 10,
                    child: AnimatedOpacity(
                      duration: Duration(milliseconds: 100),
                      opacity: activeIndex == index ? 1 : 0,
                      child: Container(
                        child: Text(
                          "${result[index].status}",
                          style: TextStyle(color: Colors.white),
                        ),
                        padding: EdgeInsets.all(10.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(18.0),
                          color: Color.fromRGBO(33, 39, 56, 1),
                        ),
                      ),
                    ),
                  );
      },
    );
  }
}
