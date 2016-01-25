# Preview all emails at http://localhost:3000/rails/mailers/research_mailer
class ResearchMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/research_mailer/send_research
  def send_research
    ResearchMailer.send_research(User.last)
  end

end
