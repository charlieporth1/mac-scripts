docker inspect -f '{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' database-exsh5t
