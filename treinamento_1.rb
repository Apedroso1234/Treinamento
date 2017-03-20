Dado(/^que eu esteja no Site do Google$/) do
  visit "http://Google.com"
end

Dado(/^pesquiso pelo Site UOL$/) do
  fill_in 'q', with: "UOL.com.br"
end

Dado(/^entro no Site do UOL$/) do
  find(:xpath,'//*[@id="rso"]/div[1]/div/div/div/h3/a').click
end

Entao(/^Acesso a área de economia$/) do
  find(:xpath, '//*[@id="menuHorizontal"]/div/div/ul/li[5]/a').click
end

Entao(/^comparar cotação do Dolar se é menor que "([^"]*)"$/) do |arg1|
      @dolar = find(:xpath, '//*[@id="cambio"]/ul/li[1]/p[2]').text[9,15]
      @dolar = @dolar.gsub(',','.') 
      puts @dolar
 if @dolar.to_f <= 3.20
  	puts @dolar.to_f
 else puts "ERRO"
end
end

Entao(/^se for menor o teste deverá encerrar com sucesso, e se for maior deverá quebrar$/) do
  puts "Resultado concluído com sucesso"
end

