# Introduction to Structured Query Language (SQL)
# University of Michigan

Start: 06/02/24
End: 

Sessions:
- 06/02/24
- 06/16/24
- 06/29/24
- 06/30/24
- 07/01/24

## Welcome and install

We are not required to know anything about php, html, css or anything. Yet.

We are going to use MAMP or XAMPP like in the other course, but like the last course as well,
I'm going to use barebones Apache server and know an MariaDB db.
Also we are going to use PHPMyAdmin, but I don't really like it that much, so I'm going to switch to DBeaver.

## Overview

Databases came around for a way to store data efficentenly in the storage, so when we had slow, slow, slow reading 
times we could optimize the time of the process.

But SQL came after them, when the US Gov wanted to implement Databases but different vendors had different ways to 
handle their dbs. So, the gov demanded that they unified forces and their works in order to make an standard.
An from that effort, SQL became a thing.

## Basic SQL

The basic SQL that we know, is sometimes called DDL or Data Definition Language, where we just define how our database and tables
are created. But also there's DML or Data Manipulation Language. Where we add, delete and update data to the database on it's tables.
And for getting data we have the DQL or Data Querying Language, where we can search, filter and get data from our database.

There's some examples of some basic CRUD sentences, but meh, with theese notes I can search for them at any time.

## Data Types

The general ones, plus they got different variants mainly of sizes

- char
- binaries
- ints
- double / float

## DBs keys and indexes

The same old talk of pk and others. But defining the pk and other keys actually make the database handle the key a different and more 
optimal way for fast readings, which is nice. 
Also, the index definition of a column on a table makes somewhat the same process, but it's only made for less intensive and 'fast' queries.

## Relational DBs

Comes to practice mainly with the normalization of data. Where we sometimes tend to repeat multiple data.
So in order to avoid repeating a lot of data, for example. 
We have a database of out songs, we have a column for artists and other for the album of the song.
Naturally, we could start to see that in thoose columns the data starts to repeat. Which isn't a problem by itself,
but if we have to change the artist or the album, we should go to each song and change it manually. 
Then, it becomes a greater problem.

We can fix this by normalizing out database. Which it's way more of a complex theme than the course will teach, but yeah.

Anyway, we are going to create a table for the artists and the albums, so by using their pk and using the column on the song table as 
a reference, we can access the data by the referece. Having a sort of relation. In this case, the songs and artists could have a 1 : 1.
Where only 1 song could be owned or referenced by 1 artist. But in case of the albumn, the songs might be in multiple albums, so we can 
say that they are 1 : many.

## PKs Recomendations
The pk is the base of relational dbs. Here are some recomendations. 
- Always use non-repeatable data like autoincremented numbers or whatever they have at non-sql dbs.
- Try to have a logical pk, which could work like a 'logical' in some sence as an id, but could change, vary or might even repeat.

## Relational dbs many : many
Just the normal stuff. That we have to create multiple tables for many : many relations.

and that's it. That was the course. Dissapointing.
