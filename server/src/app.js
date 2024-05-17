//app.js
const express = require('express');
const morgan = require('morgan');
const cors = require('cors');
const cookieParser = require('cookie-parser');
const bodyParser = require('body-parser');

const { httpLogStream } = require('./utils/logger');

const app = express();

app.use(cors({
    origin: 'http://localhost:3000',
    credentials: true,
}));

const product = require('./routes/product/product.route.js');
const productsAbout = require('./routes/product/productAbout');
const GetProductFilters = require('./routes/product/productFilters.js')

const reviews = require('./routes/reviews/reviews.router')

app.use(cookieParser());

app.use(morgan('dev'));
app.use(morgan('combined', { stream: httpLogStream }));

app.use(express.json());
app.use(express.urlencoded({ extended: false }));

app.use(bodyParser.urlencoded({ extended: false }));
app.use(bodyParser.json());

app.use('/api', reviews, GetProductFilters)
app.use('/api', product, productsAbout)

const errorHandler = require('./middlewares/auth/errorHandler');

app.use(errorHandler.handleTokenExpiredError);
app.use(errorHandler.handleInvalidTokenError);
app.use(errorHandler.handleDatabaseError);

app.use((err, req, res, next) => {
    res.status(err.statusCode || 500).send({
        status: "error",
        message: err.message
    });
    next();
});

module.exports = app;