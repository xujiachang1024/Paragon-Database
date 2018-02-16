-- Query 4: Show user 1’s messages
WITH RECURSIVE MessageCTE AS (
	(
		SELECT m1.*
			FROM message m1
			WHERE (m1.from_userid = cast(1 AS BIGINT) OR m1.to_userid = cast(1 AS BIGINT)) --AND
				--m1.reply_messageid = cast(-1 AS BIGINT)
	)
	UNION ALL
	(
		SELECT m2.*
			FROM message m2
			INNER JOIN MessageCTE mcte
			ON m2.reply_messageid = mcte.messageid --AND
			   --(m2.from_userid = cast(1 AS BIGINT) OR m2.to_userid = cast(1 AS BIGINT))
	)
)
SELECT *
	INTO MessageThread
	FROM MessageCTE
	ORDER BY MessageCTE.reply_messageid ASC;



ALTER TABLE MessageThread
	ADD COLUMN threadID INTEGER;



DROP TABLE IF EXISTS MessageThread;