CREATE OR REPLACE FUNCTION capsPremiereLettreNom(name VARCHAR) RETURNS VARCHAR AS
    $$
    
    DECLARE

        len int := CHAR_LENGTH(name);
        result varchar := '';

    BEGIN
        name = LOWER(name);
        
        result = CONCAT(UPPER(LEFT(name, 1)), LOWER(SUBSTRING(name, 2)));
        
        RETURN result;
            
    END;
    
    $$ language plpgsql;
   
