--JBoss, Home of Professional Open Source
-- Copyright 2012, Red Hat, Inc. and/or its affiliates, and individual
-- contributors by the @authors tag. See the copyright.txt in the
-- distribution for a full listing of individual contributors.
--
-- Licensed under the Apache License, Version 2.0 (the "License");
-- you may not use this file except in compliance with the License.
-- You may obtain a copy of the License at
-- http://www.apache.org/licenses/LICENSE-2.0
-- Unless required by applicable law or agreed to in writing, software
-- distributed under the License is distributed on an "AS IS" BASIS,
-- WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
-- See the License for the specific language governing permissions and
-- limitations under the License.

-- This script initializes the database by creating tables and inserting data
-- Use only for a proof of concept
DROP TABLE USERS_SPRING IF EXISTS CASCADE;
DROP SEQUENCE HIBERNATE_SEQUENCE IF EXISTS;

CREATE TABLE USERS_SPRING (
  ID BIGINT GENERATED BY DEFAULT AS IDENTITY(START WITH 1) NOT NULL PRIMARY KEY,
  USERNAME VARCHAR(255) UNIQUE,
  FIRSTNAME VARCHAR(255),
  LASTNAME VARCHAR(255));

CREATE SEQUENCE HIBERNATE_SEQUENCE START 3;

INSERT INTO USERS_SPRING (ID, USERNAME, FIRSTNAME, LASTNAME) VALUES (1, 'jdoe', 'John', 'Doe');
INSERT INTO USERS_SPRING (ID, USERNAME, FIRSTNAME, LASTNAME) VALUES (2, 'emuster', 'Erika', 'Mustermann');