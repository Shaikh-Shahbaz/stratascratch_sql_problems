SELECT from_user AS user,
RANK() OVER( ORDER BY COUNT(from_user) DESC, from_user ASC) rnk,
COUNT(from_user) AS sent_count
FROM google_gmail_emails
GROUP BY 1;
