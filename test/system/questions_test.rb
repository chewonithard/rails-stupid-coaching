require "application_system_test_case"
require "test_helper"

class QuestionsTest < ApplicationSystemTestCase
  test "visiting /ask renders the form" do
    visit ask_url
    assert_selector "p", text: "Ask your coach anything"
  end

  test "saying Hello yields a grumpy response from the coach" do
    visit ask_url
    fill_in "question", with: "Hello"
    click_on "Ask"

    assert_text "I don't care, get dressed and go to work!"
  end

  test "saying I am going to work yields great from coach" do
  visit ask_url
  fill_in "question", with: "I am going to work"
  click_on "Ask"

  assert_text "Great!"
  end

  test "link exists" do
  visit answer_url + "?question=test_question"
  click_on "Ask a new question"
  assert_redirected_to controller: "questions", action: "ask"
  end
end
