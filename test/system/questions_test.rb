require "application_system_test_case"

class QuestionsTest < ApplicationSystemTestCase
  test "visiting /ask renders the form" do
    visit ask_url
    assert_selector "h1", text: "Ask your coach here"
  end

  test "saying Hello yields a grumpy response from the coach" do
    visit ask_url
    fill_in "question_form", with: "Hello"
    click_on "Ask!"

    assert_text "I don't care, get dressed and go to work!"
  end

  test "Take a screenshot of the answer page" do
    visit ask_url
    fill_in "question_form", with: "What's up?"
    click_on "Ask!"

    take_screenshot
  end
end
