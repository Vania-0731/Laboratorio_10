# Prime Video - Demo (UI estático)

Descripción
- Demo visual que imita el diseño de Prime Video (solo UI).  
- Muestra 3 imágenes locales y 3 imágenes desde la nube, y usa 3 fuentes locales.

Estructura de carpetas (resumen)
- prime_video/
  - lib/
    - main.dart
  - assets/
    - images/
      - dinosaurio.jpg
      - inside_out.webp
      - insidious.jpg
    - fonts/
      - Jacquard-Regular.ttf
      - SansBogle-Regular.ttf
      - GrundGuides-Regular.ttf
  - pubspec.yaml
  - README.md

Qué contiene cada carpeta
- assets/images/: posters locales usados en la app (mencionar nombres exactos arriba).  
- assets/fonts/: fuentes descargadas y referenciadas en pubspec.yaml.  
- lib/main.dart: código principal que crea la UI (AppBar estilo Prime, listas horizontales, etc.).

Ejemplo de entradas a añadir en pubspec.yaml
- Declara las imágenes y las fuentes para que Flutter las incluya en la app.

```yaml
# filepath: c:\Users\Sonaly\Documents\TECSUP\QUINTO CICLO\Aplicaciones Moviles Multiplataforma\Semana 10\prime_video\pubspec.yaml
# ...existing code...
flutter:
  uses-material-design: true

  assets:
    - [dinosaurio.jpg](http://_vscodecontentref_/0)
    - [inside_out.webp](http://_vscodecontentref_/1)
    - [insidious.jpg](http://_vscodecontentref_/2)

  fonts:
    - family: Jacquard
      fonts:
        - asset: assets/fonts/Jacquard-Regular.ttf
    - family: SansBogle
      fonts:
        - asset: assets/fonts/SansBogle-Regular.ttf
    - family: GrundGuides
      fonts:
        - asset: assets/fonts/GrundGuides-Regular.ttf
# ...existing code...