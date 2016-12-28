SATIS_PATH="/satisfy"
SATIS_BIN="/satisfy/bin/satis"
SATIS_PUBLIC="/satisfy/web/"

${SATIS_BIN} -vvv -n build /app/config.json ${SATIS_PUBLIC}
