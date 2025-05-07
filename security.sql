-- Create Users
CREATE USER 'ash'@'localhost' IDENTIFIED BY 'pikachu123';
CREATE USER 'misty'@'localhost' IDENTIFIED BY 'togepi123';
CREATE USER 'brock'@'localhost' IDENTIFIED BY 'onix456';

-- Create Roles
CREATE ROLE viewer_role;
CREATE ROLE admin_role;

-- Grant privileges
GRANT SELECT ON PokemonDB.* TO viewer_role;
GRANT SELECT, INSERT, UPDATE, DELETE, CREATE, DROP ON PokemonDB.* TO admin_role;

-- Assign roles to users
GRANT viewer_role TO 'ash'@'localhost';
GRANT viewer_role TO 'misty'@'localhost';
GRANT admin_role TO 'brock'@'localhost';
