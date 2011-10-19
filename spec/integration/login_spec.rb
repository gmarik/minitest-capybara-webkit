require 'spec_helper'

describe 'Logging integration' do
  it 'logs you in with valid user/pass' do
    visit '/'
    fill_in 'session_login', with: 'autotest'
    fill_in 'session_password', with: 'autotest'
    click_button 'Log in'
    within "#flashes" do
      page.must_be :has_content?, 'Logged in successfully'
    end
  end
end

