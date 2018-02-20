-- Query 4: Show user 1’s messages
WITH RECURSIVE MessageCTE AS (
	(
		SELECT m1.*
			FROM message m1
			WHERE (m1.from_userid = cast(1 AS BIGINT) OR m1.to_userid = cast(1 AS BIGINT)) AND
				m1.reply_messageid = cast(-1 AS BIGINT)
	)
	UNION ALL
	(
		SELECT m2.*
			FROM message m2
			INNER JOIN MessageCTE mcte
			ON m2.reply_messageid = mcte.messageid
	)
)
SELECT DISTINCT m.messageid AS message_ID,
	s.first_name AS sender_first_name, s.last_name AS sender_last_name, s.profile_picture_url AS sender_profile_image_URL,
	m.reply_messageid AS reply_ID,
	r.first_name AS receiver_first_name, r.last_name AS receiver_last_name, r.profile_picture_url AS receiver_profile_image_URL,
	m.message as message_content, m.create_date as message_date
	FROM MessageCTE m,  userparagon s, userparagon r
	WHERE m.from_userid = s.userid AND m.to_userid = r.userid
	ORDER BY m.reply_messageid ASC, m.messageid ASC