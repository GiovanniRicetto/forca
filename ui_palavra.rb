def boasvindas
    puts "Bem Vindo ao Jogo da Forca do Gio. Insira seu nome abaixo e tecle enter"
    puts "\n"
    nome = gets.strip
    puts "\n\n"
    puts "Bem vindo, #{nome}"
    puts "\n"
    nome
end

def secret_word    

    puts "Estou escolhendo um palavra secreta..."
    sorteado = "programador"
    sleep (1)
    puts "..."
    sleep(1)
    puts  "Escolhido! Tente adivinhar! A palavra possui #{sorteado.size} letras!"
    puts "\n"
    sorteado
end

def wtpa
    sleep(0.5)
    puts "Quer jogar novamente? S/N"
    wa = gets.strip
    wtpaa = wa.upcase == "S"
end

def triesxerrors (chutes, erros)
    puts "\n"
    puts "erros até agora #{erros}"
    puts "erros até agora #{chutes}"
end

def pedechute chutes, erros
    triesxerrors chutes, erros
    sleep(0.5)
    puts "Entre com uma palavra"
    chute = gets.strip
    sleep(1)
    puts "\nSerá que acertou?"
    chute
end

def alreadykick chute
    sleep(0.5)
    puts "\nVc já chutou! #{chute}"
end

def notfoundletter
    sleep(0.5)
    puts "\nLetra não encontrada"
end

def foundletters lettersfindout
    sleep(0.5)
    puts "\n#{lettersfindout} Letra(s) encontrada(s)"
end

def win
    sleep(1)
    puts "\nParabens. Vc acertou."
end

def quack
    sleep(1)
    puts "\nErrou"
end

def ending_game nowpoints
    puts "\nVocê ganhou #{nowpoints} pontos."
end

