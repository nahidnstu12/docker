-- Create databases for each project
CREATE DATABASE scholars;
CREATE DATABASE foodpanda;
CREATE DATABASE radius-directory;

-- Grant privileges to admin user
GRANT ALL PRIVILEGES ON DATABASE scholars TO admin;
GRANT ALL PRIVILEGES ON DATABASE foodpanda TO admin;
GRANT ALL PRIVILEGES ON DATABASE radius-directory TO admin;
GRANT ALL PRIVILEGES ON DATABASE postgres TO admin;

