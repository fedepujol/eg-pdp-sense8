## Parcial Paradigmas de Programacion
- Nombre: Sense 8
- Fecha: 06/06/2018
- Paradigma: Logico

### Branches
- master: Solucion inicial.

### Codigo

El punto del predicado "disperso(Grupo)" no esta resuelto en el branch master.

En el predicado de:

```prolog
habilidosa(Persona):-
  forall(habilidad(Persona, Habilidad), esBuena(Habilidad)).
```
Se agrega un generador de personas validas:
```prolog
persona(Persona).
```
Para salvar los casos en donde se pregunta por cualquier sensante, que no tenga habilidades.

### Enunciado
Para leer el enunciado completo, [leer más](https://docs.google.com/document/d/1yVpgaZI06_nL9zvN3kJnY9uJlSdhI4IWK0Mok0b0OUo/edit).

### To-Do List:
- [ ] Branch con solucion alternativa.
