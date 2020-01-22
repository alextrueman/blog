require 'rails_helper'

RSpec.describe Driver, type: :model do
  it { should have_and_belong_to_many(:cars) }

  it { should validate_presence_of(:name) }
end
