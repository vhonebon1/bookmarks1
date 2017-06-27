feature 'creating links' do

  scenario 'I can add a new link to the database' do

    visit '/links/new'
    fill_in 'title', with: 'Facebook'
    fill_in 'url', with: 'http://www.google.com/'
    click_button 'Add bookmark'

    expect(current_path).to eq '/links'

    within 'ul#links' do
      expect(page).to have_content('Facebook')
    end
  end
end
