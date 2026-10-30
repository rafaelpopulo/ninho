import {describe, expect, it} from '@jest/globals';
import {
  ContactoAutorizado,
  ehEmergencia,
  normalizarNumero,
  numeroValido,
  podeContactar,
} from '../../src/logic/contactos';

const lista: ContactoAutorizado[] = [
  {id: 1, nome: 'Mãe', parentesco: 'mãe', telefone: '912 345 678'},
  {id: 2, nome: 'Avó Rosa', parentesco: 'avó', telefone: '+351 913 222 111'},
];

describe('normalizarNumero', () => {
  it('remove espaços e o indicativo de Portugal', () => {
    expect(normalizarNumero('+351 913 222 111')).toBe('913222111');
    expect(normalizarNumero('00351-912-345-678')).toBe('912345678');
  });
});

describe('numeroValido (US02)', () => {
  it('aceita números portugueses de 9 dígitos', () => {
    expect(numeroValido('912 345 678')).toBe(true);
    expect(numeroValido('223 456 789')).toBe(true);
  });
  it('recusa números inválidos', () => {
    expect(numeroValido('12345')).toBe(false);
    expect(numeroValido('812345678')).toBe(false);
  });
});

describe('podeContactar (US03, US11)', () => {
  it('permite contactos da lista, com ou sem indicativo', () => {
    expect(podeContactar('912345678', lista)).toBe(true);
    expect(podeContactar('913 222 111', lista)).toBe(true);
  });
  it('recusa números fora da lista', () => {
    expect(podeContactar('961000999', lista)).toBe(false);
  });
  it('permite sempre o 112, mesmo com a lista vazia (NF03)', () => {
    expect(ehEmergencia('112')).toBe(true);
    expect(podeContactar('112', [])).toBe(true);
  });
});
