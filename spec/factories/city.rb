FactoryGirl.define do
  factory :city do
    sequence :name do |n|
      "City#{n}"
    end
    image_url { Faker::LoremPixel.image("700x400", false, 'city') }
  end
end
