import express from "express";
import { getPost } from "../controllers/post.controller.js";


const router = express.Router();

// endpoints o ruta para obtener post
router.get("/", getPost);


export default router;