create database gestion_inscription;
use gestion_inscription;
create table departement (
    id int primary key auto_increment,
    code_depart varchar(255),
    nom_departement varchar(255),
    chef_departement varchar(255),
    secretaire varchar(255)
);


create table filiere(
    id int primary key auto_increment,
    code_filiere varchar(255),
    nom_filiere varchar(255),
    id_departement int,
    constraint fk_departement foreign key (id_departement) references departement(id)
);


create table classe(
    id int primary key auto_increment,
    code_classe varchar(255),
    nom varchar(255),
    id_filiere int,
    constraint fk_filiere foreign key (id_filiere) references filiere(id)
);


create table dossier(
    id int primary key auto_increment,
    id_classe int,
    nom_candidat varchar(255),
    prenom_candidat varchar(255),
    sexe varchar(255),
    naissance date,
    adresse varchar(255),
    nationalite varchar(255),
    email varchar(255),
    telephone varchar(255),
    ecole_dorigine varchar(255),
    diplome_obtenu varchar(255),
    date_obtention date,
    constraint fk_classe foreign key (id_classe) references classe(id)
);