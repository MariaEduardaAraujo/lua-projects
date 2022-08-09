-- Setmetatable

Ex: 
A = {
  a = 1,
  b = 2,
  c = 3
}
B = {
  d = 4
  e = 5
}

C = setmetatable(A, {__index=B})
print(C.b)

Ex2:
Character = {}

function Character:Andar()
  print("Andando")
end
function Character:Correr()
  print("Correndo")
end
function Character:Pular()
  print("Pulando")
end

-----------------------------------

CharacterSolder = {}

function CharacterSolder:Atacar()
  print("Atacando")
end

CharacterSolder = setmetatable(CharacterSolder, { __index=Character })

-----------------------------------

Enemy = {}

function Enemy:PerseguirJogador()
  print("Perseguindo")
end

Enemy = setmetatable(Enemy, { __index=CharacterSolder })

-----------------------------------

Player = {}

function Player:SerControlado()
  print("Sendo controlado")
end

Player = setmetatable(Player, { __index=CharacterSolder })

Player:SerControlado()
Player:Andar()
