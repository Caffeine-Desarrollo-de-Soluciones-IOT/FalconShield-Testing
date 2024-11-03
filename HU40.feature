
Feature: Gestión de Dispositivos en "My Devices"

Como usuario, deseo gestionar mis dispositivos en una tabla interactiva con opciones CRUD, 
para poder organizar y modificar la información de cada dispositivo de manera eficiente. 

Criterio de aceptación #1: Visualización de la tabla de dispositivos

Scenario: Usuario visualiza la tabla de dispositivos
Given que el usuario cuenta con una sesión iniciada
When abre la sección "My Devices"
Then el sistema muestra una tabla con todos los dispositivos del usuario con los siguientes datos:
    <nombre_dispositivo>, <tipo_dispositivo>, <estado_dispositivo>
And se presentan las opciones CRUD (crear, leer, actualizar, eliminar) junto a cada dispositivo.

Examples:
   | nombre_dispositivo | tipo_dispositivo | estado_dispositivo |
   | Cámara principal   | Cámara           | Activo             |
   | Sensor de humo     | Sensor           | Inactivo           |

Criterio de aceptación #2: Creación de un nuevo dispositivo

Scenario: Usuario crea un nuevo dispositivo
Given que el usuario está en la sección "My Devices"
And selecciona la opción "Crear nuevo dispositivo"
When completa el formulario con los datos <nombre_dispositivo>, <tipo_dispositivo>, y <estado_dispositivo>
And confirma la creación
Then el sistema agrega el nuevo dispositivo a la tabla y muestra un mensaje de éxito "Dispositivo creado exitosamente".

Examples:
   | nombre_dispositivo | tipo_dispositivo | estado_dispositivo |
   | Sensor de puerta   | Sensor           | Activo             |


Criterio de aceptación #3: Actualización de información de un dispositivo

Scenario: Usuario actualiza la información de un dispositivo
Given que el usuario está en la sección "My Devices"
And selecciona la opción "Actualizar" junto al <nombre_dispositivo>
When modifica los datos del dispositivo y confirma la actualización
Then el sistema guarda los cambios y muestra un mensaje de éxito "Dispositivo actualizado exitosamente".

Examples:
   | nombre_dispositivo |
   | Cámara principal   |

Criterio de aceptación #4: Eliminación de un dispositivo

Scenario: Usuario elimina un dispositivo
Given que el usuario está en la sección "My Devices"
And selecciona la opción "Eliminar" junto al <nombre_dispositivo>
When confirma la eliminación del dispositivo
Then el sistema elimina el dispositivo de la tabla y muestra un mensaje de éxito "Dispositivo eliminado exitosamente".

Examples:
   | nombre_dispositivo |
   | Sensor de humo     |

