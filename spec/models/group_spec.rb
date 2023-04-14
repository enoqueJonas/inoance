require 'rails_helper'

RSpec.describe Group, type: :model do
    let(:user) { User.create(name: 'Enoque') }

    subject{ Group.new(name: 'Group1', icon: 'https//example.png', user_id: user.id) }

    before { subject.save }

    it 'should have a name' do
        subject.name = nil
        expect(subject).to_not be_valid
    end
end