INSERT INTO auctions (start_time, ending_time, auction_status)
VALUES
-- 5 past (ended)
(NOW() - INTERVAL 10 DAY, NOW() - INTERVAL 9 DAY, 'ended'),
(NOW() - INTERVAL 8 DAY, NOW() - INTERVAL 7 DAY, 'ended'),
(NOW() - INTERVAL 7 DAY, NOW() - INTERVAL 6 DAY, 'ended'),
(NOW() - INTERVAL 6 DAY, NOW() - INTERVAL 5 DAY, 'ended'),
(NOW() - INTERVAL 5 DAY, NOW() - INTERVAL 4 DAY, 'ended'),

-- 10 current (active)
(NOW() - INTERVAL 2 DAY, NOW() + INTERVAL 1 DAY, 'active'),
(NOW() - INTERVAL 1 DAY, NOW() + INTERVAL 2 DAY, 'active'),
(NOW() - INTERVAL 3 DAY, NOW() + INTERVAL 1 DAY, 'active'),
(NOW() - INTERVAL 1 HOUR, NOW() + INTERVAL 4 HOUR, 'active'),
(NOW() - INTERVAL 5 HOUR, NOW() + INTERVAL 3 HOUR, 'active'),
(NOW() - INTERVAL 12 HOUR, NOW() + INTERVAL 1 DAY, 'active'),
(NOW() - INTERVAL 1 DAY, NOW() + INTERVAL 3 DAY, 'active'),
(NOW() - INTERVAL 2 DAY, NOW() + INTERVAL 2 DAY, 'active'),
(NOW() - INTERVAL 3 HOUR, NOW() + INTERVAL 5 HOUR, 'active'),
(NOW() - INTERVAL 2 HOUR, NOW() + INTERVAL 10 HOUR, 'active'),

-- 10 future (pending)
(NOW() + INTERVAL 1 DAY, NOW() + INTERVAL 2 DAY, 'pending'),
(NOW() + INTERVAL 2 DAY, NOW() + INTERVAL 3 DAY, 'pending'),
(NOW() + INTERVAL 3 DAY, NOW() + INTERVAL 4 DAY, 'pending'),
(NOW() + INTERVAL 4 DAY, NOW() + INTERVAL 5 DAY, 'pending'),
(NOW() + INTERVAL 1 HOUR, NOW() + INTERVAL 2 HOUR, 'pending'),
(NOW() + INTERVAL 6 HOUR, NOW() + INTERVAL 12 HOUR, 'pending'),
(NOW() + INTERVAL 12 HOUR, NOW() + INTERVAL 1 DAY, 'pending'),
(NOW() + INTERVAL 18 HOUR, NOW() + INTERVAL 2 DAY, 'pending'),
(NOW() + INTERVAL 2 DAY, NOW() + INTERVAL 4 DAY, 'pending'),
(NOW() + INTERVAL 5 DAY, NOW() + INTERVAL 6 DAY, 'pending');