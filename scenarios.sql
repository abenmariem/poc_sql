
-- Parcourir arborescence recursivement à partir du noeud racine (id = 1)

WITH RECURSIVE sub_table AS (
    -- base case starting from pdg
   SELECT
      id,
      parent_id,
      name
   FROM
      organisation
   WHERE
      id =1
   
   UNION 
   
    --- recursive query (note it adds to the partial table "x")
    
    SELECT
        org.id,
        org.parent_id,
        org.name
        
    from organisation org
    
    INNER JOIN sub_table st 
    
    ON org.parent_id = st.id
    
) select * from sub_table ;



-- get the persons of organisation3

select * from person where  organisation_id = 3


-- insert child organisation 6 to organisation 3
 INSERT INTO organisation 
 VALUES (6,'organisation6', 3);


--insert persons in the organisation 6

INSERT INTO person 
VALUES 
     (13,'person13', 6),
     (14,'person14', 6),
     (15,'person15', 6),
     (16,'person16', 6);
    
-- get all persons of organisation 6
    
    select * from person where  organisation_id = 6

