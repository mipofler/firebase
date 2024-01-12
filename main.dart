//Инициализируйте Firebase Messaging в вашем приложении и настройте обработчики уведомлений:
  
FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);

  FirebaseMessaging.onMessage.listen((RemoteMessage message) {
    // Обработка уведомления, полученного во время работы приложения
    // Открытие определенного экрана на основе данных уведомления
	
    String screenName = message.data['screen']; // Навигация на определенный экран
  });



//обработчик фоновых уведомлений:
Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  // Обработка уведомления, полученного в фоновом режиме
  // Открытие определенного экрана на основе данных уведомления
  String screenName = message.data['screen'];
  // Навигация на определенный экран
}

// При отправке уведомления с сервера, включите параметр "click_action" вместе с параметром "data" для указания имени экрана, который должен быть открыт при нажатии на уведомление.
