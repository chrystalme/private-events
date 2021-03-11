require 'rails_helper'

RSpec.describe 'event controller', type: :system do
  describe 'index page' do
    it 'shows the right content' do
      visit events_path
      sleep(5)
      expect(page).to have_content('Private Events')
    end
  end
end

