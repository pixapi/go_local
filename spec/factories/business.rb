FactoryGirl.define do
  factory :business do
    sequence :name do |n|
      "Name#{n}"
    end
    image_url { Faker::LoremPixel.image("700x400", false, 'city') }
  end
end
