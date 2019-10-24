require "application_system_test_case"

class InscricaosTest < ApplicationSystemTestCase
  setup do
    @inscricao = inscricaos(:one)
  end

  test "visiting the index" do
    visit inscricaos_url
    assert_selector "h1", text: "Inscricaos"
  end

  test "creating a Inscricao" do
    visit inscricaos_url
    click_on "New Inscricao"

    fill_in "Curso", with: @inscricao.curso_id
    fill_in "Matricula", with: @inscricao.matricula
    fill_in "Nome", with: @inscricao.nome
    check "Status" if @inscricao.status
    click_on "Create Inscricao"

    assert_text "Inscricao was successfully created"
    click_on "Back"
  end

  test "updating a Inscricao" do
    visit inscricaos_url
    click_on "Edit", match: :first

    fill_in "Curso", with: @inscricao.curso_id
    fill_in "Matricula", with: @inscricao.matricula
    fill_in "Nome", with: @inscricao.nome
    check "Status" if @inscricao.status
    click_on "Update Inscricao"

    assert_text "Inscricao was successfully updated"
    click_on "Back"
  end

  test "destroying a Inscricao" do
    visit inscricaos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Inscricao was successfully destroyed"
  end
end
