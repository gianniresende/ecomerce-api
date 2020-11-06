FactoryBot.define do
  factory :system_requiriment do
    sequence(:name) { |n| "Basic #{n}" }
    operational_system { "MyString" }
    storage { "MyString" }
    processor { "MyString" }
    memory { "MyString" }
    video_board { "MyString" }
  end
end
