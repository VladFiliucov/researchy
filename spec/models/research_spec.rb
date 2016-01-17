require 'rails_helper'

RSpec.describe Research, type: :model do
  it "validates presence of title" do
    expect(Research.new(title: "")).to_not be_valid
  end
  it "validates presence of category" do
    expect(Research.new(category: "")).to_not be_valid
  end

  it "validates presence of author" do
    expect(Research.new(author: "")).to_not be_valid
  end

  it "validates presence of description" do
    expect(Research.new(description: "")).to_not be_valid
  end

  it "validates presence of body" do
    expect(Research.new(body: "")).to_not be_valid
  end
end
