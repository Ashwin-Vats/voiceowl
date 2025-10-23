import express from 'express';
import mongoose from 'mongoose';
import dotenv from 'dotenv';


dotenv.config();
const app = express();
app.use(express.json());


const PORT = process.env.PORT || 8080;
const MONGO_URI = process.env.MONGO_URI || 'mongodb://mongo:27017/devsecops';


mongoose.connect(MONGO_URI).then(() => console.log('Connected to MongoDB')).catch(console.error);


app.get('/', (req, res) => res.send('Secure Node.js Microservice running ✅'));