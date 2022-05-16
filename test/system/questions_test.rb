require "application_system_test_case"

class QuestionsTest < ApplicationSystemTestCase
  test 'visiting /ask renders the form' do
    visit ask_url
    assert_selector 'p', text: 'Ask your coach anything'
    fill_in "question", with: "Hello"
    click_on "Ask"
    gem "launchy"
    take_screenshot
  end
end
