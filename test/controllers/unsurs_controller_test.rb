require 'test_helper'

class UnsursControllerTest < ActionDispatch::IntegrationTest
  setup do
    @unsur = unsurs(:one)
  end

  test "should get index" do
    get unsurs_url, as: :json
    assert_response :success
  end

  test "should create unsur" do
    assert_difference('Unsur.count') do
      post unsurs_url, params: { unsur: { deskripsi: @unsur.deskripsi, golongan: @unsur.golongan, icon: @unsur.icon, masa_atom: @unsur.masa_atom, nama_unsur: @unsur.nama_unsur, nomor_atom: @unsur.nomor_atom, periode: @unsur.periode, simbol: @unsur.simbol } }, as: :json
    end

    assert_response 201
  end

  test "should show unsur" do
    get unsur_url(@unsur), as: :json
    assert_response :success
  end

  test "should update unsur" do
    patch unsur_url(@unsur), params: { unsur: { deskripsi: @unsur.deskripsi, golongan: @unsur.golongan, icon: @unsur.icon, masa_atom: @unsur.masa_atom, nama_unsur: @unsur.nama_unsur, nomor_atom: @unsur.nomor_atom, periode: @unsur.periode, simbol: @unsur.simbol } }, as: :json
    assert_response 200
  end

  test "should destroy unsur" do
    assert_difference('Unsur.count', -1) do
      delete unsur_url(@unsur), as: :json
    end

    assert_response 204
  end
end
