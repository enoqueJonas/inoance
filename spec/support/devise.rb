RSpec.configure do |config|
  config.before(:each, type: :controller) do
    @request.env['devise.mapping'] = Devise.mappings[:user]
    sign_in FactoryBot.create(:user)
  end

  config.before(:each, type: :feature) do
    driven_by :rack_test
    sign_in FactoryBot.create(:user)
  end
end
