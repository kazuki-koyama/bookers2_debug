class DailyMailer < ApplicationMailer

  def daily_notification
    mail(:subject => "確認メール", bcc: User.pluck(:email))
  end
end
