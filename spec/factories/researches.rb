FactoryGirl.define do
  factory :research do
    author "MyString"
    title "MyString"
    category "MyString"
    description "MyString"
    body "MyText"
  end

  factory :invalid_research, class: "Research" do
    author ""
    title ""
    category ""
    description ""
    body ""
  end
end
