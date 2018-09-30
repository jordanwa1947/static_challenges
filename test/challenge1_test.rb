require './test/test_helper'
require 'pry'

class HomepageTest < CapybaraTestCase
  def test_user_can_see_the_homepage
    visit '/'

    assert page.has_content?("")
    assert_equal 200, page.status_code
  end

  def test_user_can_see_the_homepage
    visit '/kgjl'

    assert page.has_content?("")
    assert_equal 404, page.status_code
    assert page.has_content?("Page not found.")
  end

  def test_that_about_is_visited_with_about_path
    visit '/'

    assert page.has_content?("5280 Landmarks")
  end

  def test_user_can_click_on_buildings_link
    visit '/'
    click_link("Building")

    assert page.has_current_path?("https://denverarchitecture.org")
  end

  def test_user_can_click_on_art_link
    visit '/'
    click_link("Art")

    assert page.has_current_path?("https://denverartmuseum.org")
  end

end
