soma_e_sub :: (Int, Int) -> (Int, Int)
soma_e_sub a b = (a+b, a-b)

-- tipos compostos de tuplas
type Aluno = (String, String, Float)

type Nome = String
type Peso = Float
type Idade = Int
type Esporte = String
type Pessoa = (Nome, Peso, Idade, Esporte)

-- como instanciar esses diferentes tipos
-- definimos como função constante usando casamento de padrões

f_joao, f_maria :: Pessoa
f_joao = ("Joao", 70.5, 30, "Basquete")
f_maria = ("Maria", 40.5, 25, "Futebol")

pessoa :: Float -> Pessoa
pessoa 5555 = ("Jose", 70, 20, "Volei")
pessoa 6666 = ("Clara", 50, 20, "Tenis")

pessoa2 :: Float->Pessoa
pessoa2 rg
    | rg == 5555 = ("Jose", 70, 20, "Volei")
    | rg == 6666 = ("Clara", 50, 20, "Tenis")

-- funcao para selecionar um tipo especifico na tupla

selec_nome :: Pessoa->String
selec_nome (nome,_,_,_) = nome
selec_peso :: Pessoa->Float
selec_peso (_,peso,_,_) = peso
selec_idade :: Pessoa->Int
selec_idade (_,_,idade,_) = idade

