import axios from 'axios';

const API_URL = `http://localhost:3001/api/productFilters`;

interface FilterParams {
    query?: string;
    location?: string;
    propertyType?: string;
    pricingRange?: string;
    propertySize?: string;
    buildYear?: string;
}

interface ShortProduct {
    id: number;
    image: string;
    name: string;
    description: string;
    price: string;
    location: string;
}

class FilteredProduct {
    async getFilteredProducts(params: FilterParams): Promise<ShortProduct[]> {
        try {
            const response = await axios.get(API_URL, { params });

            if (Array.isArray(response.data)) {
                return response.data as ShortProduct[]; // Указываем тип данных
            } else {
                console.error('Ошибка: Некорректный формат данных в ответе сервера');
                throw new Error('Некорректный формат данных в ответе сервера');
            }
        } catch (error) {
            console.error('Ошибка при получении отфильтрованных данных:', error);
            throw error;
        }
    }
}

export default new FilteredProduct();
