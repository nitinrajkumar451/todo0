require 'rails_helper'

RSpec.describe Alpha, type: :model do
  it {should validate_presence_of(:name)}
end
