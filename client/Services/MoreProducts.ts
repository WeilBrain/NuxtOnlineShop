// MoreProducts.js
import axios from 'axios';

const API_URL = 'http://localhost:3001/api/'; // Обратите внимание на начальный слэш, чтобы указать абсолютный путь

// Функция для получения данных о товаре по id
export async function fetchProductById(productId: any) {
    try {
        const response = await axios.get(`${API_URL}${productId}`); // Обновите URL запроса
        return response.data;
    } catch (error) {
        throw error;
    }
}
