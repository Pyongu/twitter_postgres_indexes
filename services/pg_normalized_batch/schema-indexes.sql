SET max_parallel_maintenance_workers TO 80;
SET maintenance_work_mem TO '16 GB';
CREATE INDEX on tweet_tags USING btree (id_tweets, tag);
CREATE INDEX on tweet_tags USING btree (tag, id_tweets);
CREATE INDEX on tweets USING btree (id_tweets, lang);
CREATE INDEX on tweets USING btree (lang); 
CREATE INDEX ON tweets USING gin(to_tsvector('english', text));
