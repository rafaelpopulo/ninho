# ADR-001: Sem servidor — lógica e dados ficam no telemóvel

- **Estado:** Proposto
- **Data:** outubro de 2026 (Sprint 1)

## Contexto
O controlo remoto pelos pais é *Won't* (US10). A NF05 exige que os dados não saiam do aparelho e a NF01 bloqueia a internet. A equipa tem três elementos e um semestre.

## Decisão
Não haverá servidor nem API remota. A lógica fica em TypeScript (`src/logic`) e em módulos nativos Kotlin; os dados ficam em SQLite local (`src/db/schema.sql`); a chave do PIN fica no Android Keystore.

## Consequências
- **Mais fácil:** menos infraestrutura e custo zero; privacidade por desenho; funciona sem rede.
- **Mais difícil:** não há controlo remoto nem cópia de segurança; se o telemóvel for reposto, perde-se a configuração. Acrescentar controlo remoto no futuro obriga a rever esta decisão.
