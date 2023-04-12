import { createTheme, ThemeProvider } from "@mui/material/styles";
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
    fontFamily: ["Lato", "sans-serif"].join(","),
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
  components: {
    MuiButton: {
      defaultProps: {
        variant: "contained",
        color: "inherit",
        style: {
          textTransform: "none",
          backgroundColor: "#ED7538",
        },
      },
      variants: [
        {
          props: { variant: "pill" },
          style: {
            borderRadius: 50,
          },
        },
        {
          props: { variant: "pill", color: "primary" },
          style: {
            backgroundColor: "#ED7538",
            color: "#FFFFFF",
            borderRadius: "50px",
            margin: "40px 0 14px 0",
            width: "100%",
            maxWidth: "350px",
            padding: "15px",
          },
        },
      ],
    },
  },
});

function App() {
  return (
    <ThemeProvider theme={theme}>
      <div className="app">
        <Welcome />
      </div>
    </ThemeProvider>
  );
}

export default App;
