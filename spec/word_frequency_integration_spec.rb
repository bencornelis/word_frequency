require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the word frequency path', {:type => :feature}) do
  it('returns the frequency of the user word in the user sentence') do
    visit('/')
    fill_in('word', :with => 'happy')
    fill_in('sentence', :with => 'I am very happy, happy, happy that my code is getting reviewed today!')
    click_button('Calculate Frequency')
    expect(page).to have_content('The word "happy" appears 3 times in your sentence.')
  end
end