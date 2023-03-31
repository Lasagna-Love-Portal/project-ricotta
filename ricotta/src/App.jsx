import { useEffect, useState } from "react";
import { createClient } from "@supabase/supabase-js";

const supabase = createClient(
  "https://izjyyrjvndgardiyihcc.supabase.co",
  "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Iml6anl5cmp2bmRnYXJkaXlpaGNjIiwicm9sZSI6ImFub24iLCJpYXQiOjE2ODAyOTE4ODcsImV4cCI6MTk5NTg2Nzg4N30.DmlpJGUrful5rVrb5BeE6MaXmzJi5Q-bv0_Ta3EcE74"
);

function App() {
  const [countries, setCountries] = useState([]);

  useEffect(() => {
    getCountries();
  }, []);

  async function getCountries() {
    const { data } = await supabase.from("countries").select();
    setCountries(data);
  }

  return (
    <ul>
      {countries.map((country) => (
        <li key={country.name}>{country.name}</li>
      ))}
    </ul>
  );
}

export default App;
