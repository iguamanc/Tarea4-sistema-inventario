# Especificación de Requerimientos de Software (SRS)
## Sistema de Inventario - Versión 1.0

### 1. Introducción
- **Propósito:** Gestionar productos, existencias y movimientos de inventario.
- **Alcance:** Control de stock, registro de entradas/salidas, reportes básicos.
- **Usuarios:** Administradores, empleados de bodega.

### 2. Requerimientos Funcionales
- RF1: Registrar productos con código, nombre, categoría y precio.
- RF2: Actualizar stock por entradas y salidas.
- RF3: Generar reportes de inventario.
- RF4: Autenticación de usuarios.

### 3. Requerimientos No Funcionales
- RNF1: Seguridad mediante roles de usuario.
- RNF2: Disponibilidad 99%.
- RNF3: Interfaz web responsiva.

### 4. Suposiciones y Dependencias
- Base de datos relacional (MySQL/PostgreSQL).
- Acceso a internet para reportes en la nube.