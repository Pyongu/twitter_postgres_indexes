SELECT COUNT(DISTINCT data ->> 'id') 
FROM tweets_jsonb
WHERE (
     COALESCE(data->'entities'->'hashtags','[]') ||
     COALESCE(data->'extended_tweet'->'entities'->'hashtags','[]')
)   
@> '[{"text":"coronavirus"}]';
