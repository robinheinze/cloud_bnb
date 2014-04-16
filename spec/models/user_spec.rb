require 'spec_helper'

describe User do
  it { should have_many :properties }

  it 'knows what properties it has' do
    test_user = FactoryGirl.create(:user)
    test_property = FactoryGirl.create(:property, :owner_id => test_user.id)
    test_user.properties.should eq [test_property]
  end
end
