-- Requete 1

create or replace function calculMoyenneAltitude() returns integer as 
	$$
	declare 
		stationsParcourues cursor for select altitude from STATION;
		altitudeTotale integer := 0;
		stationsTotales integer := 0;
    		moyenneFinale integer :=0;
	begin
		for altLue in stationsParcourues loop
			altitudeTotale = altitudeTotale+altLue.altitude;
			stationsTotales = stationsTotales+1 ;
		end loop;
   		moyenneFinale :=altitudeTotale/stationsTotales;
		return moyenneFinale;
	end;
	$$ language plpgsql
