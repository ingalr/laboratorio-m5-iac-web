# Preflight individual — M5 IaC Web

Realice esta comprobación antes de la clase. No avance el laboratorio.

1. Inicie sesión en su cuenta personal de GitHub.
2. Abra el enlace de GitHub Codespaces entregado por la instructora.
3. Cree o reanude su Codespace individual.
4. Espere a que VS Code Web termine de preparar el ambiente.
5. Abra **Terminal → New Terminal**.
6. Ejecute:

   ```bash
   tofu version
   git --version
   pwd
   ```

7. Confirme estos resultados:

   - OpenTofu muestra `v1.12.6`.
   - Git responde con una versión.
   - La ruta comienza por `/workspaces/`.

8. Cierre la terminal y detenga el Codespace hasta la clase.

No ejecute `tofu init`, `tofu plan` ni `tofu apply` durante el preflight.

Si algún resultado no coincide, conserve el mensaje completo y notifíquelo a la instructora.
