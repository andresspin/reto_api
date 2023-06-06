import { PrismaClient } from "@prisma/client";



const prisma = new PrismaClient();

export const createComment = async (req, res) => {
  try {
    const { content, post_idpost } = req.body; 
    const comment = await prisma.comments.create({
      data: {
        comcontent: content,
        post_idpost: post_idpost,
      },
    });
    res.json(comment);
  } catch (error) {
    console.error(error);
    res.status(500).json({ error: "An error occurred" });
  }
};


export const getComment = async (req, res) => {
  try {
    const comments = await prisma.comments.findMany();
    res.json(comments);
  } catch (error) {
    console.error(error);
    res.status(500).json({ error: "An error occurred" });
  }
};


export const getCommentById = async (req, res) => {
  try {
    const { id } = req.params;
    const comment = await prisma.comments.findUnique({
      where: {
        idcomments: parseInt(id),
      },
    });
    res.json(comment);
  } catch (error) {
    console.error(error);
    res.status(500).json({ error: "An error occurred" });
  }
};


export const editComment = async (req, res) => {
  try {
    const { id } = req.params;
    const { content } = req.body;
    const updatedComment = await prisma.comments.update({
      where: {
        idcomments: parseInt(id),
      },
      data: {
        comcontent: content,
      },
    });
    res.json(updatedComment);
  } catch (error) {
    console.error(error);
    res.status(500).json({ error: "An error occurred" });
  }
};


export const deleteComment = async (req, res) => {
  try {
    const { id } = req.params;
    await prisma.comments.delete({
      where: {
        idcomments: parseInt(id),
      },
    });
    res.json({ message: "Comment deleted" });
  } catch (error) {
    console.error(error);
    res.status(500).json({ error: "An error occurred" });
  }
};