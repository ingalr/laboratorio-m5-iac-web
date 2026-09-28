# Laboratorio M5 — De ClickOps a infraestructura como código

**Guía de entorno web | GitHub Codespaces | OpenTofu 1.12.6 | Práctica individual**
[![Abrir laboratorio en GitHub Codespaces](https://github.com/codespaces/badge.svg)](https://codespaces.new/ingalr/laboratorio-m5-iac-web?quickstart=1)

Este repositorio acompaña el laboratorio M5 y se ejecuta completamente desde el navegador. Cada estudiante debe crear su propio GitHub Codespace; no se comparten archivos de state, planes ni objetos generados.

## Entorno preparado

La configuración de `.devcontainer/` construye automáticamente un ambiente con:

- Ubuntu 24.04 LTS.
- OpenTofu 1.12.6.
- Git, `ripgrep`, `jq`, `less`, `diff` y `unzip`.
- Extensión de OpenTofu para VS Code Web.

No se requieren WSL, Ubuntu local, VS Code de escritorio, Docker Desktop, una cuenta cloud, tarjeta de crédito ni credenciales reales.

## Carpetas

- `principal`: ruta oficial con el provider `hashicorp/local`. Crea archivos dentro del filesystem del Codespace y permite observar drift real al modificarlos fuera de OpenTofu.
- `brownfield`: micropráctica de import y generación experimental de configuración con el provider incorporado `terraform_data`.
- `offline`: contingencia sin descarga de providers. Conserva `init`, `validate`, `plan`, review, `apply`, state, `for_each`, cambio, reemplazo y `destroy`; no demuestra drift de un objeto externo.
- `evidencias`: plantilla individual para registrar resultados sin publicar state ni planes.

## Aclaración importante

En este laboratorio, `local_file` significa local respecto del ambiente donde corre OpenTofu. Los archivos se crean dentro del Codespace remoto, no en el computador físico del estudiante.

## Preflight

Antes de la sesión, siga únicamente `PRECHECK_ESTUDIANTE.md`. No ejecute `tofu init` ni avance los ejercicios de `principal` o `brownfield` antes de que la instructora lo indique.

## Seguridad

Use solo datos ficticios. No copie tokens, contraseñas, llaves, archivos de state reales ni configuraciones de producción. Los Codespaces y repositorios del laboratorio no son un gestor de secretos.
