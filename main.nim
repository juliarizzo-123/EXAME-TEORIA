import utils
import strutils
import strformat
import random

var 
    x:int
    y:int
    b:int
    c:int
    a:int
    peso = 1 


while x != 4:
    menu()
    y = parseInt(readline(stdin))

    case y
    of 1: criar_tamagotchi()
    else:
        echo "ate a proxima!!!!!"
        break 

    while a != 6:
        
        submenu()
        b = parseInt(readline(stdin))
        if peso < 1 or peso > 20:
            echo "seu bicho morreu por falta ou excesso de peso!!"
            x = 4
            break
        
        elif b == 1:
            echo "hora da comida!! \n"
            echo "[1] - comer muito "
            echo "[2] - comer pouco"
            c = parseInt(readline(stdin))
            if c == 1:
                peso = peso + 5 
                echo &"seu bixo esta pesando: {peso} \n"
                echo "seu bixo esta com sono \n"
            elif c == 2:
                peso = peso + 3
                echo &"seu bixo esta pesando: {peso}"
            elif peso < 0 or peso > 20:
                echo "seu bicho morreu por falta ou excesso de peso!!"
                x = 4
                break
            
        elif b == 2:
        
            echo "hora da soneca!!"
            echo "[1] - dormir muito "
            echo "[2] - dormir pouco"
            c = parseInt(readline(stdin))
            if c == 1:
                peso = peso - 4 
                echo &"seu bixo esta pesando: {peso}"
                echo "seu bixo esta com fome"
            elif c == 2:
                peso = peso - 1
                echo &"seu bixo esta pesando: {peso}"
            elif peso < 0 or peso > 20:
                echo "seu bicho morreu por falta ou excesso de peso!!"
                x = 4
                break

        elif b == 3:
            echo "hora da brincadeira!!"
            echo "[1] - brincar muito "
            echo "[2] - brincar pouco"
            c = parseInt(readline(stdin))
            if c == 1:
                peso = peso - 2
                echo &"seu bixo esta pesando: {peso}"
                echo "seu bixo esta com fome"
            elif c == 2:
                peso = peso - 1
                echo &"seu bixo esta pesando: {peso}"
            elif peso < 0 or peso > 20:
                echo "seu bicho morreu por falta ou excesso de peso!!"
                x = 4
                break

        elif b == 6:
            echo "voltando ao menu anterior"
            a = 6
            break

            
        else:
            echo "opçao invalida!!"
            break


