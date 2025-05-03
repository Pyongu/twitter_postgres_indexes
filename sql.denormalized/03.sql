SELECT
    lang,
    count(*) as count
FROM (
    SELECT DISTINCT
            data ->>'lang' AS lang, data ->>'id' AS id_tweets
    FROM tweets_jsonb
    WHERE data->'entities'->'hashtags' @> '[{"text":"coronavirus"}]' OR data->'extended_tweet'->'entities'->'hashtags' @> '[{"text":"coronavirus"}]'
) t1
GROUP BY lang
ORDER BY count DESC,lang;
