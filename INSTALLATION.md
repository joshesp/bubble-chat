# Intalaciones y configuraciones

En este archvio se describen la versión de Flutter, y las configuraciones del proyecto y dependencias.

- Versión y compilación
  - [Versión de Flutter](#versión-de-flutter)
  - [Compilación](#compilación)
- Configuraciones - pubspec.yaml
  - [Lint](#lint)

## Versión y compilación

### Versión de Flutter

**Flutter version: 2.5.1\
Dart version: 2.14.2**

Para obtener la version del Flutter ejecuta:

```
flutter doctor -v
```

### Compilación

1. En la raiz del proyecto ejecuta:

```
flutter clean
```

2. Descarga los paquetes:

```
flutter pub get
```

3. Ingresa al directorio de **ios** e instala las dependencias:

```
pod install
```

## Configuraciones - pubspec.yaml

### Lint

Las reglas definidas para el proyecto estan en el archivo **[analysis_options.yaml](./analysis_options.yaml)** en la raíz del proyecto, puedes obtener más información de las reglas en el siguiente [link](https://dart-lang.github.io/linter/lints/index.html).
