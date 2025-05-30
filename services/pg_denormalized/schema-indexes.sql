SET max_parallel_maintenance_workers TO 80;
SET maintenance_work_mem TO '16 GB';
CREATE INDEX on tweets_jsonb USING gin((data->'entities'->'hashtags'));
CREATE INDEX on tweets_jsonb USING gin((data->'extended_tweet'->'entities'->'hashtags'));
CREATE INDEX on tweets_jsonb USING gin(to_tsvector('english', COALESCE(data->'extended_tweet'->>'full_text',data->>'text')));
