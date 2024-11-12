# test_notification.rb
require_relative 'notification_service'

# Llama al método de clase directamente sin instanciar
NotificationService.send_email('user@example.com', 'Test Subject', 'This is a test notification')

