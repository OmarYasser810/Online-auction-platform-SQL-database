-- 1
SELECT * FROM items WHERE item_status = 'available';

-- 2
SELECT * FROM users WHERE is_verified = 1;

-- 3
SELECT auctions.*, COUNT(*) AS bid_count
FROM bids
JOIN auctions ON bids.auction_id = auctions.auction_id
GROUP BY auction_id;

-- 4
SELECT auctions.*, COUNT(*) FROM bids
JOIN auctions ON bids.auction_id = auctions.auction_id
GROUP BY auction_id
HAVING COUNT(*) > 5;

-- 5. Retrieve all bids along with bidder usernames for a specific auction
SELECT bids.*, users.username
FROM bids
JOIN users ON bids.buyer_id = users.user_id
WHERE bids.auction_id = 1; 

-- 6. List all items along with their highest current bid greater than $500
SELECT items.item_id, items.item_name, MAX(bids.bid_amount) AS highest_bid
FROM items
JOIN bids ON items.item_id = bids.item_id
GROUP BY items.item_id, items.item_name
HAVING MAX(bids.bid_amount) > 500;

-- 7. Show all transactions along with user details where the transaction amount exceeds $2000
SELECT transactions.*, users.*
FROM transactions
JOIN users ON transactions.buyer_id = users.user_id
WHERE transactions.transaction_amount > 2000;

-- 8. Get all auctions along with seller usernames where the auction end date is within this month
SELECT auctions.*, users.username
FROM auctions
JOIN items ON auctions.auction_id = items.auction_id
JOIN users ON users.user_id = items.seller_id
WHERE MONTH(auctions.ending_time) = MONTH(CURRENT_DATE())
AND YEAR(auctions.ending_time) = YEAR(CURRENT_DATE());

-- 9. List items that have never received any bids
SELECT * FROM items
WHERE item_id NOT IN (SELECT item_id FROM bids);

-- 10. Find users who have made payments higher than the average payment amount
SELECT * FROM users
WHERE user_id IN (
SELECT buyer_id FROM payments
GROUP BY buyer_id
HAVING SUM(payment_amount) > (
	SELECT AVG(payment_amount) FROM payments
	)
);