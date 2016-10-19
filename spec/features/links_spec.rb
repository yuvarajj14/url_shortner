require 'rails_helper'
describe 'managing advertisement by business development admin', js: true do
  it 'Shortening the url' do
    visit new_link_path
    fill_in "link_original_url", with: 'https://www.google.co.in/?gfe_rd=cr&ei=u-EFWOLiJeOK8Qf4kbmQCg&gws_rd=ssl'
    click_button('Save Link')
    expect(page).to have_content('https://www.google.co.in/?gfe_rd=cr&ei=u-EFWOLiJeOK8Qf4kbmQCg&gws_rd=ssl')
    expect(page).to have_content(Link.last.shorted_url)
    href = "http://localhost:3000/#{Link.last.shorted_url}"
    expect(page).to have_content("google")
  end
end