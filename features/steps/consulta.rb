Dado('que eu acesse o site da petz') do                                       
    goto_login
  end                                                                           
                                                                                
  Quando('consulto o produto com: {string}') do |prod|                        
    pesquisa(prod)
  end                                                                           
                                                                                
  Então('devo ser redirecionado para a pagina de resultados da busca') do       
    expect(page).to have_text @prod
  end  
  
 
  