const express = require('express');
const router = express.Router();

const reviewsController = require('../../controllers/reviews/reviews.controller');
// Маршрут для получения списка отзывов
router.route('/reviews')
    .get(reviewsController.getReviews);

module.exports = router;
