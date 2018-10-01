require './test/test_helper'
require 'pry'

class HomepageTest < CapybaraTestCase
  def test_user_can_see_the_homepage
    visit '/'

    assert page.has_content?("5280 Landmarks")
    assert_equal 200, page.status_code
  end

  def test_user_gets_error_page_with_incorrect_url
    visit '/kgjl'

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

  def test_content_exists
    visit '/'

    assert page.has_content?("Lorem ipsum dolor sit amet, quis idque munere est ex. Eos id soluta meliore menandri, sed ex graeci prompta sapientem. Cum in verterem partiendo, quod partiendo principes vix et. Ne eam virtute abhorreant. At qui doming nemore mediocritatem, ei pri bonorum blandit, vim elitr recusabo salutatus eu.")
    assert page.has_content?("Mea adhuc persecuti in, dolorum mentitum ullamcorper his ut. Graeci scriptorem cum ea, an ignota signiferumque nec. No dicunt sanctus moderatius sed, meliore inermis ei mea. Utinam impedit maiestatis sea ad, quis efficiendi eu mel, ea solet placerat phaedrum vis. Et vix causae aliquam, commodo blandit imperdiet ex his.")
    assert page.has_content?("Duo an eleifend omittantur, te sint civibus recusabo eos. An ius corpora definiebas cotidieque. Eu pri reque sapientem contentiones, fierent conclusionemque mei in. Saepe veniam ne mei, ut facilisi omittantur nec.")
    assert page.has_content?("Nam ad quas consul salutandi, sea ad verterem quaestio. Mei ea quot dictas. Eam choro eloquentiam eu, vim cu facete scriptorem. Mel at latine veritus.")
    assert page.has_content?("Alia utinam maiorum pro te, eum ex sonet putent discere. Mea cu possit forensibus comprehensam. Mel te primis commodo, nibh labore nostrum ei mel. Ex vix adolescens suscipiantur, malorum iuvaret usu id. At mea lobortis pertinacia, scripta sententiae et mei, sumo partem pro ex. Nam movet facete ex, eos rebum nulla qualisque ea, vis malis clita efficiantur ut. At vel lorem paulo soluta, ancillae quaestio no quo, id vim blandit voluptatum.")
  end

  def test_that_headers_exist
    visit '/'
    
    assert page.has_content?("Millenium Bridge")
    assert page.has_content?("Larimer Square")
    assert page.has_content?("Molly Brown House")
  end

end
