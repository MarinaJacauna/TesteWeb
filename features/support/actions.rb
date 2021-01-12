module Actions
  
  def goto_login()
    visit "https://www.petz.com.br/"
  end

  def pesquisa(prod)
    find("#search").set prod
    find(".button-search").click
    
  end
 
  def info ()
    expect(page).to have_text "Royal Canin"

    #nome do produto
    expect(page).to have_text "Ração Royal Canin Maxi - Cães Adultos - 15kg"

    #preco atual
    valor = find(".price-current")
    expect(valor.text).to eql "R$ 241,71"
    
    #preco assinante
    preco_assinante = find(".price-subscriber")
    expect(preco_assinante.text).to eql "R$ 217,54"
  end
end
