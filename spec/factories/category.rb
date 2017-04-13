FactoryGirl.define do
  factory :category do
    sequence :name do |n|
      "Category#{n}"
    end
    image_url { Faker::LoremPixel.image("700x400", false, 'city') }
  end
end
