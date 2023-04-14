require 'rails_helper'

RSpec.describe Entity, type: :model do
    let(:user){User.create(name: 'Enoque')}

    subject { Entity.new(name: 'Fries', amount: 25, user_id: user.id) }

    before { subject.save }

    it 'should have a name' do
        subject.name = nil
        expect(subject).to_not be_valid 
    end

    it 'should have amount' do
        subject.amount = nil
        expect(subject).to_not be_valid 
    end
end