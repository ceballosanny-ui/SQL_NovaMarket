# 🚨 Guía de Resolución de Problemas: Supervivencia Tech

Esta guía te ayudará a solucionar los obstáculos técnicos más comunes. Recuerda: en tecnología, **el 90% de los problemas se solucionan reiniciando o verificando las rutas**.

---

## 1. Rendimiento y "Lentitud" del PC 🔋
Muchos estudiantes sienten que su computadora se pone lenta tras instalar herramientas de datos. 

| Pregunta | Respuesta |
|---|---|
| **¿Dónde?** | En el Administrador de Tareas (Windows: `Ctrl + Shift + Esc`). |
| **¿Qué?** | VS Code y Antigravity consumen memoria RAM, no necesariamente procesador. |
| **¿Cuándo?** | Si notas que al escribir hay un retraso (lag). |
| **¿Por qué?** | Las máquinas con poca RAM (4GB u 8GB) sufren al tener muchas pestañas de Chrome abiertas junto a VS Code. |

**Consejos para máquinas Windows no muy potentes:**
1.  **Cierra Chrome:** Si estás programando, cierra las 20 pestañas de YouTube o redes sociales. Usa solo la pestaña de la clase.
2.  **Reinicia VS Code:** Si sientes "lag", cierra VS Code y vuelve a abrirlo. Esto libera la memoria que la IA estaba usando.
3.  **No es Antigravity:** La extensión solo se activa cuando le pides ayuda o ejecutas código. Si el PC está lento sin hacer nada, revisa tus programas en segundo plano.

---

## 2. El Cilindro Infinito (Fallo de Carga en SQLTools) 🔄
Este es el error donde el icono del cilindro en la barra lateral muestra una línea que recorre de lado a lado indefinidamente.

| Pregunta | Respuesta |
|---|---|
| **¿Dónde?** | Panel Lateral Izquierdo > Icono del Cilindro (SQLTools). |
| **¿Qué?** | La conexión se queda "pensando" y no muestra las tablas. |
| **¿Cuándo?** | Al intentar crear una nueva conexión o conectar una existente. |
| **¿Por qué?** | Normalmente es un bloqueo del "Driver" o una ruta mal escrita que SQLTools no encuentra. |

**Cómo solucionarlo:**
1.  **Cerrar la pestaña de conexión:** Si tienes abierta la ventana donde configuraste la base de datos, ciérrala.
2.  **Reload Window:** Presiona `Ctrl + Shift + P` (Windows) o `Cmd + Shift + P` (Mac), escribe **"Developer: Reload Window"** y presiona Enter. Esto reinicia la extensión sin cerrar tus archivos.
3.  **Eliminar y Recrear:** Si el cilindro sigue infinito, haz clic derecho sobre la conexión, selecciona **"Remove Connection"** y vuelve a crearla siguiendo el Paso 5 de la Guía 02.

---

## 3. El Bucle de Antigravity y Ventanas Emergentes 😵‍💫
A veces el agente de IA entra en un ciclo de intentar arreglar algo, falla, y vuelve a intentarlo, o te llena de ventanas emergentes (pop-ups).

| Pregunta | Respuesta |
|---|---|
| **¿Dónde?** | En el chat de Antigravity y en la parte superior/inferior de VS Code. |
| **¿Qué?** | Mensajes de error que se repiten o el "agente" escribiendo lo mismo una y otra vez. |
| **¿Cuándo?** | Cuando el agente no entiende que el error es de configuración física (archivo movido, falta de internet). |
| **¿Por qué?** | La IA intenta ser útil, pero si la información inicial es errónea, se "atrapa" en su propia lógica. |

**Cómo romper el bucle:**
1.  **El Botón Stop:** Si ves que el agente está escribiendo una solución que ya falló, presiona el botón **Stop** (cuadrado rojo) en el chat.
2.  **Escapar de las ventanas:** Si te salen muchas ventanas emergentes, presiona la tecla `Esc` varias veces. Si no desaparecen, usa el comando "Reload Window" mencionado arriba.
3.  **Instrucción de "Borrón y Cuenta Nueva":** Escribe esto en el chat para resetear al agente:
    > *"Detente. Olvida el error anterior. Yo voy a configurar la ruta manualmente. No intentes arreglar la conexión por ahora."*

---

## 4. El Secreto de las Rutas en Windows (Ruta Absoluta) 📍
El error más común es que la base de datos "no existe" porque VS Code la busca en la carpeta equivocada.

**En Windows, haz esto siempre:**
1.  Busca tu archivo `.db` en el explorador de la izquierda.
2.  Mantén presionada la tecla **SHIFT** y haz **Clic Derecho** sobre el archivo.
3.  Selecciona **"Copy as path"** (Copiar como ruta).
4.  Al pegar en SQLTools, asegúrate de que se vea algo como: `C:\Users\Nombre\Documents\...` y NO solo `Novamarket.db`.

---

> [!TIP]
> **Regla de Oro:** Si nada funciona y estás frustrado, guarda tus cambios (`git add .`, `git commit`), cierra VS Code, respira 1 minuto, y vuelve a empezar. ¡La paciencia es la herramienta número 1 del analista de datos!

---
*Sesión 07 | NovaMarket Tech | Resolución de Problemas con Antigravity*
