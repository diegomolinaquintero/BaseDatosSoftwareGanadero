def valorCuota(numCuotas, valorArticulo):
    if valorArticulo >= 500000 and valorArticulo <= 1000000:
      if numCuotas >= 1 and numCuotas <= 6:
        porcentual = valorArticulo * 0.02
      elif numCuotas >= 7 and numCuotas <= 10:
        porcentual = valorArticulo * 0.04
      elif numCuotas >= 11 and numCuotas <= 18:
        porcentual = valorArticulo * 0.06
      elif numCuotas >= 19 and numCuotas <= 24:
        porcentual = valorArticulo * 0.08
      elif numCuotas >= 25 and numCuotas <= 48:
        porcentual = valorArticulo * 0.1
    elif valorArticulo >= 1000001 and valorArticulo <= 1500000:
      if numCuotas >= 1 and numCuotas <= 6:
        porcentual = valorArticulo * 0.03
      elif numCuotas >= 7 and numCuotas <= 10:
        porcentual = valorArticulo * 0.05
      elif numCuotas >= 11 and numCuotas <= 18:
        porcentual = valorArticulo * 0.07
      elif numCuotas >= 19 and numCuotas <= 24:
        porcentual = valorArticulo * 0.09
      elif numCuotas >= 25 and numCuotas <= 48:
        porcentual = valorArticulo * 0.11
    elif valorArticulo >= 1500001 and valorArticulo <= 2000000:
      if numCuotas >= 1 and numCuotas <= 6:
        porcentual = valorArticulo * 0.04
      elif numCuotas >= 7 and numCuotas <= 10:
        porcentual = valorArticulo * 0.06
      elif numCuotas >= 11 and numCuotas <= 18:
        porcentual = valorArticulo * 0.08
      elif numCuotas >= 19 and numCuotas <= 24:
        porcentual = valorArticulo * 0.1
      elif numCuotas >= 25 and numCuotas <= 48:
        porcentual = valorArticulo * 0.12
    elif valorArticulo >= 2000001 and valorArticulo <= 3000000:
      if numCuotas >= 1 and numCuotas <= 6:
        porcentual = valorArticulo * 0.05
      elif numCuotas >= 7 and numCuotas <= 10:
        porcentual = valorArticulo * 0.07
      elif numCuotas >= 11 and numCuotas <= 18:
        porcentual = valorArticulo * 0.09
      elif numCuotas >= 19 and numCuotas <= 24:
        porcentual = valorArticulo * 0.11
      elif numCuotas >= 25 and numCuotas <= 48:
        porcentual = valorArticulo * 0.13
    elif valorArticulo <= 3000001:
      if numCuotas >= 1 and numCuotas <= 6:
        porcentual = valorArticulo * 0.06
      elif numCuotas >= 7 and numCuotas <= 10:
        porcentual = valorArticulo * 0.08
      elif numCuotas >= 11 and numCuotas <= 18:
        porcentual = valorArticulo * 0.10
      elif numCuotas >= 19 and numCuotas <= 24:
        porcentual = valorArticulo * 0.12
      elif numCuotas >= 25 and numCuotas <= 48:
        porcentual = valorArticulo * 0.14
    pagoPorCuota = valorArticulo/numCuotas + porcentual
    return pagoPorCuota
print(valorCuota(1,3000001)) 


import random
i = 1
NumAleatorios = []
while i < 1001:
  NumAleatorios.append(random.randint(100, 999))
  i += 1


#Solución
import random
import numpy
NumAleatorios = []
sumaM3 = 0
numeros2y8 = 0
for i in range(1000):
  NumAleatorios.append(random.randint(100, 999))  
print(NumAleatorios)
def NumAleatorios(listadodenumeros):
  listado = numpy.listadodenumeros
  minimo = numpy.amin(listadodenumeros)
  maximo = numpy.amax(listadodenumeros)
  promedio = numpy.mean(listadodenumeros)
  for i in listadodenumeros:
    x = i%3
    if x == 0:
        sumaM3+=i
  promediomultiplos3 = sumaM3
  for y in listadodenumeros:
    if(str(y)[-1]) == '2' or (str(y)[-1]) == '8':
      numeros2y8 =+1
  mensaje = "el numero minimos es: " + minimo + "el numero maximo es: " + maximo + "el promedio de todo es: " + promedio + "promedio multiplos de 3: " + promediomultiplos3 + " cuantos terminan entre 2 y 8" + numeros2y8
  return mensaje