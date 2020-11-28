FactoryBot.define do
  factory :product do
    sequence(:name) { |n| "MyString #{n}" }
    description { Faker::Lorem.paragraph }
    price { Faker::Commerce.price(range: 100.0..400.0) }
    status { :available }
    image { 
            Rack::Test::UploadedFile.new(
              Rails.root.join("spec/support/images/product_image.png")
            ) 
          }

    after :build do |product|
      product.productable = create(:game)
    end
  end
end
