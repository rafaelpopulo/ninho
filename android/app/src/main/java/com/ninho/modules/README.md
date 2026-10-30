# Módulos nativos (Kotlin)

Implementam o contrato definido em `src/native/index.ts` (secção 6.2 do documento do Sprint 1).

| Módulo | APIs do Android usadas | User Stories |
|---|---|---|
| KioskModule | DevicePolicyManager, Lock Task Mode (Device Owner) | US01 |
| CallModule | TelecomManager, filtragem de chamadas | US03, US09, US11 |
| SmsModule | SmsManager, receção de SMS | US09, US11 |
| PinModule | Android Keystore | US06, US04 |

A criar no Sprint 2, depois do spike do modo quiosque (ADR-002).
