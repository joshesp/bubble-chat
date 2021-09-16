# Bubble messages

## Objetivo
Diseño y desarrollo de una aplicación de mensajeria de texto.

## Requerimientos - Fase 1

1. Diseño de aplicación (Logotipo y wireframe/mockup).
2. Modo dark/light automático.
3. Introducción a la aplicación (slider)
4. Autenticación y registro de usuarios (email, nombre, phone, password).
5. Recuperación de contraseña y verificación de código (sms y/o email).
6. Listado de chats activos (Avatar de usuario, ultímo mensaje y fecha).
7. Sala de chat (mensajes de texto, carga de imagen, tomar foto).
8. Listado de usuarios (avatar, estatus, nombre, búscar).
9. Perfil del usuario  (editar datos, editar estatus, foto de perfil).

## Desarrollo - Fase 1

### Diseño

#### Colores 
- Primary: #7437aa
- Secondary: #202328
- Light: #faf8fd
- Dark: #161719
- Gray: #888888
- Success: #00d819
- Danger: #fa4358

#### Fuente tipografica
- Comfortaa

### Desarrollo

#### Estructura
- Vistas
    - Introducción
    - Autenticación
    - Crear cuenta
    - Recuperación de contraseña
    - Cambiar contraseña
    - Verificación SMS
    - Chats
    - Tabs
        - Mensajes
        - Contactos
        - Perfil
- Componentes
    - Logotipo: Cambio de imagen en base al modo (light/dark)
    - Campo de texto:
        - Contenedor
        - Icono (lado izquierdo/derecho)
        - Texto inicial
        - Texto de error
        - Color de fondo en base al modo (light/dark)
    - Botón primario: 
        - Texto
        - Callback
        - Color de fondo en base al modo (light/dark)
    - Botón secundario: 
        - Texto
        - Callback
        - Color de texto en base al modo (light/dark)
    - Botón flotante: nuevo chat
    - Toggle: estado del usuario (activo/inactivo)
    - Tabs icon
        - Icono / widget
        - Text
        - Estatus
    - Imagen de usuario(avatar):
        - Imagen
        - Radio
        - Border (si/no)
        - Estatus (activo/inactivo)
        - Nombre de usuario
    - Artículo mensaje: (lista mensajes existentes)
        - Imagen
        - Nombre del usuario
        - Estatus del usuario
        - Último mensaje
        - Fecha del mensaje (minutos o día)
        - Estus del ultimo mensaje (por leer)
        - Números de mensajes sin leer
    - Artículo contacto (lista de contactos)
        - Imagen
        - Nombre del usuario
        - Estatus del usuario
        - Teléfono
    - Badge fecha mensaje
        - Texto
        - Color de fondo en base al modo (light/dark)
    - Mensaje (chat)
        - Tipo (propio/amigo)
        - Tipo de dato (texto, imagen, audio, (¿?)video)
        - Texto
        - Imagen
        - Video
        - Tiempo
        - Estus de chat (lo leyó, sin leer, error)
    - (¿?)Header:
        - Título
        - Icono
        - Callback



