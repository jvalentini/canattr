require 'spec_helper'

class CanAttr
  attr_accessor :name, :password

  def password=(password)
  end
end

describe 'CanAttr' do
  it 'allows setting the name field' do
    user = CanAttr.new
    user.name = 'John'

    expect(user.name).to eq('John')
  end

  it 'fails to set the password field' do
    user = CanAttr.new
    user.password = 'abc123'

    expect(user.password).not_to eq('abc123')
  end
end
