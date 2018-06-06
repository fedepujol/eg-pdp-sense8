% persona(Persona)
persona(capheus).
persona(sun).
persona(nomi).
persona(kala).
persona(riley).
persona(lito).
persona(will).
persona(wolfgang).

% grupoSensante(Madre, Sensante).
grupoSensante(angelica, capheus).
grupoSensante(angelica, sun).
grupoSensante(angelica, nomi).
grupoSensante(angelica, kala).
grupoSensante(angelica, riley).
grupoSensante(angelica, lito).
grupoSensante(angelica, will).
grupoSensante(angelica, wolfgang).

grupoSensante(jose, haskell).
grupoSensante(jose, prolog).

% mismoGrupo(Sensante, OtroSensante)
mismoGrupo(Sensante, OtroSensante):-
    mismaMadre(Sensante, OtroSensante).
mismoGrupo(Sensante, OtroSensante):-
    grupoSensante(Sensante, OtroSensante).

% mismaMadre(Sensante, OtroSensante)
mismaMadre(Sensante, OtroSensante):-
    grupoSensante(Madre, Sensante),
    grupoSensante(Madre, OtroSensante).

% conectadoCon(Sensante, OtroSensante)
conectadoCon(Sensante, OtroSensante):-
    mismoGrupo(Sensante, OtroSensante).

conectadoCon(jonas, angelica).

conectadoCon(srWhispers, Sensante):-
    vioALosOjos(Sensante, srWhispers).

% vioALosOjos(Sensante, srWhispers).
vioALosOjos(jonas, srWhispers).
vioALosOjos(angelica, srWhispers).

% leGusta(Sensante, actor(jeanClaudeVanDamme)).
leGusta(capheus, actor(jeanClaudeVanDamme)).
leGusta(capheus, cancion(whatsUp)).
leGusta(sun, deporte(kickboxing)).
leGusta(sun, cancion(whatsUp)).
leGusta(nomi, persona(amanita)).
leGusta(nomi, cancion(whatsUp)).
leGusta(kala, persona(wolfgang)).
leGusta(kala, cancion(whatsUp)).
leGusta(riley, persona(will)).
leGusta(riley, cancion(whatsUp)).
leGusta(lito, persona(hernando)).
leGusta(lito, cancion(whatsUp)).
leGusta(will, cancion(whatsUp)).
leGusta(wolfgang, persona(kala)).
leGusta(wolfgang, cancion(whatsUp)).

% parejaSensante(Persona, OtraPersona)
parejaSensante(Persona, OtraPersona):-
    leGusta(Persona, persona(OtraPersona)),
    leGusta(OtraPersona, persona(Persona)),
    mismoGrupo(Persona, OtraPersona).

% sintonizador(UnGusto)
sintonizador(UnGusto):-
    leGusta(Persona, UnGusto),
    forall(mismoGrupo(Persona, OtraPersona), leGusta(OtraPersona, UnGusto)).

% viveEn(capheus, nairobi).
viveEn(capheus, nairobi).
viveEn(sun, seul).
viveEn(nomi, sanFrancisco).
viveEn(kala, mumbai).
viveEn(riley, londres).
viveEn(lito, mexicoDF).
viveEn(will, chicago).
viveEn(wolfgang, berlin).

viveEn(haskell, seul).
viveEn(prolog, seul).

ciudadesIguales(Ciudad, OtraCiudad):-
    Ciudad \= OtraCiudad.

% disperso(UnGrupo) -> No se hace porque tiene listas.
    
% habilidad(Persona, conductor(NombreDeVehículo,CantPasajeros)).
habilidad(capheus, conductor(vanDamm, 25)).
habilidad(sun, negocios).
habilidad(sun, pelear).
habilidad(sun, coser).
habilidad(nomi, bloguera).
habilidad(nomi, delincuente(hacker)).
habilidad(kala, quimica).
habilidad(riley, dj).
habilidad(lito, actor).
habilidad(will, policia).
habilidad(wolfgang, inteligente).
habilidad(wolfgang, pelear).
habilidad(wolfgang, delincuente(ladronDeJoyas)).

% habilidosa(Persona)
habilidosa(Persona):-
    persona(Persona),
    forall(habilidad(Persona, Habilidad), esBuena(Habilidad)).

% esBuena(Habilidad)
esBuena(Habilidad):-
    not(delincuente(Habilidad)),
    not(conductorVehiculoChico(Habilidad)),
    not(policia(Habilidad)).

delincuente(delincuente(_)).
conductorVehiculoChico(conductor(_, Habilidad)):-
    Habilidad < 20.
policia(policia).