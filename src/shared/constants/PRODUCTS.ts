import vesi from './vesi.json'

export interface Vesi {
    image?: string;
    title: string;
    description: string;
  }

export const PRODUCTS_DATA: Vesi[] = vesi