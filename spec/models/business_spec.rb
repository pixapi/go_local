require 'rails_helper'

RSpec.describe Business, type: :model do
  it { should belong_to(:city) }
  it { should belong_to(:category) }
end
