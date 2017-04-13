require 'rails_helper'

describe User do
  it "user can be created as an admin" do
    user = User.create(name: "lola_perez", role: 1)

    expect(user.role).to eq("admin")
    expect(user.admin?).to be_truthy
  end

  it "user can be created as a default user" do
    user = User.create(name: "teresa_martin", role: 0)

    expect(user.role).to eq("default")
    expect(user.default?).to be_truthy
  end
end
