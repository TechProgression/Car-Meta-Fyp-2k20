import 'dart:math';

String timeAgo(DateTime d) {
  Duration diff = DateTime.now().difference(d);
  if (diff.inSeconds < 0) {
    return "${d.day}-${d.month}-${d.year}";
  }
  if (diff.inDays > 365) {
    return "${(diff.inDays / 365).floor()} ${(diff.inDays / 365).floor() == 1 ? "year" : "years"} ago";
  }
  if (diff.inDays > 30) {
    return "${(diff.inDays / 30).floor()} ${(diff.inDays / 30).floor() == 1 ? "month" : "months"} ago";
  }
  if (diff.inDays > 7) {
    return "${(diff.inDays / 7).floor()} ${(diff.inDays / 7).floor() == 1 ? "week" : "weeks"} ago";
  }
  if (diff.inDays > 0) {
    return "${diff.inDays} ${diff.inDays == 1 ? "day" : "days"} ago";
  }
  if (diff.inHours > 0) {
    return "${diff.inHours} ${diff.inHours == 1 ? "hour" : "hours"} ago";
  }
  if (diff.inMinutes > 0) {
    return "${diff.inMinutes} ${diff.inMinutes == 1 ? "minute" : "minutes"} ago";
  }
  return "just now";
}

String mergeStrings(String str1, String str2) {
  if (str1.compareTo(str2) >= 0) {
    return str1 + str2;
  } else {
    return str2 + str1;
  }
}

getRandenNumber() {
  Random random = Random();
  return "4.${random.nextInt(5)}";
}
