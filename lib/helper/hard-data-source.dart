import 'package:aladin/constants/color.dart';
import 'package:aladin/constants/string.dart';
import 'package:aladin/helper/salary-details-item.dart';
import 'package:aladin/modules/all-term/model/term-item.dart';

import '../modules/notice-board/model/notice-board-item.dart';
import '../modules/pay-slip/model/pay-slip.dart';

class GlobalDataSource {
  static List<SalarDetailItemModel> getSalaryDetailsItems() => [
        SalarDetailItemModel(
            title: "Basic Salary", percentage: 10, color: ConstantColors.posh),
        SalarDetailItemModel(
            title: "HRA", percentage: 40, color: ConstantColors.puple),
        SalarDetailItemModel(
            title: "Medical Allowance",
            percentage: 12,
            color: ConstantColors.redMard),
        SalarDetailItemModel(
            title: "Incentive & Bonuses",
            percentage: 15,
            color: ConstantColors.blue),
        SalarDetailItemModel(
            title: "Overtime Pay", percentage: 20, color: ConstantColors.green),
      ];

  static List<SalarDetailItemModel> getDuesItems() => [
        SalarDetailItemModel(
            title: "Tution Fees", percentage: 10, color: ConstantColors.posh),
        SalarDetailItemModel(
            title: "Transport Fees",
            percentage: 40,
            color: ConstantColors.puple),
        SalarDetailItemModel(
            title: "Exam Fees", percentage: 12, color: ConstantColors.lightRed),
        SalarDetailItemModel(
            title: "Librery Fees", percentage: 15, color: ConstantColors.blue),
        SalarDetailItemModel(
            title: "Lab Fees", percentage: 20, color: ConstantColors.green),
      ];

  static List<NoticeBoardItemModel> getNoticeBoardItems() => [
        NoticeBoardItemModel(
            title: "Exam Notice",
            details: ConstantStrings.loremText,
            downloadUrl: "downloadUrl"),
        NoticeBoardItemModel(
            title: "Holiday Notice",
            details: ConstantStrings.loremText,
            downloadUrl: "downloadUrl"),
      ];
  static List<PaySlipModel> getPaySplipItem() => [
        PaySlipModel(
            title: "Tuition Fee",
            date: '20/11/2023',
            time: "10.20pm",
            icon: 'assets/icons/nagad.png',
            amount: "2000",
            downloadUrl: "downloadUrl"),
        PaySlipModel(
            amount: "3000",
            title: "Picnic Fee",
            date: '31/4/2023',
            time: "2.30pm",
            icon: 'assets/icons/bkashicon.png',
            downloadUrl: "downloadUrl"),
        PaySlipModel(
            amount: "1000",
            title: "Transport Fee",
            date: '12/23/2023',
            time: "4.3pm",
            icon: 'assets/icons/rocketicon.png',
            downloadUrl: "downloadUrl"),
        PaySlipModel(
            amount: "1300",
            title: "Drawing Fee",
            date: '20/11/2023',
            time: "10.20pm",
            icon: 'assets/icons/nagad.png',
            downloadUrl: "downloadUrl"),
        PaySlipModel(
            amount: "2000",
            title: "Picnic Fee",
            date: '31/4/2023',
            time: "2.30pm",
            icon: 'assets/icons/nagad.png',
            downloadUrl: "downloadUrl"),
        PaySlipModel(
            amount: "2000",
            title: "Transport Fee",
            date: '12/23/2023',
            time: "4.3pm",
            icon: 'assets/icons/rocketicon.png',
            downloadUrl: "downloadUrl"),
      ];

  static List<TermModel> getResuleSheet() => [
        TermModel(subject: "Bangla", mark: "80", grade: "A+"),
        TermModel(subject: "English", mark: "70", grade: "A"),
        TermModel(subject: "Math", mark: "67", grade: "A-"),
        TermModel(subject: "Biology", mark: "80", grade: "C"),
        TermModel(subject: "Chemisty", mark: "80", grade: "B"),
      ];

  static List<TermModel> getMonthSheet() => [
        TermModel(subject: "Jan", mark: "80", grade: "A+"),
        TermModel(subject: "Fab", mark: "70", grade: "A"),
        TermModel(subject: "Mar", mark: "67", grade: "A-"),
        TermModel(subject: "Apr", mark: "80", grade: "C"),
        TermModel(subject: "May", mark: "80", grade: "B"),
        TermModel(subject: "Jun", mark: "80", grade: "B"),
        TermModel(subject: "Jul", mark: "80", grade: "B"),
        TermModel(subject: "Aug", mark: "80", grade: "B"),
        TermModel(subject: "Sep", mark: "80", grade: "B"),
        TermModel(subject: "Oct", mark: "80", grade: "B"),
        TermModel(subject: "Nov", mark: "80", grade: "B"),
        TermModel(subject: "Dec", mark: "80", grade: "B"),
      ];

  static List<TermModel> getDaySheet() => [
        TermModel(subject: "Sat", mark: "80", grade: "A+"),
        TermModel(subject: "Sun", mark: "70", grade: "A"),
        TermModel(subject: "Mon", mark: "67", grade: "A-"),
        TermModel(subject: "Tue", mark: "80", grade: "C"),
        TermModel(subject: "Wed", mark: "80", grade: "B"),
        TermModel(subject: "Thu", mark: "80", grade: "B"),
        TermModel(subject: "Fri", mark: "80", grade: "B"),
      ];

  static List<dynamic> getDayWithAttendencSheet() => [
        {
          "subject": "Sat",
          "list": [
            {"no": "1", "color": ConstantColors.lightRed, "status": "absent"},
            {"no": "9", "color": ConstantColors.redMard, "status": "absent"},
            {"no": "16", "color": ConstantColors.blue, "status": "hoilay"},
            {"no": "22", "color": ConstantColors.green, "status": "present"},
          ]
        },
        {
          "subject": "Sun",
          "list": [
            {"no": "2", "color": ConstantColors.redMard, "status": "absent"},
            {"no": "9", "color": ConstantColors.redMard, "status": "absent"},
            {"no": "16", "color": ConstantColors.green, "status": "present"},
            {"no": "22", "color": ConstantColors.green, "status": "present"},
          ]
        },
        {
          "subject": "Mon",
          "list": [
            {"no": "2", "color": ConstantColors.redMard, "status": "absent"},
            {"no": "9", "color": ConstantColors.redMard, "status": "absent"},
            {"no": "16", "color": ConstantColors.green, "status": "present"},
            {"no": "22", "color": ConstantColors.green, "status": "present"},
          ]
        },
        {
          "subject": "Tue",
          "list": [
            {"no": "1", "color": ConstantColors.green, "status": "present"},
            {"no": "8", "color": ConstantColors.redMard, "status": "absent"},
            {"no": "15", "color": ConstantColors.green, "status": "present"},
            {"no": "21", "color": ConstantColors.green, "status": "present"},
          ],
        },
        {
          "subject": "Wed",
          "list": [
            {"no": "2", "color": ConstantColors.redMard, "status": "absent"},
            {"no": "9", "color": ConstantColors.redMard, "status": "absent"},
            {"no": "16", "color": ConstantColors.green, "status": "present"},
            {"no": "22", "color": ConstantColors.green, "status": "present"},
          ],
        },
        {
          "subject": "Thu",
          "list": [
            {
              "no": "3",
              "color": ConstantColors.softYellow,
              "status": "weekend"
            },
            {"no": "10", "color": ConstantColors.redMard, "status": "absent"},
            {"no": "17", "color": ConstantColors.green, "status": "present"},
            {"no": "23", "color": ConstantColors.green, "status": "present"},
          ],
        },
        {
          "subject": "Fri",
          "list": [
            {"no": "4", "color": ConstantColors.redMard, "status": "absent"},
            {"no": "11", "color": ConstantColors.redMard, "status": "absent"},
            {"no": "18", "color": ConstantColors.blue, "status": "holiday"},
            {"no": "24", "color": ConstantColors.green, "status": "present"},
          ],
        },
      ];
}
