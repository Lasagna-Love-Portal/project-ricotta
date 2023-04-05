import { createTheme, ThemeProvider } from "@mui/material";
import "./App.css";
import Welcome from "./Welcome";

const theme = createTheme({
  palette: {
    text: {
      primary: "#323233",
      secondary:
        "#D9D9D9" /*placeholder text, form borders, nav indicators, disabled btn background */,
      disabled: "#626262" /*disabled button text*/,
      bold: "#171717" /*Confirmations and text after sign up*/,
    },
    primary: {
      main: "#ED7538",
      light: "#F1996C",
      dark: "#CA693A",
    },
    secondary: {
      main: "#F1B434",
      contrastText: "#000000",
    },
    background: {
      paper: "#FFFAF7",
      default: "#FFF",
    },
  },
  typography: {
    fontFamily: "Lato, sans-serif",
    fontSize: "16px",
    h1: {
      fontSize: "2.5rem",
    },
    h2: {
      fontSize: "1.875rem",
    },
    h3: {
      fontSize: "1.25rem",
    },
    button: {
      fontSize: "1.125rem",
      fontWeight: 700,
    },
  },
});

function App() {
  return (
    <ThemeProvider theme={theme}>
      <div className="App">
        <Welcome />
      </div>
    </ThemeProvider>
  );
}

export default App;
