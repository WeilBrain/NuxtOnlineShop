import axios from 'axios';

const API_URL = 'http://localhost:3001/api/reviews';

interface ReviewData {
    id: number;
    type: string,
    star: number,
    title: string,
    description: string,
    avatar: string,
    user: string,
    location: string,
}

class ReviewsService {
    async getReviews():  Promise<ReviewData[]>  {
        try {
            const response = await axios.get(API_URL);

            if (Array.isArray(response.data)) {
                return response.data as ReviewData[];
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

export default new ReviewsService();
