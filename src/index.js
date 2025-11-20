require('dotenv').config();
const app = require('./app');
const prisma = require('./infrastructure/prismaClient');


const PORT = process.env.PORT || 3000;


async function main() {
    await prisma.$connect();
    console.log('Connected to DB');


    app.listen(PORT, () => {
        console.log(`Server listening on port ${PORT}`);
    });
}


main().catch((err) => {
    console.error('Failed to start', err);
    process.exit(1);
});