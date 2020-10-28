-- Defina uma função para calcular o quadrado do dobro do seu argumento.
quadradoDoDobro x = (x + x) * (x + x)

--Defina uma função para calcular o dobro do quadrado do seu argumento.
dobroDoQuadrado x = (x * x) + (x * x)

--Faça uma função que receba três notas de um aluno e calcule a média aritmética das notas.
media x y z = (x + y + z)/3

-- Sabe-se que o valor do quilowatt de energia elétrica custa um quinto do salário mínimo. s=1/5*q
-- Defina uma função que receba o valor do salário mínimo e a quantidade de quilowatts
-- consumida por uma residência, e resulta no valor a ser pago com desconto de 15%.

--X => salario
--Y => quilowatts
conta x y = (y * (x/5)) * 0.85
