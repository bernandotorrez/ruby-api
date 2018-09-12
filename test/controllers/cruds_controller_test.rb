require 'test_helper'

class CrudsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @crud = cruds(:one)
  end

  test "should get index" do
    get cruds_url, as: :json
    assert_response :success
  end

  test "should create crud" do
    assert_difference('Crud.count') do
      post cruds_url, params: { crud: { field1: @crud.field1, field2: @crud.field2 } }, as: :json
    end

    assert_response 201
  end

  test "should show crud" do
    get crud_url(@crud), as: :json
    assert_response :success
  end

  test "should update crud" do
    patch crud_url(@crud), params: { crud: { field1: @crud.field1, field2: @crud.field2 } }, as: :json
    assert_response 200
  end

  test "should destroy crud" do
    assert_difference('Crud.count', -1) do
      delete crud_url(@crud), as: :json
    end

    assert_response 204
  end
end
