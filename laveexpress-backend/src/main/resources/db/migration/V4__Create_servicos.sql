-- V4__Insert_servicos.sql
-- Migration para inserir serviços distribuídos entre os lava-jatos

-- Serviços para LavExpress Asa Norte (ID: -1)
INSERT INTO servico (descricao, valor, lava_jato_id) VALUES
                                                         ('Lavagem Simples', 15.00, -1),
                                                         ('Lavagem Completa', 25.00, -1),
                                                         ('Enceramento', 35.00, -1),
                                                         ('Lavagem + Aspiração', 30.00, -1),
                                                         ('Lavagem Premium', 45.00, -1);

-- Serviços para AquaShine Asa Sul (ID: -2)
INSERT INTO servico (descricao, valor, lava_jato_id) VALUES
                                                         ('Lavagem Externa', 18.00, -2),
                                                         ('Lavagem Interna + Externa', 28.00, -2),
                                                         ('Cera Líquida', 40.00, -2),
                                                         ('Limpeza de Estofados', 50.00, -2),
                                                         ('Pacote Executivo', 65.00, -2);

-- Serviços para Clean Car W3 Norte (ID: -3)
INSERT INTO servico (descricao, valor, lava_jato_id) VALUES
                                                         ('Lavagem Básica', 12.00, -3),
                                                         ('Lavagem + Secagem', 20.00, -3),
                                                         ('Aplicação de Cera', 30.00, -3),
                                                         ('Limpeza Detalhada', 55.00, -3),
                                                         ('Lavagem Ecológica', 22.00, -3);

-- Serviços para CarWash Sudoeste (ID: -4)
INSERT INTO servico (descricao, valor, lava_jato_id) VALUES
                                                         ('Lavagem Express', 16.00, -4),
                                                         ('Lavagem Completa', 26.00, -4),
                                                         ('Proteção UV', 38.00, -4),
                                                         ('Aspiração Profunda', 25.00, -4),
                                                         ('Combo Premium', 60.00, -4);

-- Serviços para AutoLav Noroeste (ID: -5)
INSERT INTO servico (descricao, valor, lava_jato_id) VALUES
                                                         ('Lavagem Rápida', 14.00, -5),
                                                         ('Lavagem + Hidratação', 32.00, -5),
                                                         ('Cristalização', 45.00, -5),
                                                         ('Limpeza de Motor', 35.00, -5),
                                                         ('Serviço VIP', 70.00, -5);

-- Serviços para Splash Lago Norte (ID: -6)
INSERT INTO servico (descricao, valor, lava_jato_id) VALUES
                                                         ('Lavagem Padrão', 17.00, -6),
                                                         ('Lavagem Completa', 27.00, -6),
                                                         ('Tratamento de Pneus', 20.00, -6),
                                                         ('Impermeabilização', 55.00, -6),
                                                         ('Pacote Splash', 48.00, -6);

-- Serviços para BrilhoMax Lago Sul (ID: -7)
INSERT INTO servico (descricao, valor, lava_jato_id) VALUES
                                                         ('Lavagem Tradicional', 19.00, -7),
                                                         ('Lavagem + Enceramento', 33.00, -7),
                                                         ('Polimento', 65.00, -7),
                                                         ('Higienização Completa', 75.00, -7),
                                                         ('Brilho Max Premium', 85.00, -7);

-- Serviços para LavaFácil Octogonal (ID: -8)
INSERT INTO servico (descricao, valor, lava_jato_id) VALUES
                                                         ('Lavagem Express', 13.00, -8),
                                                         ('Lavagem Fácil', 23.00, -8),
                                                         ('Cera Express', 28.00, -8),
                                                         ('Limpeza de Rodas', 15.00, -8),
                                                         ('Combo Fácil', 42.00, -8);

-- Serviços para AquaCar Cruzeiro (ID: -9)
INSERT INTO servico (descricao, valor, lava_jato_id) VALUES
                                                         ('Lavagem Aqua', 16.00, -9),
                                                         ('Lavagem + Aspiração', 29.00, -9),
                                                         ('Proteção Cerâmica', 80.00, -9),
                                                         ('Limpeza Automotiva', 40.00, -9),
                                                         ('AquaCar Premium', 58.00, -9);