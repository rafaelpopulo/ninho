#!/usr/bin/env bash
# Cria no GitHub as etiquetas, os sprints (milestones) e uma issue por tarefa
# da secção 7.1 do documento do Sprint 1.
#
# Requisitos: GitHub CLI (https://cli.github.com) com sessão iniciada:  gh auth login
# Uso (na pasta do repositório):  bash scripts/criar_issues.sh
# Correr só UMA vez (voltar a correr cria issues repetidas).
set -euo pipefail
REPO="${REPO:-rafaelpopulo/ninho}"

echo "Etiquetas..."
gh label create US01 --color 1B2A41 --force --repo "$REPO"
gh label create US02 --color 1B2A41 --force --repo "$REPO"
gh label create US03 --color 1B2A41 --force --repo "$REPO"
gh label create US04 --color 1B2A41 --force --repo "$REPO"
gh label create US05 --color 1B2A41 --force --repo "$REPO"
gh label create US06 --color 1B2A41 --force --repo "$REPO"
gh label create US07 --color 1B2A41 --force --repo "$REPO"
gh label create US08 --color 1B2A41 --force --repo "$REPO"
gh label create US09 --color 1B2A41 --force --repo "$REPO"
gh label create US11 --color 1B2A41 --force --repo "$REPO"
gh label create Todas --color 5B6B7F --force --repo "$REPO"
gh label create 'tipo: dev' --color 0F9D8F --force --repo "$REPO"
gh label create 'tipo: teste' --color 2DA44E --force --repo "$REPO"
gh label create 'tipo: design' --color 8250DF --force --repo "$REPO"
gh label create 'tipo: spike' --color D29922 --force --repo "$REPO"

echo "Sprints (milestones)..."
gh api "repos/$REPO/milestones" -f title="Sprint 2" -f due_on="2026-12-03T23:59:00Z" -f description="Codificação e testes" >/dev/null || true
gh api "repos/$REPO/milestones" -f title="Sprint 3" -f due_on="2027-01-07T23:59:00Z" -f description="Implantação" >/dev/null || true

echo "Issues..."
gh issue create --repo "$REPO" --title '[US01] Spike: protótipo do modo quiosque (Device Owner + Lock Task Mode) num telemóvel de teste' --label US01 --label 'tipo: spike' --milestone 'Sprint 2' --body '**User Story:** US01
**Tipo:** Spike
**Estimativa:** 6 h

Tarefa da secção 7.1 do documento do Sprint 1 (docs/Sprint1_Analise_e_Planeamento.docx).'
gh issue create --repo "$REPO" --title '[US09] Spike: papéis de app de chamadas e de SMS predefinida (diferenças Android 9 e 10+)' --label US09 --label 'tipo: spike' --milestone 'Sprint 2' --body '**User Story:** US09
**Tipo:** Spike
**Estimativa:** 4 h

Tarefa da secção 7.1 do documento do Sprint 1 (docs/Sprint1_Analise_e_Planeamento.docx).'
gh issue create --repo "$REPO" --title '[Todas] Mockups dos ecrãs a partir dos wireframes (5.3)' --label Todas --label 'tipo: design' --milestone 'Sprint 2' --body '**User Story:** Todas
**Tipo:** Design
**Estimativa:** 4 h

Tarefa da secção 7.1 do documento do Sprint 1 (docs/Sprint1_Analise_e_Planeamento.docx).'
gh issue create --repo "$REPO" --title '[US01] Ninho como ecrã inicial (launcher)' --label US01 --label 'tipo: dev' --milestone 'Sprint 2' --body '**User Story:** US01
**Tipo:** Dev
**Estimativa:** 5 h

Tarefa da secção 7.1 do documento do Sprint 1 (docs/Sprint1_Analise_e_Planeamento.docx).'
gh issue create --repo "$REPO" --title '[US01] Lock Task Mode e Device Owner (KioskModule, Kotlin)' --label US01 --label 'tipo: dev' --milestone 'Sprint 2' --body '**User Story:** US01
**Tipo:** Dev
**Estimativa:** 5 h

Tarefa da secção 7.1 do documento do Sprint 1 (docs/Sprint1_Analise_e_Planeamento.docx).'
gh issue create --repo "$REPO" --title '[US01] Bloquear barra de notificações e ecrã de recentes' --label US01 --label 'tipo: dev' --milestone 'Sprint 2' --body '**User Story:** US01
**Tipo:** Dev
**Estimativa:** 4 h

Tarefa da secção 7.1 do documento do Sprint 1 (docs/Sprint1_Analise_e_Planeamento.docx).'
gh issue create --repo "$REPO" --title '[US01] Bloquear o acesso ao browser e a outras apps' --label US01 --label 'tipo: dev' --milestone 'Sprint 2' --body '**User Story:** US01
**Tipo:** Dev
**Estimativa:** 4 h

Tarefa da secção 7.1 do documento do Sprint 1 (docs/Sprint1_Analise_e_Planeamento.docx).'
gh issue create --repo "$REPO" --title '[US01] Arranque automático após reinício (NF08)' --label US01 --label 'tipo: dev' --milestone 'Sprint 2' --body '**User Story:** US01
**Tipo:** Dev
**Estimativa:** 3 h

Tarefa da secção 7.1 do documento do Sprint 1 (docs/Sprint1_Analise_e_Planeamento.docx).'
gh issue create --repo "$REPO" --title '[US01] Testes: botões Início/Voltar/Recentes, reinício, tentativa de abrir o browser' --label US01 --label 'tipo: teste' --milestone 'Sprint 2' --body '**User Story:** US01
**Tipo:** Teste
**Estimativa:** 3 h

Tarefa da secção 7.1 do documento do Sprint 1 (docs/Sprint1_Analise_e_Planeamento.docx).'
gh issue create --repo "$REPO" --title '[US03] Botão 112 sempre visível, sem PIN, com confirmação' --label US03 --label 'tipo: dev' --milestone 'Sprint 2' --body '**User Story:** US03
**Tipo:** Dev
**Estimativa:** 4 h

Tarefa da secção 7.1 do documento do Sprint 1 (docs/Sprint1_Analise_e_Planeamento.docx).'
gh issue create --repo "$REPO" --title '[US03] Permitir a chamada ao 112 dentro do quiosque' --label US03 --label 'tipo: dev' --milestone 'Sprint 2' --body '**User Story:** US03
**Tipo:** Dev
**Estimativa:** 2 h

Tarefa da secção 7.1 do documento do Sprint 1 (docs/Sprint1_Analise_e_Planeamento.docx).'
gh issue create --repo "$REPO" --title '[US03] Testes: 112 com o quiosque ativo e em menos de 2 s (NF04)' --label US03 --label 'tipo: teste' --milestone 'Sprint 2' --body '**User Story:** US03
**Tipo:** Teste
**Estimativa:** 2 h

Tarefa da secção 7.1 do documento do Sprint 1 (docs/Sprint1_Analise_e_Planeamento.docx).'
gh issue create --repo "$REPO" --title '[US02] Base de dados SQLite e repositório de contactos' --label US02 --label 'tipo: dev' --milestone 'Sprint 2' --body '**User Story:** US02
**Tipo:** Dev
**Estimativa:** 4 h

Tarefa da secção 7.1 do documento do Sprint 1 (docs/Sprint1_Analise_e_Planeamento.docx).'
gh issue create --repo "$REPO" --title '[US02] Ecrã de gestão de contactos (pais)' --label US02 --label 'tipo: dev' --milestone 'Sprint 2' --body '**User Story:** US02
**Tipo:** Dev
**Estimativa:** 4 h

Tarefa da secção 7.1 do documento do Sprint 1 (docs/Sprint1_Analise_e_Planeamento.docx).'
gh issue create --repo "$REPO" --title '[US02] Validação de números de telefone' --label US02 --label 'tipo: dev' --milestone 'Sprint 2' --body '**User Story:** US02
**Tipo:** Dev
**Estimativa:** 2 h

Tarefa da secção 7.1 do documento do Sprint 1 (docs/Sprint1_Analise_e_Planeamento.docx).'
gh issue create --repo "$REPO" --title '[US02] Testes: adicionar, remover e número inválido' --label US02 --label 'tipo: teste' --milestone 'Sprint 2' --body '**User Story:** US02
**Tipo:** Teste
**Estimativa:** 2 h

Tarefa da secção 7.1 do documento do Sprint 1 (docs/Sprint1_Analise_e_Planeamento.docx).'
gh issue create --repo "$REPO" --title '[US06] Ecrã de PIN e definição na primeira utilização' --label US06 --label 'tipo: dev' --milestone 'Sprint 2' --body '**User Story:** US06
**Tipo:** Dev
**Estimativa:** 3 h

Tarefa da secção 7.1 do documento do Sprint 1 (docs/Sprint1_Analise_e_Planeamento.docx).'
gh issue create --repo "$REPO" --title '[US06] Hash do PIN com chave no Android Keystore (NF02)' --label US06 --label 'tipo: dev' --milestone 'Sprint 2' --body '**User Story:** US06
**Tipo:** Dev
**Estimativa:** 3 h

Tarefa da secção 7.1 do documento do Sprint 1 (docs/Sprint1_Analise_e_Planeamento.docx).'
gh issue create --repo "$REPO" --title '[US06] Bloqueio temporário após 5 tentativas' --label US06 --label 'tipo: dev' --milestone 'Sprint 2' --body '**User Story:** US06
**Tipo:** Dev
**Estimativa:** 3 h

Tarefa da secção 7.1 do documento do Sprint 1 (docs/Sprint1_Analise_e_Planeamento.docx).'
gh issue create --repo "$REPO" --title '[US06] Testes: PIN certo, PIN errado e bloqueio' --label US06 --label 'tipo: teste' --milestone 'Sprint 2' --body '**User Story:** US06
**Tipo:** Teste
**Estimativa:** 2 h

Tarefa da secção 7.1 do documento do Sprint 1 (docs/Sprint1_Analise_e_Planeamento.docx).'
gh issue create --repo "$REPO" --title '[US11] Ecrã de contactos da criança (ligar com um toque)' --label US11 --label 'tipo: dev' --milestone 'Sprint 2' --body '**User Story:** US11
**Tipo:** Dev
**Estimativa:** 3 h

Tarefa da secção 7.1 do documento do Sprint 1 (docs/Sprint1_Analise_e_Planeamento.docx).'
gh issue create --repo "$REPO" --title '[US11] Módulo de chamadas: só contactos autorizados (CallModule)' --label US11 --label 'tipo: dev' --milestone 'Sprint 2' --body '**User Story:** US11
**Tipo:** Dev
**Estimativa:** 5 h

Tarefa da secção 7.1 do documento do Sprint 1 (docs/Sprint1_Analise_e_Planeamento.docx).'
gh issue create --repo "$REPO" --title '[US11] Módulo de SMS: enviar (SmsModule)' --label US11 --label 'tipo: dev' --milestone 'Sprint 2' --body '**User Story:** US11
**Tipo:** Dev
**Estimativa:** 4 h

Tarefa da secção 7.1 do documento do Sprint 1 (docs/Sprint1_Analise_e_Planeamento.docx).'
gh issue create --repo "$REPO" --title '[US11] Módulo de SMS: receber e mostrar conversas' --label US11 --label 'tipo: dev' --milestone 'Sprint 2' --body '**User Story:** US11
**Tipo:** Dev
**Estimativa:** 6 h

Tarefa da secção 7.1 do documento do Sprint 1 (docs/Sprint1_Analise_e_Planeamento.docx).'
gh issue create --repo "$REPO" --title '[US11] Gravar chamadas e SMS no registo de comunicações' --label US11 --label 'tipo: dev' --milestone 'Sprint 2' --body '**User Story:** US11
**Tipo:** Dev
**Estimativa:** 2 h

Tarefa da secção 7.1 do documento do Sprint 1 (docs/Sprint1_Analise_e_Planeamento.docx).'
gh issue create --repo "$REPO" --title '[US11] Testes: ligar e enviar SMS a contacto autorizado e não autorizado' --label US11 --label 'tipo: teste' --milestone 'Sprint 2' --body '**User Story:** US11
**Tipo:** Teste
**Estimativa:** 3 h

Tarefa da secção 7.1 do documento do Sprint 1 (docs/Sprint1_Analise_e_Planeamento.docx).'
gh issue create --repo "$REPO" --title '[US09] Filtrar chamadas recebidas (só contactos autorizados)' --label US09 --label 'tipo: dev' --milestone 'Sprint 2' --body '**User Story:** US09
**Tipo:** Dev
**Estimativa:** 5 h

Tarefa da secção 7.1 do documento do Sprint 1 (docs/Sprint1_Analise_e_Planeamento.docx).'
gh issue create --repo "$REPO" --title '[US09] Filtrar SMS recebidos (só contactos autorizados)' --label US09 --label 'tipo: dev' --milestone 'Sprint 2' --body '**User Story:** US09
**Tipo:** Dev
**Estimativa:** 3 h

Tarefa da secção 7.1 do documento do Sprint 1 (docs/Sprint1_Analise_e_Planeamento.docx).'
gh issue create --repo "$REPO" --title '[US09] Testes: chamada e SMS de número desconhecido bloqueados' --label US09 --label 'tipo: teste' --milestone 'Sprint 2' --body '**User Story:** US09
**Tipo:** Teste
**Estimativa:** 2 h

Tarefa da secção 7.1 do documento do Sprint 1 (docs/Sprint1_Analise_e_Planeamento.docx).'
gh issue create --repo "$REPO" --title '[US07] Lanterna' --label US07 --label 'tipo: dev' --milestone 'Sprint 2' --body '**User Story:** US07
**Tipo:** Dev
**Estimativa:** 2 h

Tarefa da secção 7.1 do documento do Sprint 1 (docs/Sprint1_Analise_e_Planeamento.docx).'
gh issue create --repo "$REPO" --title '[US07] Calculadora' --label US07 --label 'tipo: dev' --milestone 'Sprint 2' --body '**User Story:** US07
**Tipo:** Dev
**Estimativa:** 4 h

Tarefa da secção 7.1 do documento do Sprint 1 (docs/Sprint1_Analise_e_Planeamento.docx).'
gh issue create --repo "$REPO" --title '[US07] Bloco de notas (tabela Nota)' --label US07 --label 'tipo: dev' --milestone 'Sprint 2' --body '**User Story:** US07
**Tipo:** Dev
**Estimativa:** 4 h

Tarefa da secção 7.1 do documento do Sprint 1 (docs/Sprint1_Analise_e_Planeamento.docx).'
gh issue create --repo "$REPO" --title '[US07] Testes das ferramentas' --label US07 --label 'tipo: teste' --milestone 'Sprint 2' --body '**User Story:** US07
**Tipo:** Teste
**Estimativa:** 2 h

Tarefa da secção 7.1 do documento do Sprint 1 (docs/Sprint1_Analise_e_Planeamento.docx).'
gh issue create --repo "$REPO" --title '[US04] PIN do familiar e permissões limitadas (PerfilFamiliar)' --label US04 --label 'tipo: dev' --milestone 'Sprint 3' --body '**User Story:** US04
**Tipo:** Dev
**Estimativa:** 4 h

Tarefa da secção 7.1 do documento do Sprint 1 (docs/Sprint1_Analise_e_Planeamento.docx).'
gh issue create --repo "$REPO" --title '[US04] Ecrã do registo de comunicações' --label US04 --label 'tipo: dev' --milestone 'Sprint 3' --body '**User Story:** US04
**Tipo:** Dev
**Estimativa:** 4 h

Tarefa da secção 7.1 do documento do Sprint 1 (docs/Sprint1_Analise_e_Planeamento.docx).'
gh issue create --repo "$REPO" --title '[US04] Testes: o familiar só consulta o registo e não altera definições' --label US04 --label 'tipo: teste' --milestone 'Sprint 3' --body '**User Story:** US04
**Tipo:** Teste
**Estimativa:** 2 h

Tarefa da secção 7.1 do documento do Sprint 1 (docs/Sprint1_Analise_e_Planeamento.docx).'
gh issue create --repo "$REPO" --title '[US08] Câmara' --label US08 --label 'tipo: dev' --milestone 'Sprint 3' --body '**User Story:** US08
**Tipo:** Dev
**Estimativa:** 5 h

Tarefa da secção 7.1 do documento do Sprint 1 (docs/Sprint1_Analise_e_Planeamento.docx).'
gh issue create --repo "$REPO" --title '[US08] Galeria privada da app (tabela Fotografia)' --label US08 --label 'tipo: dev' --milestone 'Sprint 3' --body '**User Story:** US08
**Tipo:** Dev
**Estimativa:** 3 h

Tarefa da secção 7.1 do documento do Sprint 1 (docs/Sprint1_Analise_e_Planeamento.docx).'
gh issue create --repo "$REPO" --title '[US08] Testes da câmara e da galeria' --label US08 --label 'tipo: teste' --milestone 'Sprint 3' --body '**User Story:** US08
**Tipo:** Teste
**Estimativa:** 1 h

Tarefa da secção 7.1 do documento do Sprint 1 (docs/Sprint1_Analise_e_Planeamento.docx).'
gh issue create --repo "$REPO" --title '[US05] Ecrã dos pais: ativar e desativar funções' --label US05 --label 'tipo: dev' --milestone 'Sprint 3' --body '**User Story:** US05
**Tipo:** Dev
**Estimativa:** 3 h

Tarefa da secção 7.1 do documento do Sprint 1 (docs/Sprint1_Analise_e_Planeamento.docx).'
gh issue create --repo "$REPO" --title '[US05] Ecrã inicial mostra só as funções ativas' --label US05 --label 'tipo: dev' --milestone 'Sprint 3' --body '**User Story:** US05
**Tipo:** Dev
**Estimativa:** 2 h

Tarefa da secção 7.1 do documento do Sprint 1 (docs/Sprint1_Analise_e_Planeamento.docx).'
gh issue create --repo "$REPO" --title '[US05] Testes: uma função desativada não aparece' --label US05 --label 'tipo: teste' --milestone 'Sprint 3' --body '**User Story:** US05
**Tipo:** Teste
**Estimativa:** 1 h

Tarefa da secção 7.1 do documento do Sprint 1 (docs/Sprint1_Analise_e_Planeamento.docx).'
gh issue create --repo "$REPO" --title '[Todas] Testes com pais e crianças' --label Todas --label 'tipo: teste' --milestone 'Sprint 3' --body '**User Story:** Todas
**Tipo:** Teste
**Estimativa:** 6 h

Tarefa da secção 7.1 do documento do Sprint 1 (docs/Sprint1_Analise_e_Planeamento.docx).'
gh issue create --repo "$REPO" --title '[Todas] Instruções de instalação (Device Owner) e geração da APK' --label Todas --label 'tipo: dev' --milestone 'Sprint 3' --body '**User Story:** Todas
**Tipo:** Dev
**Estimativa:** 3 h

Tarefa da secção 7.1 do documento do Sprint 1 (docs/Sprint1_Analise_e_Planeamento.docx).'

echo "Feito: $(gh issue list --repo "$REPO" --limit 200 --json number --jq length) issues no repositório."
