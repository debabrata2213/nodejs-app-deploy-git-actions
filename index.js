import express from 'express';

const app = express();
const port = process.env.PORT ?? 8080;

app.get('/',(req,res)=>{
    return res.json({msg:"From the Server..."})
})

app.listen(port,()=>{
    console.log(`server is running on port -> ${port}`)
})