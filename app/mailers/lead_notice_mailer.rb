class LeadNoticeMailer < ApplicationMailer
   default from: "anacarolina.usp@gmail.com"

   def lead_alert_email(lead)
     @lead = lead.name
     #@link = user_url(user) ??
     #mg_client = Mailgun::Client.new ENV['API_KEY_MAILGUN']
     mail(
       :to      => lead.email,
       :subject => "[SPI Borescopes] Welcome Board!"
     )
      #
      #  message_params ={:from    => ENV['gmail_username'],
      #                   :to      => @lead.email,
      #                   :subject => 'Sample Mail using Mailgun API',
      #                   :text    => 'This mail is sent using Mailgun API via mailgun-ruby'}
      # mg_client.send_message ENV['DOMAIN_MAILGUN'], message_params

  end
end #class LeadNoticeMailer
