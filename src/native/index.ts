/**
 * Contrato interno entre a interface React Native e os módulos nativos Android
 * (secção 6.2 do documento do Sprint 1). Os módulos são implementados em Kotlin
 * em android/app/src/main/java/com/ninho/modules (Sprint 2).
 */
import {NativeModules} from 'react-native';

export interface KioskModuleSpec {
  /** Ativa o Lock Task Mode. Erro se o Ninho não for Device Owner (ADR-002). */
  ativar(): Promise<void>;
  estado(): Promise<{ativo: boolean}>;
}

export interface CallModuleSpec {
  /** Rejeita se o contacto não estiver autorizado (US11). */
  ligar(contactoId: number): Promise<void>;
  /** Liga ao 112 sem PIN nem consulta à lista (US03, NF03). */
  ligarEmergencia(): Promise<void>;
}

export interface SmsRecebido {
  contactoId: number;
  texto: string;
  dataHora: string;
}

export interface SmsModuleSpec {
  enviar(contactoId: number, texto: string): Promise<void>;
}

export interface PinModuleSpec {
  verificar(pin: string): Promise<{
    ok: boolean;
    tentativasRestantes: number;
    bloqueadoAte?: string;
  }>;
}

export const KioskModule = NativeModules.KioskModule as KioskModuleSpec | undefined;
export const CallModule = NativeModules.CallModule as CallModuleSpec | undefined;
export const SmsModule = NativeModules.SmsModule as SmsModuleSpec | undefined;
export const PinModule = NativeModules.PinModule as PinModuleSpec | undefined;
