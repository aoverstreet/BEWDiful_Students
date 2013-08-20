class Mailer < ActionMailer::Base
  default from: "from@example.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.mailer.send_email.subject
  #
  def send_new_entry(entry, current_user)
    @greeting = "Hi"
    #@current_user = current_user.entries
    @entry = entry

    mail to: 'adam.overstreet@gmail.com',
    		from: current_user.email,
    		subject: 'Door-to-Door Donations Confirmation'
  end
  
  
end
