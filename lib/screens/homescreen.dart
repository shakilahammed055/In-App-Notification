import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:flutter/material.dart';
import 'package:inapp_notification/services/notification_service.dart';
import 'package:inapp_notification/widgets/notification_button.dart';
import 'package:inapp_notification/widgets/top_bar.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Theme.of(context).primaryColor, Colors.grey[200]!],
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const TopBar(title: "Awesome Notification"),
            NotificationButton(
              onpressed: () async {
                await NotificationService.showNotification(
                  title: "Title of the notification",
                  body: "body of the notification",
                );
              },
              text: "Normal Notification",
            ),
            NotificationButton(
              onpressed: () async {
                await NotificationService.showNotification(
                  title: "Title of the notification",
                  body: "Body of the Notification",
                  summary: "small Summary",
                  notificationLayout: NotificationLayout.Inbox,
                );
              },
              text: "Notification with summary",
            ),
            NotificationButton(
              onpressed: () async {
                await NotificationService.showNotification(
                  title: "Title of the notification",
                  body: "Body of the Notification",
                  summary: "small Summary",
                  notificationLayout: NotificationLayout.ProgressBar,
                );
              },
              text: "Progress Bar Notification",
            ),
            NotificationButton(
              onpressed: () async {
                await NotificationService.showNotification(
                  title: "Title of the notification",
                  body: "Body of the Notification",
                  summary: "small Summary",
                  notificationLayout: NotificationLayout.Messaging,
                );
              },
              text: "Message Notification",
            ),
            NotificationButton(
              onpressed: () async {
                await NotificationService.showNotification(
                  title: "Title of the notification",
                  body: "Body of the Notification",
                  summary: "small Summary",
                  notificationLayout: NotificationLayout.BigPicture,
                  bigPicture:
                      "https://files.technoblog.net/wp-content/uploads/2019/09/emoji.jpg",
                );
              },
              text: "Big Image Notification",
            ),
            NotificationButton(
              onpressed: () async {
                await NotificationService.showNotification(
                  title: "Title of the notification",
                  body: "Body of the Notification",
                  payload: {"navigate": "true"},
                  actionButtons: [
                    NotificationActionButton(
                      key: "cheek",
                      label: "Check it out",
                      actionType: ActionType.SilentAction,
                      color: Colors.green,
                    ),
                  ],
                );
              },
              text: "Action button Notification",
            ),
            NotificationButton(
              onpressed: () async {
                await NotificationService.showNotification(
                  title: "Scheduled Notification",
                  body: "Notification Was fired after 50 seconds",
                  scheduled: true,
                  interval: Duration(seconds: 50),
                );
              },
              text: "Scheduled Notification",
              
            ),
          ],
        ),
      ),
    );
  }
}
