module Helpers
  def sign_in(user)
    post '/users/sign_in', params: { session: { email: user.email, password: user.password } }
  end
end
