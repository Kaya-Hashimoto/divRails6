class AgendaDeleteMailer < ApplicationMailer
  default from: 'from@example.com'
  def agenda_delete_mail(agenda)
    mail to: agenda.team.members.pluck(:email), subject: "アジェンダが削除されました"
  end
end
