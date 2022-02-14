require "application_system_test_case"

class ClinicalSystemsTest < ApplicationSystemTestCase
  setup do
    @clinical_system = clinical_systems(:one)
  end

  test "visiting the index" do
    visit clinical_systems_url
    assert_selector "h1", text: "Clinical systems"
  end

  test "should create clinical system" do
    visit clinical_systems_url
    click_on "New clinical system"

    fill_in "Clinical safety officer", with: @clinical_system.clinical_safety_officer_id
    fill_in "Description", with: @clinical_system.description
    fill_in "Go live date", with: @clinical_system.go_live_date
    fill_in "Organisation", with: @clinical_system.organisation_id
    fill_in "Review date", with: @clinical_system.review_date
    fill_in "Supplier", with: @clinical_system.supplier_id
    fill_in "System name", with: @clinical_system.system_name
    fill_in "Technical owner", with: @clinical_system.technical_owner_id
    click_on "Create Clinical system"

    assert_text "Clinical system was successfully created"
    click_on "Back"
  end

  test "should update Clinical system" do
    visit clinical_system_url(@clinical_system)
    click_on "Edit this clinical system", match: :first

    fill_in "Clinical safety officer", with: @clinical_system.clinical_safety_officer_id
    fill_in "Description", with: @clinical_system.description
    fill_in "Go live date", with: @clinical_system.go_live_date
    fill_in "Organisation", with: @clinical_system.organisation_id
    fill_in "Review date", with: @clinical_system.review_date
    fill_in "Supplier", with: @clinical_system.supplier_id
    fill_in "System name", with: @clinical_system.system_name
    fill_in "Technical owner", with: @clinical_system.technical_owner_id
    click_on "Update Clinical system"

    assert_text "Clinical system was successfully updated"
    click_on "Back"
  end

  test "should destroy Clinical system" do
    visit clinical_system_url(@clinical_system)
    click_on "Destroy this clinical system", match: :first

    assert_text "Clinical system was successfully destroyed"
  end
end
