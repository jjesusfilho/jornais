
<!-- README.md is generated from README.Rmd. Please edit that file -->

# jornais

<!-- badges: start -->

[![AppVeyor build
status](https://ci.appveyor.com/api/projects/status/github/jjesusfilho/jornais?branch=master&svg=true)](https://ci.appveyor.com/project/jjesusfilho/jornais)
[![Travis build
status](https://travis-ci.org/jjesusfilho/jornais.svg?branch=master)](https://travis-ci.org/jjesusfilho/jornais)
<!-- badges: end -->

O objetivo deste pacote é baixar notícias dos jornais brasileiros, com
ênfase para notícias policiais

## Instalação

Você pode instalar a versão em desenvolvimento da seguinte forma:

``` r
devtools::install_github("jjesusfilho/jornais")
```

## Utilização

Aos poucos serão adicionados os vários jornais. Por ora, você pode
baixar os seguintes jornais:

  - Gazeta do Acre

<!-- end list -->

``` r
baixar_gazetadoacre(aba = "policia", diretorio = ".", paginas = 10)
```
