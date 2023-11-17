class OwnerChangeMailer < ApplicationMailer
  default from: 'from@example.com'

  def owner_change_mail(team)
    @email = User.find(team.owner_id).email
    mail to: @email, subject: "大事なお知らせ"
  end
end
