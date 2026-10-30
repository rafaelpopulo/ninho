-- Ninho · esquema SQLite (secção 5.2 do documento do Sprint 1)
-- Executar sempre ao abrir a ligação: as chaves estrangeiras vêm desligadas no SQLite.
PRAGMA foreign_keys = ON;

CREATE TABLE IF NOT EXISTS Contacto (
  id          INTEGER PRIMARY KEY AUTOINCREMENT,
  nome        TEXT NOT NULL,
  parentesco  TEXT,
  telefone    TEXT NOT NULL UNIQUE,
  foto_uri    TEXT,
  criado_em   TEXT NOT NULL DEFAULT (datetime('now'))
);

-- 0..1 Contacto — 0..* RegistoComunicacao (contacto_id é NULL para números desconhecidos)
CREATE TABLE IF NOT EXISTS RegistoComunicacao (
  id              INTEGER PRIMARY KEY AUTOINCREMENT,
  contacto_id     INTEGER REFERENCES Contacto(id) ON DELETE CASCADE,
  numero_externo  TEXT,
  tipo            TEXT NOT NULL CHECK (tipo IN ('chamada', 'sms')),
  direcao         TEXT NOT NULL CHECK (direcao IN ('enviada', 'recebida')),
  conteudo        TEXT,
  bloqueado       INTEGER NOT NULL DEFAULT 0,
  data_hora       TEXT NOT NULL DEFAULT (datetime('now')),
  CHECK ((contacto_id IS NULL) <> (numero_externo IS NULL))
);

-- 1 Contacto — 0..1 PerfilFamiliar (UNIQUE + NOT NULL)
CREATE TABLE IF NOT EXISTS PerfilFamiliar (
  id                INTEGER PRIMARY KEY AUTOINCREMENT,
  contacto_id       INTEGER NOT NULL UNIQUE REFERENCES Contacto(id) ON DELETE CASCADE,
  pin_hash          TEXT NOT NULL,
  pode_ver_registo  INTEGER NOT NULL DEFAULT 1,
  ativo             INTEGER NOT NULL DEFAULT 1
);

-- Registo único com a configuração do aparelho
CREATE TABLE IF NOT EXISTS Configuracao (
  id                   INTEGER PRIMARY KEY CHECK (id = 1),
  pin_hash             TEXT,
  tentativas_falhadas  INTEGER NOT NULL DEFAULT 0,
  bloqueado_ate        TEXT,
  quiosque_ativo       INTEGER NOT NULL DEFAULT 0
);

CREATE TABLE IF NOT EXISTS Funcionalidade (
  id     INTEGER PRIMARY KEY AUTOINCREMENT,
  nome   TEXT NOT NULL UNIQUE CHECK (nome IN ('lanterna', 'calculadora', 'notas', 'camara')),
  ativa  INTEGER NOT NULL DEFAULT 1
);

CREATE TABLE IF NOT EXISTS Nota (
  id           INTEGER PRIMARY KEY AUTOINCREMENT,
  titulo       TEXT,
  texto        TEXT NOT NULL,
  criada_em    TEXT NOT NULL DEFAULT (datetime('now')),
  alterada_em  TEXT
);

CREATE TABLE IF NOT EXISTS Fotografia (
  id                INTEGER PRIMARY KEY AUTOINCREMENT,
  caminho_ficheiro  TEXT NOT NULL,
  tirada_em         TEXT NOT NULL DEFAULT (datetime('now'))
);

INSERT OR IGNORE INTO Configuracao (id) VALUES (1);
INSERT OR IGNORE INTO Funcionalidade (nome) VALUES ('lanterna'), ('calculadora'), ('notas'), ('camara');
