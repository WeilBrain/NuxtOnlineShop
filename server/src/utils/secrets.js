require('dotenv').config();

const { logger } = require('../../../server_back/src/utils/logger');

const {
    DB_HOST,
    DB_USER,
    DB_PASS,
    DB_NAME,
    JWT_SECRET_KEY,
    ENCRYPTION_SECRET_KEY,
    EMAIL_SERVICE_USER,
    EMAIL_SERVICE_PASS,
    EMAIL_SERVICE_SERVICE,
    FRONTEND_URL,
} = process.env;

const requiredCredentials = [
    'DB_HOST',
    'DB_USER',
    'DB_PASS',
    'DB_NAME',
    'JWT_SECRET_KEY',
    'ENCRYPTION_SECRET_KEY',
    'EMAIL_SERVICE_USER',
    'EMAIL_SERVICE_PASS',
    'EMAIL_SERVICE_SERVICE',
    'FRONTEND_URL',
];

for (const credential of requiredCredentials) {
    if (process.env[credential] === undefined) {
        logger.error(`Missing required crendential: ${credential}`);
        process.exit(1);
    }
}

module.exports = {
    DB_HOST,
    DB_USER,
    DB_PASS,
    DB_NAME,
    JWT_SECRET_KEY,
    ENCRYPTION_SECRET_KEY,
    EMAIL_SERVICE_USER,
    EMAIL_SERVICE_PASS,
    EMAIL_SERVICE_SERVICE,
    FRONTEND_URL,
};
