# Local Database Setup

1. install docker

```sh
yarn install
npx supabase login
npx supabase init
npx supabase start
npx supabase status
```

Copy the database API URL and anon key and add them to the .env file

# Run example query

```sh
node index.js
```

# Add some data

Data will be added by the migration sql and seed.sql in supabase folder
to use the supbase commands to create a new migration

```sh
npx supabase migration new my_database_change
npx supabase db reset
```

# Stop Database

```sh
npx supabase stop
```

# TODO

1. add prisma
   https://supabase.com/docs/guides/integrations/prisma
