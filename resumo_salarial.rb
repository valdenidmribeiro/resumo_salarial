# Faça um programa para o cálculo de uma folha de pagamento, 
# sabendo que os descontos são do Imposto de Renda, que depende do 
#         salário  bruto  (conforme  tabela  abaixo)  e  3%  para  o  Sindicato  e  que  o 
# FGTS corresponde a 11% do Salário Bruto, mas não é descontado (é 
# a  empresa  que  deposita).  O  Salário  Líquido  corresponde  ao  Salário 
# Bruto  menos  os  descontos.  O  programa  deverá  pedir  ao  usuário  o 
# valor da sua hora e a quantidade de horas trabalhadas no mês. 
# o Desconto do IR: 
# o Salário Bruto até 900 (inclusive) - isento 
# o Salário Bruto até 1500 (inclusive) - desconto de 5% 
# o Salário Bruto até 2500 (inclusive) - desconto de 10% 
# o Salário Bruto acima de 2500 - desconto de 20% Imprima na tela 
# as informações, dispostas conforme o exemplo abaixo. No 
# exemplo o valor da hora é 5 e a quantidade de hora é 220. 
# Salário Bruto: (5 * 220)        : R$ 1100,00          
# (-) IR (5%)                     : R$   55,00            
# (-) INSS ( 10%)                 : R$  110,00          
# FGTS (11%)                      : R$  121,00          
# Total de descontos              : R$  165,00          
# Salário Liquido 
puts "." * 50
print "Entre com seu valor de hora de trabalho: "
valor_hora = gets.chomp.to_f

print "Entre com o número de horas trabalhadas: "
horas_trabalhadas = gets.chomp.to_i

salario_bruto = valor_hora * horas_trabalhadas
imposto_renda = 0
inss = 0.10
sindicato = 0.03
fgts = 0.11

if salario_bruto <= 900.0
  imposto_renda = 0.00
elsif salario_bruto > 900.0 && salario_bruto <= 1500.0
  imposto_renda = 0.05
elsif salario_bruto > 1500.0 && salario_bruto <= 2500.0
  imposto_renda = 0.10
else 
  imposto_renda = 0.20
end

desc_imp_renda = salario_bruto * imposto_renda
desconto_inss = salario_bruto * inss
desc_sindicato = salario_bruto * sindicato
desc_fgts = salario_bruto * fgts
total_descontos = (desc_imp_renda + desconto_inss + desc_sindicato + desc_fgts)
salario_liquido = (salario_bruto - total_descontos)


puts "\nResumo"
puts "(+) Bruto a receber: R$#{salario_bruto}"
puts "(-) Imposto renda: R$#{desc_imp_renda}"
puts "(-) INSS: R$#{desconto_inss}"
puts "(-) FGTS: #{desc_fgts}"
puts "(-) Total descontos: R$#{total_descontos}"
puts "(+) Liquido a receber: R$#{salario_liquido}"
puts "." * 50

