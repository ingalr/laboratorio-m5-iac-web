#!/usr/bin/env bash
set -euo pipefail

echo "Verificando el ambiente M5..."
tofu version
git --version
rg --version | sed -n '1p'

test -d principal
test -d brownfield
test -d offline

echo "Ambiente M5 listo. Espere las instrucciones de la instructora antes de ejecutar tofu init."
