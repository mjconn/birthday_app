require './birthday.rb'
require 'capybara/rspec'

feature 'Testing infrastructure' do
  scenario 'Successfully runs app' do
    visit('/')
    expect(page.status_code).to be(200)
  end
end

feature 'Page shows text' do
  scenario 'Shows welcome message' do
    visit('/')
    expect(page).to have_content('Welcome to the Birthday App!')
  end
end
