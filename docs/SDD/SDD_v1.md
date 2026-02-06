# Documento de Diseño de Software (SDD)
## Sistema de Inventario - Versión 1.0

### 1. Arquitectura del Sistema
- Arquitectura cliente-servidor.
- Frontend: React/Angular.
- Backend: Node.js con Express.
- Base de datos: MySQL.

### 2. Módulos Principales
- **Gestión de Productos:** CRUD de productos.
- **Gestión de Inventario:** Entradas, salidas, ajustes.
- **Reportes:** Listado de stock, movimientos.
- **Usuarios y Roles:** Autenticación y autorización.

### 3. Modelo de Datos
- Tabla `productos`: id, nombre, categoría, precio.
- Tabla `inventario`: id_producto, cantidad.
- Tabla `movimientos`: id, id_producto, tipo (entrada/salida), cantidad, fecha.
- Tabla `usuarios`: id, nombre, rol, contraseña_hash.

### 4. Diagramas
- Diagrama de clases (conceptual).
- Diagrama entidad-relación (ER).