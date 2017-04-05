class LeadNoticeMailerPreview < ActionMailer::Preview
  def lead_alert_email.html_preview
    LeadNoticeMailer.lead_alert_email(Lead.first)
  end
end
