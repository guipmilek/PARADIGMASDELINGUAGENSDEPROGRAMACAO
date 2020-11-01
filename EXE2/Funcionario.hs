--Escreva outras funções que consultem informações sobre os tipos de dados criados.
--      ○ Por exemplo: obter o nome de uma pessoa, obter o gênero de uma pessoa, obter o nome e cargo do
--      responsável pela empresa, obter o indicador de recebimento de promoções de um indivíduo, etc.

--      ○ Utilize ambos os formatos (usando case e pattern matching diretamente nos parâmetros da função).

data Funcionario = Empresa String String
            | Individuo Pessoa Bool
            deriving Show

data Pessoa = Pessoa String String Genero
            deriving Show

data Genero = Masculino | Feminino | Outro
            deriving Show


nomeFuncionario :: Funcionario -> String
nomeFuncionario funcionario = case funcionario of
                        Empresa nome cargo              -> nome ++ ", " ++ cargo
                        Individuo pessoa promocao       ->
                            case pessoa of
                                Pessoa pNome sNome g    -> pNome ++ " " ++ sNome

nomeFuncionario' :: Funcionario -> String
nomeFuncionario' funcionario = case funcionario of
                        Empresa nome cargo                           -> nome ++ cargo
                        Individuo (Pessoa pNome sNome g) promocao    -> pNome ++ " " ++ sNome