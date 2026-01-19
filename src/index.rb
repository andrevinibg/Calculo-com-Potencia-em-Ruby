# ==========================================
# Autor: André Vinicius Gonçalves
# Projeto: Cálculo com Potência em Ruby
# Curso: Formação Ruby Developer (DIO)
# ==========================================

# Cria um array vazio para armazenar os números digitados pelo usuário
numeros = []

# Variável de controle para exibir a contagem (1º, 2º, 3º...) na tela
i = 1

# Limpa o console para uma melhor experiência visual (funciona no Windows)
system "cls" 
puts "Bem-vindo à calculadora de potências!"
puts "-------------------------------------"

# Estrutura de repetição que executa o bloco 3 vezes
3.times do
  # Exibe a mensagem pedindo o número, usando interpolação para mostrar o contador 'i'
  print "Digite o #{i}º número: "
  
  # Captura o dado, remove a quebra de linha (chomp), converte para inteiro (to_i) e salva no array (push)
  numeros.push gets.chomp.to_i
  
  # Incrementa o contador para a próxima volta
  i += 1
end

# Utiliza o método .map para criar um novo array baseado no original
# Ele percorre cada item (x) e aplica a lógica de potência
novo_numeros = numeros.map do |x|
  # Eleva o número atual à 3ª potência (cubo)
  x ** 3
end

# Exibe o resultado final formatado
puts "\n-------------------------------------"
puts "Resultado do cálculo (3ª Potência): "
puts "#{novo_numeros}"
puts "-------------------------------------"