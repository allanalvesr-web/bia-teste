#!/bin/bash
function envio_s3() {
    echo "Fazendo envio para o s3..."
    echo "Iniciando envio..."
    aws s3 sync ./client/build/ s3://http://desafio-fundamental-03.s3-website.us-east-2.amazonaws.com
    echo "Envio finalizado"
}