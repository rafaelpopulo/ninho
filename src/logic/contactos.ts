/**
 * Regras de contactos do Ninho (camada de lógica).
 * Relacionado com: US02, US03, US09, US11 · NF03.
 */

export const NUMERO_EMERGENCIA = '112';

export interface ContactoAutorizado {
  id: number;
  nome: string;
  parentesco: string;
  telefone: string;
}

/** Remove espaços, hífenes e o indicativo +351/00351 para comparar números. */
export function normalizarNumero(numero: string): string {
  let n = numero.replace(/[\s\-().]/g, '');
  if (n.startsWith('+351')) {
    n = n.slice(4);
  } else if (n.startsWith('00351')) {
    n = n.slice(5);
  }
  return n;
}

/** Número português válido: 9 dígitos a começar por 2 ou 9 (fixo ou móvel). */
export function numeroValido(numero: string): boolean {
  return /^[29]\d{8}$/.test(normalizarNumero(numero));
}

/** O 112 é sempre permitido, mesmo sem estar na lista (US03, NF03). */
export function ehEmergencia(numero: string): boolean {
  return normalizarNumero(numero) === NUMERO_EMERGENCIA;
}

/** Devolve o contacto autorizado com este número, ou undefined. */
export function encontrarContacto(
  numero: string,
  autorizados: ContactoAutorizado[],
): ContactoAutorizado | undefined {
  const alvo = normalizarNumero(numero);
  return autorizados.find(c => normalizarNumero(c.telefone) === alvo);
}

/** A criança só pode contactar o 112 ou um contacto da lista (US11). */
export function podeContactar(
  numero: string,
  autorizados: ContactoAutorizado[],
): boolean {
  return ehEmergencia(numero) || encontrarContacto(numero, autorizados) !== undefined;
}
