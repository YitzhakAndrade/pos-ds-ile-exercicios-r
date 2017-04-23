# 1.2 - O volume de um cone de raio R e altura H é dado por 
# 1/3 × pi × R^2 × H. 
# Tendo obtido o raio e a altura de seis cones, apresentados a seguir, 
# calcule o volume de cada um deles.
# R = {2.27, 1.98, 1.69, 1.88, 1.64, 2.14}
# H = {8.28, 8.04, 9.06, 8.70, 7.58, 8.34}

r = c(2.27, 1.98, 1.69, 1.88, 1.64, 2.14)
h = c(8.28, 8.04, 9.06, 8.70, 7.58, 8.34)
v = (1/3 * pi * (r**2) * h)
v

cone_volume <- function (r, h) {
  return (1/3 * pi * (r**2) * h)
}
cone_volume(r, h)