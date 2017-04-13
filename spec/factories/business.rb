FactoryGirl.define do
  factory :business do
    sequence :name do |n|
      "Name#{n}"
    end
    sequence :address do |n|
      "Street#{n}"
    end
    zipcode "17111"
    sequence :description do |n|
      "Description#{n}"
    end
    phone "972111111"
    sequence :website do |n|
      "http://www.company#{n}.com"
    end
    image_url { Faker::LoremPixel.image("700x400", false, 'city') }
  end
end
