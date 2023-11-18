import '../statistics_page/widgets/statistics_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:mobile_bank/core/app_export.dart';

class StatisticsPage extends StatefulWidget {
  @override
  _StatisticsPageState createState() => _StatisticsPageState();
  onTapTxtSeeAll(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.historyScreen);
  }
}

class _StatisticsPageState extends State<StatisticsPage>
    with AutomaticKeepAliveClientMixin<StatisticsPage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: Colors.transparent,
            body: SizedBox(
                width: size.width,
                child: SingleChildScrollView(
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                      Padding(
                          padding: getPadding(left: 24, top: 22, right: 24),
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text("Recent Transfer",
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle.txtPoppinsSemiBold18),
                                      GestureDetector(
                                          onTap: () {
                                            onTapTxtSeeAll(context);
                                          },
                                          child: Padding(
                                              padding:
                                                  getPadding(top: 5, bottom: 3),
                                              child: Text("See All",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtPoppinsMedium12)))
                                    ]),
                                Padding(
                                    padding: getPadding(left: 1, top: 13),
                                    child: ListView.separated(
                                        physics: NeverScrollableScrollPhysics(),
                                        shrinkWrap: true,
                                        separatorBuilder: (context, index) {
                                          return SizedBox(
                                              height: getVerticalSize(15));
                                        },
                                        itemCount: 2,
                                        itemBuilder: (context, index) {
                                          return StatisticsItemWidget();
                                        }))
                              ]))
                    ])))));
  }

  onTapTxtSeeAll(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.historyScreen);
  }
}
