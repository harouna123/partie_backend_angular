create database gestion_inscription;
use gestion_inscription;

create table departement(
    id int primary key auto_increment,
    code_depart varchar(255),
    nom varchar(255),
    chef_departement varchar(255),
    secretaire varchar(255)
);

create table filiere(
    id int primary key auto_increment,
    code_filiere varchar(255),
    nom varchar(255),
    id_departement int,
    constraint fk_depart foreign key (id_departement ) references departement(id)
);

create table classe(
    id int primary key auto_increment,
    code_classe varchar(255),
    nom varchar(255),
    id_filiere int,
    constraint fk_filiere foreign key (id_filiere ) references filiere(id)
);

create table candidat(
    id int primary key auto_increment,
    nom varchar(255),
    prenom varchar(255),
    sexe varchar(255),
    naissance date,
    nationalite varchar(255),
    tel varchar(255), 
    email varchar(255),
    lieu varchar(255),
    adresse varchar(255)
   
);

create table dossier(
    id int primary key auto_increment,
    id_classe int,
    id_candidat int,
    ecole_dorigine varchar(255),
    diplome_obtenu varchar(255),
    date_obtention date,
    constraint fk_classe foreign key (id_classe ) references classe(id),
    constraint fk_candidat foreign key (id_candidat ) references candidat(id)
);

alter table dossier add column status varchar(255),




