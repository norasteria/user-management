CREATE TABLE users (
  id            UUID,
  created_at    TIMESTAMP WITH TIME ZONE   NOT NULL,
  updated_at    TIMESTAMP WITH TIME ZONE   NOT NULL,
  email         TEXT    UNIQUE             NOT NULL,
  password_hash TEXT                       NOT NULL,
  is_active     BOOLEAN                    NOT NULL,
  reset_token   TEXT,
  reset_token_expiry TIMESTAMP,
  PRIMARY KEY (id)
);