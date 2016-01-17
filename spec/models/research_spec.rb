require 'rails_helper'

RSpec.describe Research, type: :model do
  it "validates presence of title" do
    expect(Research.new(title: "")).to_not be_valid
  end
  it "validates presence of category"
  it "validates presence of author"
  it "validates presence of description"
  it "validates presence of body"
end
