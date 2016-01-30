require "rails_helper"

RSpec.describe ResearchMailer, type: :mailer do
  describe "send_research" do
    let(:research) {FactoryGirl.create(:research)}
    let(:user) {FactoryGirl.create(:user)}
    let(:mail) { ResearchMailer.send_research(research, user) }

    it "renders the headers" do
      expect(mail.subject).to eq("Your research from researchy.herokuapp.com")
      expect(mail.to).to include(user.email)
      expect(mail.from).to eq(["researchy.herokuapp@gmail.com"])
    end

    it "renders the body" do
      expect(mail.body.encoded).to match(research.body)
    end
  end

end
