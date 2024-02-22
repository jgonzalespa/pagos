require "application_system_test_case"

class CapitulosTest < ApplicationSystemTestCase
  setup do
    @capitulo = capitulos(:one)
  end

  test "visiting the index" do
    visit capitulos_url
    assert_selector "h1", text: "Capitulos"
  end

  test "should create capitulo" do
    visit capitulos_url
    click_on "New capitulo"

    fill_in "Name", with: @capitulo.name
    click_on "Create Capitulo"

    assert_text "Capitulo was successfully created"
    click_on "Back"
  end

  test "should update Capitulo" do
    visit capitulo_url(@capitulo)
    click_on "Edit this capitulo", match: :first

    fill_in "Name", with: @capitulo.name
    click_on "Update Capitulo"

    assert_text "Capitulo was successfully updated"
    click_on "Back"
  end

  test "should destroy Capitulo" do
    visit capitulo_url(@capitulo)
    click_on "Destroy this capitulo", match: :first

    assert_text "Capitulo was successfully destroyed"
  end
end
