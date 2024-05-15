require 'rails_helper'

describe 'Visitante acessa tela inicial' do
  it 'e é direcionada para lista de buffets' do
    # Arrange

    visit(root_path)

    expect(current_path).to eq(buffets_path)
  end

  it 'e vê o nome da app' do
    # Arrange

    visit(root_path)

    expect(page).to have_content('CADE BUFFET?')
  end

  it 'e vê caixa de pesquisa' do
    # Arrange

    visit(root_path)

    within('form') do
      expect(page).to have_content('Search for')
      expect(page).to have_button('Search')
    end
  end

  it 'e vê campo de login de clientes' do
    # Arrange

    visit(root_path)

    within('#client_login') do
      expect(page).to have_link('Sign In')
      expect(page).to have_link('Sign Up')
    end
  end

  it 'e vê campo de login de buffet_profile' do
    # Arrange

    visit(root_path)

    within('#buffet_profile_login') do
      expect(page).to have_link('Sign In')
      expect(page).to have_link('Sign Up')
    end
  end
  it 'e vê campo de pesquisa por buffet' do
    # Arrange

    visit(root_path)

    within('#buffet_profile_login') do
      expect(page).to have_link('Sign In')
      expect(page).to have_link('Sign Up')
    end
  end

  it 'e vê que não tem buffet cadastrado' do
    # Arrange

    visit(root_path)

    expect(page).to have_content('Não existem buffets cadastrados')
  end


end