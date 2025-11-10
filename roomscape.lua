resposta = nil
chave = false
senha = nil
fim = false
imagens = {
  legal = {
    "",
    "  ##########  ########  ",
    "##          ####    ##  ",
    "##  ##  ##  ####    ##  ",
    "##        ############  ",
    "##  ##  ####        ##  ",
    "##    ##  ##        ##  ",
    "##        ##        ##  ",
    ""
  },
  senha = {
    "",
    "######  ######  ####  ",
    "##  ##      ##  ##    ",
    "######    ##    ####  ",
    "    ##  ##        ##  ",
    "   ##  ######  ####  ",
    ""
  },
  portas = {
    "",
    "  ####    ####    ####  ",
    "  ####    ####    ####  ",
    "  ####    ####    ####  ",
    "  ####    ####    ####  ",
    "  ####    ####    ####  ",
    ""                   
  },
  chave = {
      "",
      "        ##  ##    ",
      "      ######      ",
      "        ##        ",
      "  ##  ##          ",
      "######            ",
      "##  ####          ",
      "######            ",
      ""
  },
  cod = {
      "####################  ",
      "##                ##  ",
      "##                ##  ",
      "####################  ",
      "##    ##    ##    ##  ",
      "####################  ",
      "##    ##    ##    ##  ",
      "####################  "
  }
}  

function porta()
  for var1 = 1, 7, 1 do
    print("\t" .. imagens.portas[var1])
  end
end

function num()
  for var2 = 1, 7, 1 do
    print("\t" .. imagens.senha[var2])
  end
end

function legau()
  for var3 = 1, 9, 1 do
    print("\t" .. imagens.legal[var3])
  end
end

function chave()
  for var4 = 1, 9, 1 do
    print("\t" .. imagens.chave[var4])
  end
end

function cod()
  for var5 = 1, 8, 1 do
    print("\t" .. imagens.cod[var5])
  end
end

function p1()
  porta()
  print("Há três portas na sua frente, qual escolher?(1, 2 ou 3)")
  resposta = io.read()
end

print("\t\tROOMSCAPE\n")

repeat
  p1()
  if tonumber(resposta) == 1 then
    chave()
    print("\nVocê conseguiu uma chave que estava na sala!")
    chave = true
  elseif tonumber(resposta) == 1 and chave == true then
    print("\nNão há nada na sala...")
  elseif tonumber(resposta) == 2 then
    cod()
    print("\nPara entrar terá que inserir uma senha: (se não saber, digite 7 para escolher outra porta)")
    senha = io.read()
    if tonumber(senha) == 925 then
      legau()
      print("VOCÊ CONSEGUIU SAIR! PARABÉNS")
      fim = true
    elseif tonumber(senha) ~= 7 then
      print("\nSenha incorreta")
    end
  elseif tonumber(resposta) == 3 then
    if chave == true then
      num()
      print("Lá, havia um código, ele é: 925, lembre-se dele")
    else
      print("\nA porta precisa de uma chave, encontre-a")
    end
  else
    print("\nSó há três portas, escolha uma delas!")
  end
until fim == true
  