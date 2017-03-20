#language: pt
#uft-8

Funcionalidade: Sabeer informações sobre a Cotação do Dolar
  Eu como usuário do Google
  desejo acessar o site do UOL para saber a cotação do Dólar


  Cenario: Sabeer informações sobre a Cotação do Dolar
  Dado que eu esteja no Site do Google
  E pesquiso pelo Site UOL
  E entro no Site do UOL
  Entao Acesso a área de economia
  E comparar cotação do Dolar se é menor que "3,20"
  Entao se for menor o teste deverá encerrar com sucesso, e se for maior deverá quebrar