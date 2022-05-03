import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:monitest/bloc/app_cubit/app_cubit.dart';
import 'package:monitest/bloc/app_cubit/app_state.dart';
import 'package:monitest/ui/components/cluster_details_header.dart';
import 'package:monitest/ui/components/loan_sections.dart';

import '../../utils/colors.dart';
import '../components/black_curved_container.dart';
import '../components/space.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  TabController? controller;
  @override
  void initState() {
    controller = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<AppCubit, AppState>(builder: (context, state) {
        if (state is AppDataLoaded) {
          return NestedScrollView(
            headerSliverBuilder: (context, value) {
              return [
                SliverAppBar(
                  expandedHeight: 400,
                  backgroundColor: Colors.black,
                  leading: BackButton(
                    color: Colors.white,
                  ),
                  pinned: true,
                  floating: false,
                  title: Text(
                    'My cluster',
                    style: TextStyle(fontSize: 17),
                  ),
                  snap: false,
                  flexibleSpace: FlexibleSpaceBar(
                    background: Container(
                      decoration: BoxDecoration(),
                      height: 1000,
                      // color: Colors.greenAccent,
                      child: Container(
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(
                                'assets/images/background.png',
                              ),
                              fit: BoxFit.cover),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            AppBar(
                              backgroundColor: Colors.transparent,
                              elevation: 0,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 15),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Expanded(
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Moni dreambig community',
                                              style: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w700,
                                                  color: Colors.white),
                                            ),
                                            HSpace(),
                                            BlackCurvedContainer(
                                                title: 'Repayment rate:',
                                                value: ' 60%',
                                                color: AppColors
                                                    .secondaryBrandDarkest),
                                            HSpace(),
                                            BlackCurvedContainer(
                                                title: 'Repayment Day:',
                                                value:
                                                    ' Every ${state.apiResponse.clusterRepaymentDay}',
                                                color: AppColors.greenLighter),
                                          ],
                                        ),
                                      ),
                                      Image.asset('assets/images/avatar.png')
                                    ],
                                  ),
                                  Divider(
                                    height: 20,
                                    color: Colors.white,
                                  ),
                                  Row(
                                    children: [
                                      Expanded(
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Cluster purse balance',
                                              style: TextStyle(
                                                  fontSize: 9,
                                                  color: Colors.white),
                                            ),
                                            HSpace(
                                              height: 5,
                                            ),
                                            Text(
                                              '₦${state.apiResponse.clusterPurseBalance}',
                                              style: TextStyle(
                                                  fontSize: 16,
                                                  color: Colors.white),
                                            ),
                                            HSpace(
                                              height: 5,
                                            ),
                                            Text(
                                              '+₦${state.apiResponse.totalInterestEarned} interest today',
                                              style: TextStyle(
                                                  fontSize: 9,
                                                  color:
                                                      AppColors.greenLighter),
                                            ),
                                          ],
                                        ),
                                      ),
                                      ElevatedButton(
                                          style: ElevatedButton.styleFrom(
                                            primary: AppColors.primaryBrandBase,
                                          ),
                                          onPressed: () {},
                                          child: Text('View Purse'))
                                    ],
                                  ),
                                  Divider(
                                    height: 20,
                                    color: Colors.white,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'Total interest earned',
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 16),
                                      ),
                                      Text(
                                        '₦${state.apiResponse.totalInterestEarned}',
                                        style: TextStyle(
                                            color:
                                                AppColors.secondaryBrandDarkest,
                                            fontSize: 16),
                                      ),
                                    ],
                                  ),
                                  Divider(
                                    height: 20,
                                    color: Colors.white,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'Total owed by members',
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 16),
                                      ),
                                      Text(
                                        '₦${state.apiResponse.totalOwedByMembers}',
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 16),
                                      ),
                                    ],
                                  ),
                                  HSpace()
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  bottom: PreferredSize(
                    preferredSize: Size.fromHeight(50),
                    child: Container(
                        color: AppColors.secondaryBrandLightest,
                        child: TabBar(
                          controller: controller,
                          labelColor: AppColors.primaryBrandBase,
                          indicatorColor: AppColors.primaryBrandBase,
                          unselectedLabelColor: Colors.black,
                          unselectedLabelStyle:
                              TextStyle(fontWeight: FontWeight.w400),
                          labelStyle: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: AppColors.primaryBrandBase),
                          tabs: const [
                            Tab(
                              child: Text('Members (9)'),
                            ),
                            Tab(
                              child: Text('Cluster Details'),
                            ),
                          ],
                        )),
                  ),
                ),
              ];
            },
            body: TabBarView(
              controller: controller,
              children: [
                SingleChildScrollView(
                  child: Column(
                    children: [
                      LoanSection(
                          title: 'Overdue Loans',
                          image: 'image',
                          name: 'Florence Tanika',
                          remark: '3 days overdue',
                          amount: '₦10,555,000 Late loan ',
                          color: AppColors.primaryBrandBase),
                      LoanSection(
                          title: 'Due Today',
                          image: 'image',
                          name: 'Florence Tanika',
                          remark: '3 days overdue',
                          amount: '₦10,555,000 Late loan ',
                          color: AppColors.primaryBrandBase),
                      LoanSection(
                          title: 'Active Loans',
                          image: 'image',
                          name: 'Florence Tanika',
                          remark: '3 days overdue',
                          amount: '₦10,555,000 Late loan ',
                          color: AppColors.greenDarkest),
                      for (int i = 0; i < 100; i++)
                        LoanSection(
                            title: 'Active Loans',
                            image: 'image',
                            name: 'Florence Tanika',
                            remark: '3 days overdue',
                            amount: '₦10,555,000 Late loan ',
                            color: AppColors.greenDarkest),
                    ],
                  ),
                ),
                SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        HSpace(),
                        ClusterDetailsHeader(
                            svg: 'naira_badge', title: 'Cluster purse setting'),
                        HSpace(),
                        Row(
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Frequency of Contribution'),
                                  Text('Monthly upfront')
                                ],
                              ),
                            ),
                            TextButton(
                              onPressed: () {},
                              child: Text(
                                'Change',
                                style: TextStyle(
                                    color: AppColors.primaryBrandBase),
                              ),
                            )
                          ],
                        ),
                        Text('₦550,000,000'),
                        Text(
                            'Your contribution is 8% of your eligible amount '),
                        HSpace(),
                        Divider(),
                        HSpace(),
                        ClusterDetailsHeader(
                            svg: 'chains', title: 'Group invite Link/Codes'),
                        HSpace(),
                        Text('Use the link or code below to invite new member'),
                        Row(
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text('Member invite code'),
                                  Text('30DF38TG000')
                                ],
                              ),
                            ),
                            TextButton(
                              onPressed: () {},
                              child: Text(
                                'Get new code',
                                style: TextStyle(
                                    color: AppColors.primaryBrandBase),
                              ),
                            )
                          ],
                        ),
                        HSpace(),
                        Divider(),
                        HSpace(),
                        ClusterDetailsHeader(
                            svg: 'indent', title: 'Loan setting'),
                        HSpace(),
                        Text('Total loan collected by cluster'),
                        Text('₦550,000,000'),
                        Row(
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text('Repayment Day'),
                                  Text('Every Monday')
                                ],
                              ),
                            ),
                            TextButton(
                              onPressed: () {},
                              child: Text(
                                'Change',
                                style: TextStyle(
                                    color: AppColors.primaryBrandBase),
                              ),
                            )
                          ],
                        ),
                        HSpace(),
                        Divider(),
                        HSpace(),
                        ClusterDetailsHeader(
                            svg: 'indent', title: 'Pending Join Request'),
                        HSpace(),
                        Text('No pending cluster join request'),
                        HSpace(),
                        Divider(),
                        HSpace(),
                        ClusterDetailsHeader(
                            svg: 'setting', title: 'Group Settings'),
                        HSpace(),
                        Text('Group rules'),
                        Text(
                            '1. Check the car’s rental terms as well, because each company has its own rules.'),
                        Text(
                            '2. Check the car’s rental terms as well, because each company has its own rules.'),
                        HSpace(),
                        Text('Group Whatsapp'),
                        HSpace(
                          height: 5,
                        ),
                        Text(
                          'https://chat.whatsapp.com/BmK1mYu9zGAGhhqi8xqQQ5',
                          style: TextStyle(color: AppColors.greenDarkest),
                        ),
                        HSpace(
                          height: 5,
                        ),
                        Row(
                          children: [
                            SvgPicture.asset('assets/images/pen.svg'),
                            WSpace(),
                            Text(
                              'Edit Settings',
                              style:
                                  TextStyle(color: AppColors.primaryBrandBase),
                            ),
                          ],
                        ),
                        HSpace(),
                        Divider(),
                        HSpace(),
                        ClusterDetailsHeader(
                            svg: 'note', title: 'Benefits earned'),
                        HSpace(),
                        Text('Total CH benefits earned'),
                        Text('₦550,000,000'),
                        Text('Available Benefits'),
                        Row(
                          children: const [
                            Text('₦550,000,000'),
                            Text('+₦5000 today'),
                          ],
                        ),
                        Row(
                          children: const [
                            Icon(
                              Icons.visibility,
                              color: AppColors.primaryBrandBase,
                              size: 20,
                            ),
                            WSpace(),
                            Text(
                              'View earning history',
                              style:
                                  TextStyle(color: AppColors.primaryBrandBase),
                            ),
                          ],
                        ),
                        HSpace(
                          height: 30,
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          );
        }
        return Center(
          child: CircularProgressIndicator(
            color: AppColors.primaryBrandBase,
          ),
        );
      }),
    );
  }
}
