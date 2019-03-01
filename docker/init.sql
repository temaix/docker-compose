GRANT ALL PRIVILEGES ON DATABASE "bdd" to etraffic;

create table sd_types_euas
(
  id                bigint                not null
    constraint sd_types_euas_pkey
      primary key,
  commentaire       varchar(1024),
  description       varchar(240)          not null,
  libelle           varchar(80)           not null
    constraint uk_85nkr9khcc5ed44posvc4vpdl
      unique,
  nombre_caracteres integer               not null,
  prisme            boolean default false not null
);

alter table sd_types_euas
  owner to etraffic;

INSERT INTO public.sd_types_euas (id, commentaire, description, libelle, nombre_caracteres, prisme)
VALUES (1, 'Element de PMV', 'ligne 15 caractères', 'ligne 15 caractères', 15, false);
INSERT INTO public.sd_types_euas (id, commentaire, description, libelle, nombre_caracteres, prisme)
VALUES (2, 'Element de PMV', 'ligne 18 caractères', 'ligne 18 caractères', 18, false);
INSERT INTO public.sd_types_euas (id, commentaire, description, libelle, nombre_caracteres, prisme)
VALUES (3, 'Portique et pictogramme PMV', 'affiche des décors variables(psv)', 'rfw', 0, false);
INSERT INTO public.sd_types_euas (id, commentaire, description, libelle, nombre_caracteres, prisme)
VALUES (4, 'FAV', 'affectation  de voie (fav)', 'raw', 0, false);
INSERT INTO public.sd_types_euas (id, commentaire, description, libelle, nombre_caracteres, prisme)
VALUES (5, 'CC', 'feu clignotant (feu flash)', 'rcc', 0, false);
INSERT INTO public.sd_types_euas (id, commentaire, description, libelle, nombre_caracteres, prisme)
VALUES (6, 'CA', 'feu tricolore', 'rca', 0, false);
INSERT INTO public.sd_types_euas (id, commentaire, description, libelle, nombre_caracteres, prisme)
VALUES (7, 'Element de PMV', 'ligne 5 caractères', 'ligne 5 caractères', 5, false);
INSERT INTO public.sd_types_euas (id, commentaire, description, libelle, nombre_caracteres, prisme)
VALUES (12, 'Pour représentation graphique', 'module fixe ', 'fixe', 0, false);
INSERT INTO public.sd_types_euas (id, commentaire, description, libelle, nombre_caracteres, prisme)
VALUES (12501, 'Prisme', 'Prisme', 'rpr', 0, true);

create table types_cartes
(
  id                bigint       not null
    constraint types_cartes_pkey
      primary key,
  adresse           text,
  commentaire       varchar(1024),
  description       varchar(240) not null,
  fonction_carte_id bigint       not null,
  libelle           varchar(80)  not null
    constraint uk_4g296f54cgk2k1smfohhgdvey
      unique,
  nombre_composants text
);

alter table types_cartes
  owner to etraffic;

INSERT INTO public.types_cartes (id, adresse, commentaire, description, fonction_carte_id, libelle, nombre_composants)
VALUES (1, null, 'carte lampe SIAT', 'Carte lampe', 0, 'CL501', null);
