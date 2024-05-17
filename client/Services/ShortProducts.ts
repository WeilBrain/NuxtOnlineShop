import axios from 'axios';

const API_URL = `http://localhost:3001/api/ShortProducts`;
console.log(API_URL);

interface ShortProduct {
    id: number;
    image: string;
    name: string;
    description: string;
    price: string;
    location: string;
}

class ProductService {
    async getProducts():  Promise<any>  {
        try {
            const response = await axios.get(API_URL);

            if (Array.isArray(response.data)) {
                return response.data as ShortProduct[]; // Указываем тип данных
            } else {
                console.error('Ошибка: Некорректный формат данных в ответе сервера');
                throw new Error('Некорректный формат данных в ответе сервера');
            }
        } catch (error) {
            console.error('Ошибка при получении данных о продуктах:', error);
            throw error;
        }
    }
}

export default new ProductService();
