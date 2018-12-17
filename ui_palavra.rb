def welcome
    puts "Bem Vindo ao Jogo da Forca do Gio. Insira seu nome abaixo e tecle enter"
    puts "\n"
    player = gets.strip
    puts "\n\n"
    puts "Bem vindo, #{player}"
    puts "\n"
    player
end

def choosingword    
    puts "Estou escolhendo um palavra secreta..."
    sleep (1)
    puts "..."
end

def choosedword
    sleep(1)
    puts  "Escolhido! Tente adivinhar! A palavra possui #{draw.size} letras!"
    puts "\n"
    draw
end

def wtpa
    sleep(0.5)
    puts "Quer jogar novamente? S/N"
    wa = gets.strip
    wtpaa = wa.upcase == "S"
end

def triesxerrors hunchs, errors, shadowed
    puts "\n"
    puts "Palavra secreta é #{shadowed}"
    puts "errors até agora #{errors}"
    puts "errors até agora #{hunchs}"
end

def callhunch hunchs, errors, shadowed
    sleep(0.5)
    puts "Entre com uma palavra"
    tip = gets.strip.downcase
    sleep(1)
    puts "\nSerá que acertou?"
    tip
end

def alreadykick tip
    sleep(0.5)
    puts "\nVc já chutou! #{tip}"
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