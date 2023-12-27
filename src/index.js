// Node modules
const app = require("express")();

// Properties
const port = process.env.PORT || 8000;

app.get("/", (request, response) =>
  response.json({ message: "Docker is easy 🐳" })
);

app.listen(port, () => console.log(`Wordcloud listening on localhost:${port}`));
