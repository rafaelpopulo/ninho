# ADR-002: Modo quiosque com Device Owner e Lock Task Mode

- **Estado:** Proposto (a confirmar pelo spike do Sprint 2)
- **Data:** outubro de 2026 (Sprint 1)

## Contexto
A US01 e a NF01 exigem que a criança não saia do Ninho. Um launcher simples ou a fixação de ecrã do Android contornam-se com os botões do sistema. O Lock Task Mode só bloqueia de forma fiável quando a app é Device Owner ([Android Developers — Lock task mode](https://developer.android.com/work/dpc/dedicated-devices/lock-task-mode)).

## Decisão
O Ninho regista-se como Device Owner e usa Lock Task Mode, sendo também o ecrã inicial do telemóvel. O 112 é permitido explicitamente dentro do quiosque.

## Consequências
- **Mais fácil:** bloqueio forte e independente da marca do telemóvel (NF09).
- **Mais difícil:** definir o Device Owner exige um telemóvel sem contas configuradas (comando `adb` ou reposição de fábrica). Tem de ficar explicado no README e nas instruções de instalação do Sprint 3.
