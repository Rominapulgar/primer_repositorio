var1 <- sample(1:20, 10)
var1 <- var1 * 6 
var2 <- c("R", "L", "P", "S", "A")
merge <- merge(var1, var2)
union <- c(var1, var2)
union2 <- union / 3
merge2 <- merge/3

x <- c(1,2,3,4,5,6)
y <- c(10,20,30,40,50)


suma <- c(x + y)  

yy <- c(y, 60)
 
suma2 <- x + yy

multiplicacion <- x * yy

#data frame

Numero <- c(5,4,3,1,2)
Letra <- c("S","L", "B", "Q","A")
Medida <- c(49.59, 91.84, 49.32, 72.25, 65.51)

z <- data.frame(Numero, Letra, Medida)



Individuo <- c(1:100)

letras1 <- letters
letras2 <- LETTERS
mis_letras <- c(letras1, letras2)
merge_letras <- merge(letras1, letras2)


#data frame aves

tipo = c("Paseriforme", "Columbiforme", "Rapaz", "Trochiliforme")
especie = c(Paseriforme="Zonotrichia capensis",Columbiforme="Zenaida auriculata",Rapaz="Daptrius chimango",Trochiliforme="Sephanoides fernandensis")
nombre_comun = c(Paseriforme="Chincol",Columbiforme="Torcaza",Rapaz="Tiuque",Trochiliforme="Picaflor de Juan Fern?ndez")
tamanos_promedio_cm = c(Paseriforme=14, Columbiforme=25, Rapaz=40, Trochiliforme=11)

set.seed(904)  # Para reproducibilidad de resultados
aves = sample(tipo, 100, replace = TRUE)

muestras <- data.frame(
  tipo_de_ave = aves,
  especie = especie[aves],
  nombre_comun = nombre_comun[aves],
  tama?o = round(rnorm(100, tamanos_promedio_cm[aves], 2), 1)
)

print(muestras)


set.seed(123)  #esto es para que al volver a correr el c?digo, los datos no cambien
n <- 100
tipos <- sample(c("Paseriforme", "Columbiforme", "Falconiforme", "Apodiforme"), n, replace = TRUE, prob = c(0.25, 0.25, 0.25, 0.25))
tamanos <- ifelse(tipos == "Paseriforme", rnorm(n, mean = 18, sd = 2),
                  ifelse(tipos == "Columbiforme", rnorm(n, mean = 28, sd = 3),
                         ifelse(tipos == "Falconiforme", rnorm(n, mean = 80, sd = 5),
                                rnorm(n, mean = 10, sd = 1))))
aves_data.frame <- data.frame(Tipo = tipos, Tama?o = tamanos)
head(aves_data.frame, 15)
print(aves_data.frame)


