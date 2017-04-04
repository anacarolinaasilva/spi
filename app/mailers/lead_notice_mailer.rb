class LeadNoticeMailer < ApplicationMailer
   default from: "anacarolina.usp@gmail.com"

   def lead_alert_email(lead)
     @recipient = lead.name
     #@link = user_url(user) ??
     mail(
       to: lead.email,
       from: "anacarolina.usp@gmail.com",
       subject: "[SPI Borescopes] Welcome Board!"
     )
  end
end #class LeadNoticeMailer
