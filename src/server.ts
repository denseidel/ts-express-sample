import express, { Request, Response } from 'express';

const server = express();

server.get('/healthz', (_req: Request, res: Response) => {
    res.sendStatus(200);
})

server.get('/hello', (_req: Request, res: Response) => {
    res.send('Hello World!');
})

export { server }