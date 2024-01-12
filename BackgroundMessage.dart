FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage message) {
  // Обработка нажатия на уведомление, когда приложение было полностью закрыто
  String screenName = message.data['screen'];
  // Навигация на определенный экран
});

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);

  FirebaseMessaging.instance.getInitialMessage().then((RemoteMessage message) {
    if (message != null) {
      // Обработка открытия приложения из уведомления
      String screenName = message.data['screen'];
      // Навигация на определенный экран
    }
  });
}
