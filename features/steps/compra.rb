                                                                     
                                                                              
Quando('clico para adicionar no carrinho') do                                 
  click_on "Adicionar ao carrinho" 
end                                                                           
                                                                              
Então('devo ser redirecionada para pagina de confirmação') do
  expect(page).to have_text "Meu Carrinho"                 
  #marca
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


 
                                                                                

  
  
                                                                                
                                                                          
                                                                                
                                                                            