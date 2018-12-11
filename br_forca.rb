require_relative 'ui_palavra'

# def winloss acertou, nowpoints, quack, erros
#     if acertou
#         win
#         nowpoints += 100
#     else
#         quack
#         nowpoints -= 30
#         erros += 1
#     end 
# end


def joga nome
    sorteado = secret_word

    erros = 0
    chutes = []
    nowpoints = 0

    while erros < 5 
        chute = pedechute chutes, erros
        if chutes.include? chute
            alreadykick chute
            next
        end

        chutes << chute
        

        if chute.size == 1  
            letter = chute[0]
            lettersfindout = sorteado.count letter
        
            if lettersfindout == 0
                notfoundletter
                erros += 1
            else 
                foundletters lettersfindout
            end
        else   
            acertou = chute == sorteado
            if acertou
                 win
                 nowpoints += 100
                 break
             else
                quack
                 nowpoints -= 30
                 erros += 1
            end  
        end

    end

    ending_game nowpoints
end

def game

    nome = boasvindas
    loop do
        joga nome
        if wtpa == false    
        break   
        end
    end

end