FactoryBot.define do
  factory :system_requiriment do
    sequence(:name) { |n| "Basic #{n}" }
    operational_system { Faker::Computer.os }
    storage { "500 GB" }
    processor { "AMD Ryzen 7" }
    memory { "8 GB" }
    video_board { "GeForce MX 9600" }
  end
end
