require 'rails_helper'

RSpec.feature "LandingPages", type: :feature do
  # pending "add some scenarios (or delete) #{__FILE__}"
  context 'Going to website' do
      Steps 'Being welcomed' do
          Given 'I am on the landing page' do
              visit '/'
          end
          Then 'I can see a welcome message' do
              save_and_open_page 
              expect(page).to have_content("Welcome to the Car Simulator")
          end
      end
  end
end
