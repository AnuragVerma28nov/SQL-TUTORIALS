-- DCL COMMANDS

-- 1. GRANT
-- Syntax 
GRANT privilege_name -- {SELECT,INSERT,UPDATE,DELETE,ALL}
ON object_name -- {Table name,View name,Sequence}
TO user_name;

-- 2. REVOKE
-- Syntax
REVOKE privilege_name
ON object_name
FROM user_name

-- 3. DENY (Used mainly in SQL Server)
-- Syntax
DENY privilege_name
ON object_name
TO user_name;

