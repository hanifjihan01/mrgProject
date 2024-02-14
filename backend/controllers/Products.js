import Product from "../models/ProductModel.js";
import User from "../models/UserModel.js";
import {Op} from "sequelize";

export const getProducts = async(req,res) => {
    try {
        let response;
        if(req.role === "Officer"){
            response = await Product.findAll({
                attributes: ['uuid', 'name', 'amount'],
                include: [{
                    model: User,
                    attributes: ['name', 'email']
                }]
            });
        }else{
            response = await Product.findAll({
                attributes: ['uuid', 'name', 'amount'],
                where:{
                    userId: req.userId
                },
                include: [{
                    model: User,
                    attributes: ['name', 'email']
                }]
            });
        }
        res.status(200).json(response);
    } catch (error) {
        res.status(500).json({msg: error.message});
    }
}
export const getProductById = async(req,res) => {
    try {
         const product = await Product.findOne({
            where: {
                uuid: req.params.id
            }
         });
         if(!product) return res.status(404).json({msg: "Data tidak ditemukan"});
        let response;
        if(req.role === "Officer"){
            response = await Product.findOne({
                attributes: ['uuid', 'name', 'amount'],
                where: {
                    id: product.id
                },
                include: [{
                    model: User,
                    attributes: ['name', 'email']
                }]
            });
        }else{
            response = await Product.findOne({
                attributes: ['uuid', 'name', 'amount'],
                where:{
                    [Op.and] : [{id: product.id}, {userId: req.userId}]
                    
                },
                include: [{
                    model: User,
                    attributes: ['name', 'email']
                }]
            });
        }
        res.status(200).json(response);
    } catch (error) {
        res.status(500).json({msg: error.message});
    }
}
export const createProduct = async(req,res) => {
    const {name, amount} = req.body;
    try {
        await Product.create({
            name: name,
            amount: amount,
            userId: req.userId
        });
        res.status(201).json({msg: "Product Created Succesfully"});
    } catch (error) {
        res.status(500).json({msg: error.message});
    }
}

export const updateProduct = async(req,res) => {
    try {
        const product = await Product.findOne({
           where: {
               uuid: req.params.id
           }
        });
        if(!product) return res.status(404).json({msg: "Data tidak ditemukan"});
        const {name, amount} = req.body;
       if(req.role === "manager"){
            await Product.update({name,amount}, {
                where:{
                    id: product.id
                }
            });
       }else{
        if(req.userId !== product.userId) return res.status(403).json({msg: "Akses terlarang"});
        await Product.update({name,amount}, {
            where:{
                [Op.and] : [{id: product.id}, {userId: req.userId}]
                
            }
        });
       }
       res.status(200).json({msg: "Product Updated"});
   } catch (error) {
       res.status(500).json({msg: error.message});
   }
}

export const deleteProduct = async(req,res) => {
    try {
        const product = await Product.findOne({
           where: {
               uuid: req.params.id
           }
        });
        if(!product) return res.status(404).json({msg: "Data tidak ditemukan"});
        const {name, amount} = req.body;
       if(req.role === "manager"){
            await Product.destroy({
                where:{
                    id: product.id
                }
            });
       }else{
        if(req.userId !== product.userId) return res.status(403).json({msg: "Akses terlarang"});
        await Product.destroy({
            where:{
                [Op.and] : [{id: product.id}, {userId: req.userId}]
                
            }
        });
       }
       res.status(200).json({msg: "Product Deleted"});
   } catch (error) {
       res.status(500).json({msg: error.message});
   }
}