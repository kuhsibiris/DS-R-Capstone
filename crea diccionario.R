library(stringr)
library(readr)
library(magrittr)
library(tidyr)
library(purrr)
library(dplyr)
library(tm)

setwd("/media/andres/New Volume/Coursera-Swift-Key/")

datos=read_lines("final/en_US/en_US.twitter.txt",n_max = 1000)


crea_diccionario=function(texto){
  str_split(texto," ") %>% 
    flatten_chr() %>% unique %>% sort
  
}


conteo_palabras=function(texto){
  a=str_split(texto," ") %>% 
    flatten_chr() 
  b=data.frame(Palabra=a) %>% 
    group_by(Palabra) %>% summarise(total=n())
  b
}

## Hacer un corpus de documentos que provienen de cada 
## linea un documento
MyVCorpus=VCorpus(VectorSource(datos))

## ver un documento

inspect(MyVCorpus[1:3])

## ver de verdad un documento

inspect(MyVCorpus[[2]])

## Modificar


