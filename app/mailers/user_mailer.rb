class UserMailer < ApplicationMailer
    default from: 'alien@aliens.com'
  
    def welcome_email
      mail(to: 'jrshort89@gmail.com', subject: 'All your base are belongs to us')
    end
  end
  