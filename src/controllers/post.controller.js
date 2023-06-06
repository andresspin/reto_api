import { PrismaClient } from "@prisma/client";


const prisma = new PrismaClient();


export const getPost = async (req, res) => {
  try {
    const posts = await prisma.post.findMany({
      include: {
        comments: true,
      },
    });
    res.json(posts);
    //console.log(posts)
  } catch (error) {
    console.error(error);
    res.status(500).json({ error: "An error occurred" });
  }
};


