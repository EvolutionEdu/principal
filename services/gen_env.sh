# !/bin/bash

FILE=".env"
if [ -e "$FILE" ]; then
    echo "Ya existe $FILE, pista: "
    echo "Intente usar primero: 'rm $FILE'"
    echo "Con esto podemos creer que esta realmente seguro de cambiar la key"
else
    echo "\n\n"JWT_SECRET=$(openssl rand -hex 64) > "$FILE"
fi

