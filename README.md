[![Binder](https://mybinder.org/badge_logo.svg)](https://mybinder.org/v2/gh/jpalma-espinosa/ampl-tutorial/HEAD?filepath=Basic-use.ipynb)

# AMPL Binder Demo

Este repositorio permite ejecutar AMPL directamente en la nube usando **Binder**, sin necesidad de instalar nada localmente.

## Contenido

- `Dockerfile` : define el entorno con AMPL Student Edition y Jupyter Notebook.
- `notebook.ipynb` : notebook de ejemplo con un modelo de optimización simple.
- `README.md` : instrucciones del repositorio.

## Cómo usarlo

1. Abrir [https://mybinder.org](https://mybinder.org).
2. Ingresar el repositorio: `usuario/AMPL-Binder-demo`.
3. Indicar el notebook a abrir: `notebook.ipynb`.
4. Presionar **Launch**.
5. Binder construirá el entorno y abrirá el notebook. ¡Ya puedes correr AMPL en la nube!

## Ejemplo incluido

El notebook ejecuta un modelo simple de AMPL:

maximize 3x + 4y
subject to
x + 2y <= 14
3x - y >= 0
x - y <= 2




Luego muestra los valores óptimos de `x`, `y` y la función objetivo.

---

> ⚠ Nota: Este entorno utiliza **AMPL Student Edition**. Tiene limitaciones de tamaño de modelo y uso académico.

