#!/bin/bash
AMBIENTE=$1
API_URL="http://ec2-18-217-33-209.us-east-2.compute.amazonaws.com"  # ← ALTERE AQUI
echo "Vou iniciar deploy no ambiente: $AMBIENTE"
echo "O endereco da api sera: $API_URL"

# Verificar ambiente válido
if [ "$AMBIENTE" != "hom" ] && [ "$AMBIENTE" != "prd" ]; then
    echo "Ambiente invalido"
    exit 1
fi

. react.sh
. s3.sh

echo "Fazendo deploy..."

build $API_URL
envio_s3

echo "Finalizado"