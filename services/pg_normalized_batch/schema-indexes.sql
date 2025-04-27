CREATE INDEX on tweet_tags USING btree (id_tweets, tags);
CREATE INDEX on tweet_tags USING btree (tags, id_tweets);
CREATE INDEX on tweets USING btree (id_tweets, lang);
CREATE INDEX on tweets USING btree (lang); 
CREATE INDEX idx_tweets_text_lang
ON tweets
USING gin(to_tsvector('english', text))
WHERE lang = 'en';
