# Introduction to Structured Query Language (SQL)
# University of Michigan

Start: 06/02/24
End: 

Sessions:
- 06/02/24
- 06/16/24

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


