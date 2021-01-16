 

Quando('selecionar o item do resultado') do 
                                  
     find('a[href="/produto/racao-royal-canin-maxi-caes-adultos-15kg-71805"]').click
  end                                                                           
                                                                                
  Então('devo ser redirecionado para pagina com mais informações') do           
    #validar info de marca, preços, nome

    #marca
    expect(page).to have_text "Royal Canin"

    #nome do produto
    expect(page).to have_text "Ração Royal Canin Maxi - Cães Adultos - 15kg"

    
    #preco atual
    valor = find(".price-current")
    expect(valor.text).to eql "R$ 241,71"

    #preco assinante"
    expect(find(".price-subscriber")).to have_text "R$ 217,54"
  end


 