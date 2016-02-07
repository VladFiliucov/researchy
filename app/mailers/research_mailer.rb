class ResearchMailer < ApplicationMailer

  default from: 'researchy.herokuapp@gmail.com'

  def send_research(research, user)
    @research = research
    @user = user

    mail(to: @user.email, subject: 'Your research from researchy.herokuapp.com')
  end
end
