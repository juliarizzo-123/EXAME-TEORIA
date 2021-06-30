import objs

var
    peso:int
    idade:int
    a:int

proc linha() =
    echo "==========================================="

proc menu*() = 
    linha()
    echo """
    TAMAGOTCHI SEU BIXINHO VIRTUAL!!
    [4] - SAIR DO PROGRAMA
    [1] - CRIAR NOVO TAMAGOTCHI
        """

proc submenu*() = 
    linha()
    echo """
    O QUE DESEJA FAZER?
    [1] - alimentar
    [2] - por pra dormir
    [3] - brincar
    [6] - voltar ao menu anterior
    IMPORTANTE: alimente primeiro ;)
        """
    linha()

proc criar_tamagotchi*() = 
    var tamagotchi:Tamagotchi = Tamagotchi()
    linha()
    echo "CRIANDO TAMAGOTCHI........"
    echo "DE UM NOME: "
    peso = 1
    idade = 0
    tamagotchi.nome = readLine(stdin)
    tamagotchi.peso = peso
    tamagotchi.idade = idade

proc tamagotchi_MORTE*() =
    if peso < 1 or peso > 20:
        echo "seu bicho morreu!!"
        a = 6
    
