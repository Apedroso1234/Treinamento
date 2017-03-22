Dado(/^que eu esteja no Site do Google$/) do
  visit "http://Google.com"
end

Dado(/^pesquiso pelo Site UOL$/) do
  fill_in 'q', with: "UOL.com.br"
end

Dado(/^entro no Site do UOL$/) do
  click_on('UOL - O melhor conteúdo')
end

Entao(/^Acesso a área de economia$/) do
find('.menu-uol-item.area-economia').click
end

Entao(/^comparar cotação do Dolar se é menor que "([^"]*)"$/) do |cotacao|
	@dolar = find(:xpath, '//*[@id="cambio"]/ul/li[1]/p[2]').text[9,15]
	@dolar = @dolar.gsub(',','.') 
	if @dolar.to_f <= cotacao.gsub(",",".").to_f
	 	puts @dolar.to_f
	else
		puts "ERRO"
	end
end