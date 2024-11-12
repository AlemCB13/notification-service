require 'mail'

# Configuración de Mail para enviar correos
Mail.defaults do
  delivery_method :smtp, {
    address: 'smtp.gmail.com',
    port: 587,
    user_name: 'revelobladimir2@gmail.com',
    password: 'fbne kzyn bydl yrtq',
    authentication: 'plain',
    enable_starttls_auto: true
  }
end

# Servicio de notificación
class NotificationService
  def self.send_email(recipient, subject, body)
    mail = Mail.new do
      from    'revelobladimir2@gmail.com'
      to      recipient
      subject subject
      body    body
    end
    mail.deliver!
    puts "Correo enviado a #{recipient} con el asunto: #{subject}"
  end
end
