class LeadNotifierMailer < ApplicationMailer



  # send a signup email to the user, pass in the user object that   contains the user's email address
  # def send_signup_email
  #   mail( :to => "anacarolina.usp@gmail.com",
  #   :subject => 'Thanks for signing up for our amazing app' )
  # end

  def send_signup_email
      #@lead = lead
      mg_client = Mailgun::Client.new ENV['API_KEY_MAILGUN']
      message_params = {:from    => ENV['gmail_username'],
                        :to      => "anacsilva.webdev@gmail.com",
                        :subject => 'Sample Mail using Mailgun API',
                        :text    => 'This mail is sent using Mailgun API via mailgun-ruby'}
      mg_client.send_message ENV['DOMAIN_MAILGUN'], message_params
    end


end
