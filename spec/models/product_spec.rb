require 'rails_helper'

RSpec.describe Product, type: :model do
  it { should validate_presence_of(:arabic_name) }
  it { should validate_presence_of(:english_name) }
end
