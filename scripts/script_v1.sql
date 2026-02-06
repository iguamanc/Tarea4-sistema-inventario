-- Script de creación de base de datos para Sistema de Inventario

CREATE DATABASE inventario_db;
\c inventario_db;

-- Tabla de productos
CREATE TABLE productos (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    categoria VARCHAR(50),
    precio DECIMAL(10,2) NOT NULL
);

-- Tabla de inventario
CREATE TABLE inventario (
    id SERIAL PRIMARY KEY,
    id_producto INT REFERENCES productos(id),
    cantidad INT NOT NULL DEFAULT 0
);

-- Tabla de movimientos
CREATE TABLE movimientos (
    id SERIAL PRIMARY KEY,
    id_producto INT REFERENCES productos(id),
    tipo VARCHAR(10) CHECK (tipo IN ('entrada','salida')),
    cantidad INT NOT NULL,
    fecha TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Tabla de usuarios
CREATE TABLE usuarios (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL,
    rol VARCHAR(20) CHECK (rol IN ('admin','empleado')),
    contraseña_hash VARCHAR(255) NOT NULL
);