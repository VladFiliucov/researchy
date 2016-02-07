class SendResearchJob < ActiveJob::Base
  queue_as :default

  def perform(research_id, user_id)
    user = User.find(user_id)
    research = Research.find(research_id)

    ResearchMailer.send_research(research, user).deliver
  end
end
