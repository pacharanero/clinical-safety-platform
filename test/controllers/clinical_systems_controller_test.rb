require "test_helper"

class ClinicalSystemsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @clinical_system = clinical_systems(:one)
  end

  test "should get index" do
    get clinical_systems_url
    assert_response :success
  end

  test "should get new" do
    get new_clinical_system_url
    assert_response :success
  end

  test "should create clinical_system" do
    assert_difference("ClinicalSystem.count") do
      post clinical_systems_url, params: { clinical_system: { clinical_safety_officer_id: @clinical_system.clinical_safety_officer_id, description: @clinical_system.description, go_live_date: @clinical_system.go_live_date, organisation_id: @clinical_system.organisation_id, review_date: @clinical_system.review_date, supplier_id: @clinical_system.supplier_id, system_name: @clinical_system.system_name, technical_owner_id: @clinical_system.technical_owner_id } }
    end

    assert_redirected_to clinical_system_url(ClinicalSystem.last)
  end

  test "should show clinical_system" do
    get clinical_system_url(@clinical_system)
    assert_response :success
  end

  test "should get edit" do
    get edit_clinical_system_url(@clinical_system)
    assert_response :success
  end

  test "should update clinical_system" do
    patch clinical_system_url(@clinical_system), params: { clinical_system: { clinical_safety_officer_id: @clinical_system.clinical_safety_officer_id, description: @clinical_system.description, go_live_date: @clinical_system.go_live_date, organisation_id: @clinical_system.organisation_id, review_date: @clinical_system.review_date, supplier_id: @clinical_system.supplier_id, system_name: @clinical_system.system_name, technical_owner_id: @clinical_system.technical_owner_id } }
    assert_redirected_to clinical_system_url(@clinical_system)
  end

  test "should destroy clinical_system" do
    assert_difference("ClinicalSystem.count", -1) do
      delete clinical_system_url(@clinical_system)
    end

    assert_redirected_to clinical_systems_url
  end
end
