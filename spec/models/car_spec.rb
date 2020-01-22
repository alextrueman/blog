require 'rails_helper'

RSpec.describe Car, type: :model do
  it { should have_and_belong_to_many(:drivers) }

  it { should validate_presence_of(:title) }

  it {
    should define_enum_for(:color).
      with_values(%i[blue yellow red])
  }
end
