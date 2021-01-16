Dado('seleciono o produto') do
  find('a[href="/produto/racao-royal-canin-maxi-caes-adultos-15kg-71805"]').click
end                                                                   
                                                                              
Quando('clico para adicionar no carrinho') do                                 
  click_on "Adicionar ao carrinho" 
end                                                                           
                                                                              
Então('devo ser redirecionada para pagina de confirmação') do
  expect(page).to have_text "Meu Carrinho"
  expect(page).to have_text "Total"     

  #marca
  expect(page).to have_text "Royal Canin"

  #nome do produto
  expect(page).to have_text "Ração Royal Canin Maxi - Cães Adultos - 15kg"

  #preco atual
  valor = find("td.preco")
  expect(valor.text).to eql "R$ 241,71"

end                                                                                                                                              


 
                                                                                

  
  
                                                                                
                                                                          
                                                                                
                                                                            