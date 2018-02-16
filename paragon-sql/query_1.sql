-- Query 1: Show Employer 90109’s five recent messages received from other employers
SELECT u.first_name AS first_name, u.last_name AS last_name,
	u.profile_picture_url AS profile_image_URL, m.message AS message_content, m.create_date AS message_date
	FROM userparagon u, employer e, message m
	WHERE e.userid = cast(90109 AS BIGINT) AND m.to_userid = e.userid AND u.userid = m.from_userid
	ORDER BY m.create_date DESC
	LIMIT 5;