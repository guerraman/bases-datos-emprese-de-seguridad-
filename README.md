# Base de Datos `empresa-seguridad`

Este repositorio contiene el esquema y los datos de una base de datos diseñada para gestionar información en una empresa de seguridad. La base de datos organiza y relaciona datos sobre armas y empresas, facilitando la administración de recursos y personal.

## Descripción General

La base de datos **`empresa-seguridad`** permite el registro y la gestión eficiente de armas y empresas relacionadas con el ámbito de la seguridad. Está estructurada para proporcionar trazabilidad y mejorar la administración de recursos.

### Funcionalidades Principales

- **Gestión de Armas**: Almacena detalles sobre las armas, como su nombre, tipo, y el vigilante asignado, permitiendo una gestión precisa y segura.
- **Registro de Empresas**: Guarda información detallada sobre empresas, incluyendo nombre, dirección y correo electrónico de contacto, para un manejo eficiente de las relaciones empresariales.

### Estructura de las Tablas

#### 1. Tabla `arma`
- **Descripción**: Registra información sobre las armas y su asignación a los vigilantes.
- **Campos**:
  - `cod_arma` (int): Código único del arma (clave primaria).
  - `nombre_arma` (varchar): Nombre del arma.
  - `tipo_arma` (varchar): Tipo de arma (ej. pistola, revólver).
  - `cod_vigilante` (int): Código del vigilante asociado al arma.

#### 2. Tabla `empresa`
- **Descripción**: Contiene información sobre las empresas asociadas al sistema de seguridad.
- **Campos**:
  - `cod_empresa` (int): Código único de la empresa (clave primaria).
  - `nombre_empresa` (varchar): Nombre de la empresa.
  - `direccion_empresa` (varchar): Dirección de la empresa.
  - `correo_empresa` (varchar): Correo electrónico de contacto.

## Casos de Uso

- **Monitoreo y Control Interno**: Realizar un seguimiento de las armas y los vigilantes asignados para garantizar un manejo seguro y organizado.
- **Gestión de Contactos Corporativos**: Acceso a información de las empresas colaboradoras, facilitando la gestión de relaciones y comunicaciones.

## Aplicaciones

Esta base de datos es ideal para desarrollos en aplicaciones móviles Android o sistemas web que requieren la gestión de recursos de seguridad, armas, y registros empresariales. Puede integrarse fácilmente en proyectos que utilicen bases de datos locales como SQLite o frameworks de desarrollo como Android Studio.

## Requisitos y Herramientas

- **Motor de base de datos**: MariaDB, MySQL, SQLite.
- **Herramienta de administración**: phpMyAdmin o cualquier editor SQL compatible.
