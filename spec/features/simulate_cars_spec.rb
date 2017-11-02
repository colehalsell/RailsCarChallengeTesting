require 'rails_helper'

RSpec.feature "SimulateCars", type: :feature do
  # pending "add some scenarios (or delete) #{__FILE__}"
  context 'Creating a car for simulating' do
      Steps 'Creating a car' do
          Given 'I am on the landing page' do
              visit '/'
      end
          When 'I fill in the car make and model year' do
              fill_in 'make', with: 'DeLorean'
              fill_in 'model_year', with: '1985'
          end
          And 'I can submit the information' do
              click_button 'Create new car'
          end
          Then "I can see the car's info" do
              expect(page).to have_content('Make: DeLorean')
              expect(page).to have_content('Year: 1985')
          end
          And 'I can see the speed of the car' do
              expect(page).to have_content('Speed: 0Km/h')
          end
          And 'I can submit the information' do
              click_button 'Increase Speed'
          end
          Then "I can see the cars speed" do
              expect(page).to have_content('Speed: 10Km/h')
          end
          And 'I can submit the information' do
              click_button 'Slow Down'
          end
          Then "I can see the car's speed" do
              expect(page).to have_content('Speed: 3Km/h')
          end
          And "I can toggle the car lights" do
              click_button 'Toggle Lights'
          end
          Then "I can see the cars lights" do
              expect(page).to have_content('Lights: false')
          end
      end
  end
end
