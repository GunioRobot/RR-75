

Dado /^que estou na pagina inicial$/ do
 visit "/"
end

E /^preencho o campo "([^\"]*)" com "([^\"]*)"$/ do |campo, valor|
  fill_in(campo, :with => valor)
end

E /^aperto o botao "([^\"]*)"$/ do |botao|
 click_button(botao)
end

Entao /^eu deveria ver "([^\"]*)"$/ do |texto|
 page.should have_content(texto)
end

Entao /^mostra a tela$/ do
  save_and_open_page
end

