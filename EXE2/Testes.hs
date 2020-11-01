--Faça testes com as funções desenvolvidas em aula.
data Cliente = OrgGov String
            | Empresa String Integer String String
            | Individuo Pessoa Bool
            deriving Show

data Pessoa = Pessoa String String Genero
            deriving Show

data Genero = Masculino | Feminino | Outro
            deriving Show


nomeCliente :: Cliente -> String
nomeCliente cliente = case cliente of
                        OrgGov nome                  -> nome
                        Empresa nome id resp cargo   -> nome
                        Individuo pessoa ads         ->
                            case pessoa of 
                                Pessoa pNome sNome g -> pNome ++ " " ++ sNome

nomeCliente' :: Cliente -> String
nomeCliente' cliente = case cliente of
                        OrgGov nome                          -> nome
                        Empresa nome id resp cargo           -> nome
                        Individuo (Pessoa pNome sNome g) ads -> pNome ++ " " ++ sNome


nomeCliente'' :: Cliente -> String
nomeCliente'' cliente = case cliente of
                        OrgGov nome                          -> nome
                        Empresa nome _ _ _                   -> nome
                        Individuo (Pessoa pNome sNome _) _   -> pNome ++ " " ++ sNome


nomeCliente''' :: Cliente -> String
nomeCliente''' (OrgGov nome)                        = nome
nomeCliente''' (Empresa nome _ _ _)                 = nome
nomeCliente''' (Individuo (Pessoa pNome sNome _) _) = nome


nomeEmpresa :: Cliente -> String
nomeEmpresa clinete = case cliente of
                        Empresa nome _ _ _ -> nome


nomeEmpresa' :: Cliente -> Maybe String
nomeEmpresa' clinete = case cliente of
                        Empresa nome _ _ _ -> Just nome
                        _                  -> Nothing