# Acá Ud. debe escribir su modelo.  
# La linea %%writefile nombre.mod guarda lo que ud. escriba
# como nombre.mod. Es lo primero que debe ir en este bloque
# Este será el modelo que usaremos para resolver el problema


######
# EJEMPLO 1
# Ud. puede nombrar a sus variables,
# restricciones y F.O. como lo desee.
######


# Variables.
# Observe además que se incorporan
# las restricciones de No-Negatividad.
var x >= 0; #pan integral
var y >= 0; #pan dulce

# Función objetivo.
maximize Z: 5*x + 4*y;

# Restricciones.
subject to harina: 1.5*x + 2*y <= 300;
s.t.  horno: 2*x + y <= 180;
