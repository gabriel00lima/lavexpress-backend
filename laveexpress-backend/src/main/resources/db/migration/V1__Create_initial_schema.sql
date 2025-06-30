-- V1__Create_initial_schema.sql
-- Migration inicial - Criação das tabelas do sistema LavExpress

-- Tabela de Usuários
CREATE TABLE if not exists usuario (
                                       id BIGSERIAL PRIMARY KEY,
                                       nome VARCHAR(255) NOT NULL,
    email VARCHAR(255) UNIQUE NOT NULL,
    senha VARCHAR(255) NOT NULL,
    cpf VARCHAR(11),
    telefone VARCHAR(20),
    photo_path TEXT,
    tipo_usuario VARCHAR(50) NOT NULL
    CHECK (tipo_usuario IN ('CLIENTE', 'EMPRESAIRO'))
    );

-- Tabela de Lava-Jatos
CREATE TABLE if not exists lava_jato (
                                         id BIGSERIAL PRIMARY KEY,
                                         nome VARCHAR(255) NOT NULL,
    endereco VARCHAR(500),
    telefone VARCHAR(20),
    email VARCHAR(255),
    cnpj VARCHAR(14),
    lat_long VARCHAR(50),  -- Formato: "latitude,longitude"
    photo_path TEXT,
    usuario_id BIGINT REFERENCES usuario(id) ON DELETE SET NULL
    );

-- Tabela de Veículos
CREATE TABLE if not exists  veiculo (
                                        id BIGSERIAL PRIMARY KEY,
                                        placa VARCHAR(10),
    modelo VARCHAR(100),
    ano VARCHAR(4),
    marca VARCHAR(50),
    cor VARCHAR(30),
    usuario_id BIGINT NOT NULL REFERENCES usuario(id) ON DELETE CASCADE
    );

-- Tabela de Serviços
CREATE TABLE if not exists servico (
                                       id BIGSERIAL PRIMARY KEY,
                                       descricao VARCHAR(255),
    valor DECIMAL(10,2),
    lava_jato_id BIGINT NOT NULL REFERENCES lava_jato(id) ON DELETE CASCADE
    );

-- Tabela de Avaliações
CREATE TABLE if not exists avaliacao (
                                         id BIGSERIAL PRIMARY KEY,
                                         usuario_id BIGINT REFERENCES usuario(id) ON DELETE CASCADE,
    lavajato_id BIGINT REFERENCES lava_jato(id) ON DELETE CASCADE,
    nota INTEGER CHECK (nota >= 1 AND nota <= 5),
    comentario TEXT,
    UNIQUE(usuario_id, lavajato_id)  -- Um usuário só pode avaliar cada lava-jato uma vez
    );

-- Tabela de Agendamentos
CREATE TABLE if not exists agendamento (
                                           id BIGSERIAL PRIMARY KEY,
                                           status_agendamento VARCHAR(50) NOT NULL
    CHECK (status_agendamento IN ('AGENDADO', 'SERVICO_EM_ANDAMENTO', 'FINALIZADO', 'CANCELADO')),
    data_horario TIMESTAMP NOT NULL,
    servico_id BIGINT NOT NULL REFERENCES servico(id) ON DELETE RESTRICT,
    usuario_id BIGINT NOT NULL REFERENCES usuario(id) ON DELETE CASCADE,
    veiculo_id BIGINT NOT NULL REFERENCES veiculo(id) ON DELETE CASCADE,
    lava_jato_id BIGINT NOT NULL REFERENCES lava_jato(id) ON DELETE CASCADE,
    observacoes TEXT
    );

-- ==========================================
-- ÍNDICES PARA PERFORMANCE
-- ==========================================

-- Índices para consultas frequentes
CREATE INDEX  if not exists idx_usuario_email ON usuario(email);
CREATE INDEX  if not exists idx_usuario_cpf ON usuario(cpf);
CREATE INDEX if not exists idx_veiculo_usuario ON veiculo(usuario_id);
CREATE INDEX  if not exists idx_veiculo_placa ON veiculo(placa);
CREATE INDEX if not exists idx_servico_lavajato ON servico(lava_jato_id);
CREATE INDEX if not exists idx_agendamento_usuario ON agendamento(usuario_id);
CREATE INDEX if not exists idx_agendamento_lavajato ON agendamento(lava_jato_id);
CREATE INDEX if not exists idx_agendamento_data ON agendamento(data_horario);
CREATE INDEX if not exists idx_agendamento_status ON agendamento(status_agendamento);
CREATE INDEX if not exists idx_avaliacao_lavajato ON avaliacao(lavajato_id);
CREATE INDEX if not exists idx_lavajato_latlong ON lava_jato(lat_long);


