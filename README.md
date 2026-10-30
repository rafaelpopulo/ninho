# Ninho

Aplicação Android gratuita que transforma um telemóvel num ambiente de comunicação seguro para crianças e adolescentes: **chamadas e SMS apenas para a família**, **112 sempre acessível**, sem browser nem outras apps.

Projeto da UC **Laboratório de Programação [22356]** · 1.º ciclo em Engenharia Informática · ISLA Gaia · 2026/2027, desenvolvido em Scrum.

| Equipa | Número |
|---|---|
| Rafael Pópulo | a22505044 |
| Simão Castro | a22505672 |
| José Silva | a22508134 |

**Estado:** Sprint 1 — análise e planeamento. A implementação começa no Sprint 2.

## Tecnologias

| Camada | Tecnologia |
|---|---|
| Interface | React Native 0.76 · TypeScript |
| Lógica da aplicação | TypeScript (`src/logic`) |
| Módulos nativos | Kotlin (quiosque, chamadas, SMS, PIN) |
| Dados | SQLite local (`src/db/schema.sql`) |
| Plataforma | Android 9 ou superior (API 28+) |
| Qualidade | ESLint · Jest · GitHub Actions |

Não há servidor: tudo corre no telemóvel e os dados nunca saem do aparelho ([ADR-001](docs/adr/ADR-001-sem-servidor.md)).

## Estrutura de pastas

```
ninho/
├── App.tsx                  ponto de entrada da app
├── src/
│   ├── screens/             ecrãs (React Native)
│   ├── logic/               regras de contactos, PIN e permissões
│   ├── native/              contrato dos módulos nativos (TypeScript)
│   └── db/                  esquema SQLite
├── android/
│   └── app/src/main/java/com/ninho/modules/   módulos nativos em Kotlin
├── __tests__/               testes Jest
├── docs/                    documento do Sprint 1, ADR e diagramas
├── scripts/                 utilitários (criar issues no GitHub)
└── .github/                 CI e modelos de issues e pull requests
```

## Como instalar e correr

**Requisitos:** Node.js 18+, JDK 17, Android Studio (SDK do Android 15 / API 35) e um telemóvel Android ou emulador.

```bash
git clone https://github.com/rafaelpopulo/ninho.git
cd ninho
npm install
npm start            # inicia o Metro (deixar a correr)
npm run android      # noutra janela: compila e instala no telemóvel/emulador
```

Verificações (as mesmas que a CI corre):

```bash
npm run lint         # ESLint
npm run typecheck    # TypeScript
npm test             # Jest
```

### Modo quiosque (a partir do Sprint 2)

O bloqueio completo exige que o Ninho seja **Device Owner** ([ADR-002](docs/adr/ADR-002-quiosque-device-owner.md)). Isto só é possível num telemóvel **sem contas configuradas** (acabado de repor). O comando exato fica aqui documentado quando o módulo `KioskModule` estiver implementado.

## Como trabalhamos

Ver [CONTRIBUTING.md](CONTRIBUTING.md): GitHub Flow, Conventional Commits e quadro no GitHub Projects.

## Documentação

Ver [docs/](docs/README.md).
