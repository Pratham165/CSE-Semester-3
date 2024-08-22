const express = require('express');
const mongoose = require('mongoose');
const bodyParser = require('body-parser');

const Faculty = require('./Faculty');

const connectionString = "mongodb+srv://23010101170:Pratham!65@cluster0.2rk8j.mongodb.net/Faculty";

mongoose.connect(connectionString).then(()=>{
    console.log('Connected with cloud database');
    const app = express();

    app.use(bodyParser.urlencoded());

    //get All
    app.get('/faculties',async (req,res)=>{
        const ans = await Faculty.find();
        res.send(ans);
    });

    //getby ID
    app.get('/faculties/:id',async (req,res)=>{
        const ans = await Faculty.findOne({
            id:req.params.id
        });
        res.send(ans);
    });

    //create 
    app.post('/faculties',async (req,res)=>{
        fac = new Faculty({...req.body});
        const ans = await fac.save();
        res.send(ans);
    });

    //delete
    app.delete('/faculties/:id',async (req,res)=>{
        const ans = await Faculty.deleteOne({
            id:req.params.id
        });
        res.send(ans);
    });

    app.patch('/faculties/:id',async (req,res)=>{
        fac = await Faculty.findOne({id:req.params.id});

        fac.name = req.body.name;
        
        const ans = await fac.save();
        res.send(ans);
    });

    app.get('/faculties/search/:text',async (req,res)=>{
        const ans = await Faculty.find({name:{$regex:req.params.text}});

        res.send(ans);
    })

    app.listen(3000,()=>{
        console.log("Server strated @ 3000");
    })
});