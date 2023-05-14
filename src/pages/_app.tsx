import '@/styles/globals.css'
import { createTheme, ThemeProvider } from "@mui/material/styles";
import type { AppProps } from 'next/app'


const theme = createTheme({
  palette: {
    text: {
      primary: "#323233",
      secondary:
        "#D9D9D9" /*placeholder text, form borders, nav indicators, disabled btn background */,
      disabled: "#626262" /*disabled button text*/,
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
    fontSize: 16,
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
      ],
    },
    MuiLink: {
      variants: [
        {
          props: { variant: "button" },
          style: {
            color: "#CA693A",
            fontSize: "inherit",
            fontWeight: "bold",
            textTransform: "none",
            textDecoration: "underline #CA693A",
          },
        },
      ],
    },
  },
});

export default function App({ Component, pageProps }: AppProps) {
  return (
    <ThemeProvider theme={theme}>
      <Component {...pageProps} />
    </ThemeProvider>
  )
}
