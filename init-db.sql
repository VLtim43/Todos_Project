-- Enable the UUID extension
CREATE EXTENSION IF NOT EXISTS "uuid-ossp";

-- Create the todos table
CREATE TABLE todos (
    id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
    created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    content TEXT NOT NULL,
    checked BOOLEAN DEFAULT FALSE
);

-- Example insertion, repeat or modify as needed
INSERT INTO todos (content, checked) VALUES ('First todo item', FALSE);
INSERT INTO todos (content, checked) VALUES ('Second todo item', FALSE);
INSERT INTO todos (content, checked) VALUES ('Third todo item', TRUE);