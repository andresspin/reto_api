  import express from "express";
  import postRouter from "./routes/post.router.js";
  import commentsRouter from "./routes/comments.route.js"

  const app = express();

  app.get("/", (req, res) => {
    res.send("Reto API");
  });

  app.use(express.json());
  app.use("/post", postRouter);
  app.use("/comments", commentsRouter);



  app.listen(4000, () => {
    console.log("Server initialized!");
  });
