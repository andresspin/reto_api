import express from "express";
import { createComment,getComment,getCommentById,deleteComment , editComment} from "../controllers/comments.controller.js";

const router = express.Router();

// endpoints 
router.post("/", createComment);
router.get("/", getComment);
router.get("/:id", getCommentById);
router.put("/:id", editComment); // Cambiado a PUT en lugar de POST
router.delete("/:id", deleteComment);



export default router;
