-- Create tables for users and sessions.

CREATE TABLE users (
  id INTEGER PRIMARY KEY NOT NULL,
  username VARCHAR UNIQUE NOT NULL,
  realname VARCHAR NOT NULL,
  password VARCHAR UNIQUE NOT NULL
);

CREATE UNIQUE INDEX users_username_idx ON users (username);

CREATE TABLE sessions (
  id INTEGER PRIMARY KEY NOT NULL,
  cookie VARCHAR NOT NULL,
  user_id INTEGER NOT NULL REFERENCES users (id)
  -- TODO time created?  time last accessed?  both?
  -- Other "nice to have" fields may be added here or reference by id
);

CREATE UNIQUE INDEX sessions_cookie_idx ON users (username);
