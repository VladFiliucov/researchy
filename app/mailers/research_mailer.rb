class ResearchMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.research_mailer.send_research.subject
  #
  default from: 'researchy.herokuapp@gmail.com'

  def send_research(research, user)
    @research = research
    @user = user

    mail(to: @user.email, subject: 'Your research from researchy.herokuapp.com')
  end
end
