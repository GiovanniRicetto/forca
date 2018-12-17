require_relative 'ui_palavra'


def choosesecretword
    choosingword
    word = File.read("dicionario.txt")
    allwords = word.split "\n"
    wordc = rand(allwords.size)
    draw = allwords[wordc]
    choosedword draw
end

def maskeredword hunchs, draw
    shadowed = ""
    for letter in draw.chars
        if hunchs.include? letter
            shadowed += letter
        else
            shadowed += "_"
        end
    end
    shadowed
end

def callvalidhunch hunchs, errors, shadowed
    triesxerrors hunchs, errors, shadowed
    loop do    
        tip = callhunch hunchs, errors
        if hunchs.include? tip
            alreadykick tip
        else
            return tip
        end
    end
end

def play player

draw = choosesecretword
errors = 0
hunchs = []
nowpoints = 0

    while errors < 5 
       
        shadowed = maskeredword hunchs, draw
        tip = callvalidhunch hunchs, errors, shadowed
        hunchs << tip
        
        if tip.size == 1  
            letter = tip[0]
            lettersfindout = draw.count letter
        
            if lettersfindout == 0
                notfoundletter
                errors += 1
            else 
                foundletters lettersfindout
            end
        else   
            alright = tip == draw
            if alright
                 win
                 nowpoints += 100
                 break
             else
                quack
                 nowpoints -= 30
                 errors += 1
            end  
        end
    end

    ending_game nowpoints
end

def game

    player = welcome
    loop do
        play player
        if wtpa == false    
        break   
        end
    end

end