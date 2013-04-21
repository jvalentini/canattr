require 'spec_helper'

class CanAttr
end

class ProtectedUser < CanAttr
  attr_accessor :name, :password

  def password=(password)
  end
end

class ProtectedCard < CanAttr
  attr_accessor :phone_number, :account_number

  def account_number=(number)
  end
end

describe 'CanAttr' do
  context 'user' do
    it 'allows setting the name field' do
      user = ProtectedUser.new
      user.name = 'John'

      expect(user.name).to eq('John')
    end

    it 'fails to set the password field' do
      user = ProtectedUser.new
      user.password = 'abc123'

      expect(user.password).to be_nil
    end
  end

  context 'credit card' do
    it 'allows setting the phone number' do
      card = ProtectedCard.new
      card.phone_number = '555-5555'

      expect(card.phone_number).to eq('555-5555')
    end

    it 'fails to set the account number' do
      card = ProtectedCard.new
      card.account_number = '1234 5678'

      expect(card.account_number).to be_nil
    end
  end
end
