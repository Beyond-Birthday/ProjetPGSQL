create or replace function capsPremiereLettreTousNoms() returns integer as 
	$$
	declare 
		SkieursLus cursor for select nomSkieur from SKIEUR;
		lignesModifiees integer := 0;
	begin
		for nomLus in SkieursLus loop
			capsPremiereLettreNom(nomLus.nomSkieur);
			lignesModifiees = lignesModifiees+1;
		end loop;
    return lignesModifiees;
	end;
	$$ language plpgsql
