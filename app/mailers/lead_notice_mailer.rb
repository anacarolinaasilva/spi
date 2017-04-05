class LeadNoticeMailer < ApplicationMailer

   def lead_alert_email(lead)
     @lead = lead.name
     #@link = user_url(user) ??
    #  mail(
    #    :to      => "anacarolina.usp@gmail.com",
    #    :subject => "[SPI Borescopes] Welcome Board!"
    #  )
    # mail(:to => "carolokausp@gmail.com", :from => 'anacarolina.usp@gmail.com', :subject => "On The Map") do |format|
    #  format.text { render :text => body }
    #  format.html { render :text => body }
  end

end #class LeadNoticeMailer
