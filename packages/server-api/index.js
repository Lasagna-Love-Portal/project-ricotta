const express = require("express");
const port = process.env.PORT || 3001;
const app = express();

app.get("/", (re, res) => {
  res.send("test response from backend server");
});

app.listen(port, (err) => {
  if (err) {
    console.log(`Error: ${err.message}`);
  } else {
    console.log(`Listening on port ${port}`);
  }
});
