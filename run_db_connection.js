#!/usr/bin/env node
// import pg from 'pg';
// import { Connector } from '@google-cloud/cloud-sql-connector';
// const {Pool} = pg;

// process.env.GOOGLE_APPLICATION_CREDENTIALS = 'C:/Users/Bandag/Downloads/bandagtyrescloudsql.json';
// process.env.INSTANCE_CONNECTION_NAME = 'swazi-bandag:europe-west1:bandagtyres-instance';

// const connector = new Connector();
// async function connectToDatabase() {
//   const clientOpts = await connector.getOptions({
//     instanceConnectionName: 'swazi-bandag:europe-west1:bandagtyres-instance',
//     ipType: 'PUBLIC'
//   });
//   const pool = new Pool({
//     ...clientOpts,
//     user: 'bhekim',
//     password: '@bandag2022!',
//     database: 'bandagtyres_db',
//     max: 5,
//   });
//   console.log('Successfully connected to database');
//   const {rows} = await pool.query('SELECT NOW()');
//   console.table(rows); 
//   // Add your database operations here
  
//   await pool.end();
//   connector.close();
//   console.log('Disconnected from database');
// }

// async function main() {
//   try {
//     await connectToDatabase();
//   } catch (error) {
//     console.error('Error:', error);
//   }
// }

// main().catch(console.error);

import pg from 'pg';
const {Pool} = pg;
// import { Pool } from 'pg';
process.env.DATABASE_URL='postgres://postgres:@bandag2022!@localhost:5432/bandagtyres_db_development';

const pool = new Pool({
  user: 'postgres',
  host: 'localhost',
  database: 'postgres',
  password: '@bandag2022!',
  port: 5432,
});

async function connectToDatabase() {
  try {
    await pool.connect();
    console.log('Connected to the database successfully!');
  } catch (error) {
    console.error('Error connecting to the database:', error);
  }
}

connectToDatabase();

export default pool;