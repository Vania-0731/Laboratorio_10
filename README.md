# 🎬 Prime Video - Demo (UI Estática)
<img width="708" height="1054" alt="image" src="https://github.com/user-attachments/assets/3f9f52d0-a7af-428e-83ec-3be2218d45ed" />

## 📖 Descripción
Este proyecto es una **demo visual inspirada en la interfaz de Prime Video**, creada con **Flutter**.  
🖼️ Muestra una estructura simple con:
- Tres imágenes locales (almacenadas en `assets/images/`)
- Tres imágenes remotas (cargadas desde la nube)
- Tres fuentes personalizadas (almacenadas en `assets/fonts/`)

> ⚙️ *La aplicación no tiene lógica funcional ni conexión a API. Solo representa el diseño (UI estática).*

---

## 🗂️ Estructura de carpetas

```
prime_video/
├── lib/
│   └── main.dart                # Código principal de la aplicación
├── assets/
│   ├── images/                  # Imágenes locales (posters)
│   │   ├── dinosaurio.jpg
│   │   ├── inside_out.webp
│   │   └── insidious.jpg
│   └── fonts/                   # Fuentes locales utilizadas en la UI
│       ├── Jacquard-Regular.ttf
│       ├── SansBogle-Regular.ttf
│       └── GrundGuides-Regular.ttf
├── pubspec.yaml                 # Configuración del proyecto Flutter
└── README.md                    # Este archivo
```

---

## 🧩 Archivos principales

### 🖥️ `lib/main.dart`
Contiene toda la interfaz:
- AppBar con el título “Prime Video” y botones personalizados.
- Dos listas horizontales (`ListView.separated`):
  - 🎞️ “Destacados” → Imágenes locales.
  - ☁️ “Recomendados en la nube” → Imágenes de internet.

### 🖼️ `assets/images/`
Posters locales usados en la app:
- `dinosaurio.jpg`
- `inside_out.webp`
- `insidious.jpg`

### 🔠 `assets/fonts/`
Fuentes locales referenciadas en el archivo `pubspec.yaml`:
- `Jacquard-Regular.ttf`
- `SansBogle-Regular.ttf`
- `GrundGuides-Regular.ttf`

---

## ⚙️ Configuración en `pubspec.yaml`

Ejemplo de cómo declarar los recursos:

```yaml
flutter:
  uses-material-design: true

  assets:
    - assets/images/dinosaurio.jpg
    - assets/images/inside_out.webp
    - assets/images/insidious.jpg

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
```

---

## 🚀 Ejecución del proyecto

1. Abre el proyecto en **Visual Studio Code** o tu IDE favorito.  
2. Asegúrate de tener Flutter configurado correctamente:
   ```bash
   flutter doctor
   ```
3. Instala las dependencias:
   ```bash
   flutter pub get
   ```
4. Ejecuta la app:
   ```bash
   flutter run
   ```

---

