--
-- Class Article as table article
--

CREATE TABLE article (
  "id" serial,
  "title" text NOT NULL
);

ALTER TABLE ONLY article
  ADD CONSTRAINT article_pkey PRIMARY KEY (id);


--
-- Class Example as table example
--

CREATE TABLE example (
  "id" serial,
  "isActive" boolean NOT NULL,
  "test" text NOT NULL,
  "name" text NOT NULL,
  "data" integer NOT NULL
);

ALTER TABLE ONLY example
  ADD CONSTRAINT example_pkey PRIMARY KEY (id);


