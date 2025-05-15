INSERT INTO transactions (buyer_id, seller_id, item_id, auction_id, transaction_amount, transaction_time, transaction_status) VALUES
(12, 1, 1, 1, 450.00, '2025-05-10 14:00:00', 'completed'),
(13, 2, 2, 1, 180.00, '2025-05-10 14:05:00', 'completed'),
(14, 3, 3, 2, 1600.00, '2025-05-10 14:10:00', 'completed'),
(15, 4, 4, 2, 950.00, '2025-05-10 14:15:00', 'completed'),
(16, 5, 5, 3, 300.00, '2025-05-10 14:20:00', 'completed'),
(17, 6, 6, 3, 375.00, '2025-05-10 14:25:00', 'completed'),
(18, 7, 7, 4, 1700.00, '2025-05-10 14:30:00', 'completed'),
(19, 8, 8, 4, 620.00, '2025-05-10 14:35:00', 'completed'),
(20, 9, 9, 5, 250.00, '2025-05-10 14:40:00', 'completed'),
(21, 10, 10, 5, 2000.01, '2025-05-10 14:45:00', 'completed');

INSERT INTO payments (buyer_id, seller_id, item_id, payment_amount, payment_method) VALUES
(12, 1, 1, 450.00, 'credit_card'),
(13, 2, 2, 180.00, 'credit_card'),
(14, 3, 3, 1600.00, 'credit_card'),
(15, 4, 4, 950.00, 'credit_card'),
(16, 5, 5, 300.00, 'credit_card'),
(17, 6, 6, 375.00, 'visa'),
(18, 7, 7, 1700.00, 'cash'),
(19, 8, 8, 620.00, 'cash'),
(20, 9, 9, 250.00, 'visa'),
(21, 10, 10, 2000.01, 'visa');