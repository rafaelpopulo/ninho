# Como contribuir

## Quadro de tarefas
- Usamos o **GitHub Projects** com as colunas **A Fazer → Em Curso → Em Revisão → Concluído**.
- Cada tarefa da secção 7.1 do documento do Sprint 1 é uma *issue*, com a etiqueta da User Story (`US01`…) e do tipo (`tipo: dev`, `tipo: teste`, `tipo: design`, `tipo: spike`).
- **No máximo 1 tarefa "Em Curso" por pessoa.**

## Fluxo de trabalho (GitHub Flow)
1. A `main` está sempre estável: ninguém faz commits diretamente na `main`.
2. Para cada tarefa, criar um ramo curto a partir da `main`:
   ```bash
   git checkout main && git pull
   git checkout -b feat/us02-gestao-contactos
   ```
   Prefixos: `feat/`, `fix/`, `test/`, `docs/`, `spike/`.
3. Fazer commits pequenos (ver abaixo) e `git push -u origin <ramo>`.
4. Abrir um **pull request** para a `main`, com `Closes #<n.º da issue>`.
5. A CI tem de passar e **outro elemento da equipa** revê antes de integrar.
6. Depois de integrado, apagar o ramo.

## Mensagens de commit (Conventional Commits)
```
feat: adiciona ecrã de gestão de contactos (US02)
fix: corrige validação de números com indicativo
test: cobre o bloqueio após 5 tentativas de PIN
docs: atualiza o modelo de dados para "as built"
```

## Antes de abrir um pull request
```bash
npm run lint && npm run typecheck && npm test
```
