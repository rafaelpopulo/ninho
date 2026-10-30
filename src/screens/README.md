# src/screens

Ecrãs da aplicação (React Native). Ver os wireframes em `docs/diagramas/wireframes.png`.

| Ecrã | User Stories |
|---|---|
| EcraInicial | US01, US03, US05, US11 |
| Contacto | US11 |
| ConversaSms | US11 |
| Pin | US06, US04 |
| Administracao | US02, US04, US05 |
| Ferramentas (lanterna, calculadora, notas, câmara) | US07, US08 |

Regra de arquitetura: os ecrãs não chamam os módulos nativos nem a base de dados diretamente; passam sempre por `src/logic`.
