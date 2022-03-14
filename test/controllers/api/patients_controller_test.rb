require "test_helper"

class Api::PatientsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @api_patient = api_patients(:one)
  end

  test "should get index" do
    get api_patients_url, as: :json
    assert_response :success
  end

  test "should create api_patient" do
    assert_difference("Api::Patient.count") do
      post api_patients_url, params: { api_patient: {  } }, as: :json
    end

    assert_response :created
  end

  test "should show api_patient" do
    get api_patient_url(@api_patient), as: :json
    assert_response :success
  end

  test "should update api_patient" do
    patch api_patient_url(@api_patient), params: { api_patient: {  } }, as: :json
    assert_response :success
  end

  test "should destroy api_patient" do
    assert_difference("Api::Patient.count", -1) do
      delete api_patient_url(@api_patient), as: :json
    end

    assert_response :no_content
  end
end
