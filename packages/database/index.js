import { createClient } from "@supabase/supabase-js";
import * as dotenv from "dotenv"; // see https://github.com/motdotla/dotenv#how-do-i-use-dotenv-with-import
dotenv.config();

const supabase = createClient(
  process.env.SUPABASE_URL,
  process.env.SUPABASE_KEY
);

const { data, error } = await supabase.from("lasagna_chef").select();

console.log(data, error);
