-- write your queries here
SELECT * FROM vehicles FULL JOIN owners ON vehicles.owner_id = owners.id;
SELECT first_name, last_name, COUNT(*) FROM owners JOIN vehicles ON vehicles.owner_id = owners.id GROUP BY first_name, last_name ORDER BY first_name;
SELECT first_name, last_name, ROUND(AVG(CAST(price AS numeric)), 0) AS avg_price, COUNT(*) FROM owners JOIN vehicles ON vehicles.owner_id = owners.id GROUP BY first_name, last_name;
SELECT first_name, last_name, ROUND(AVG(CAST(price AS numeric)), 0) AS avg_price, COUNT(*) AS total FROM owners JOIN vehicles ON vehicles.owner_id = owners.id GROUP BY first_name, last_name HAVING   COUNT(*) > 1 AND ROUND(AVG(CAST(price AS numeric)), 0) > 10000
ORDER BY first_name DESC;