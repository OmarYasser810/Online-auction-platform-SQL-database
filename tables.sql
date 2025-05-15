CREATE TABLE users (
    user_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    username VARCHAR(50) UNIQUE NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    pass VARCHAR(50) NOT NULL,
    address TEXT,
    account_balance DECIMAL(10,2),
    is_verified BIT DEFAULT 0
);

CREATE TABLE auctions (
    auction_id INT AUTO_INCREMENT PRIMARY KEY,
    start_time DATETIME NOT NULL,
    ending_time DATETIME NOT NULL,
    auction_status VARCHAR(50) DEFAULT 'pending'
);

CREATE TABLE items (
    item_id INT AUTO_INCREMENT PRIMARY KEY,
    auction_id INT,
    seller_id INT NOT NULL,
    item_name VARCHAR(100) NOT NULL,
    item_description TEXT,
    category VARCHAR(100),
    starting_price DECIMAL(10,2) NOT NULL,
    final_price DECIMAL(10,2) DEFAULT NULL,
    item_status VARCHAR(50) DEFAULT 'available',
    FOREIGN KEY (seller_id) REFERENCES users(user_id)
);

CREATE TABLE bids (
    bid_id INT AUTO_INCREMENT PRIMARY KEY,
    item_id INT NOT NULL,
    auction_id INT NOT NULL,
    buyer_id INT NOT NULL,
    bid_amount DECIMAL(10,2) NOT NULL,
    FOREIGN KEY (item_id) REFERENCES items(item_id),
    FOREIGN KEY (buyer_id) REFERENCES users(user_id),
    FOREIGN KEY (auction_id) REFERENCES auctions(auction_id)
);

CREATE TABLE transactions (
    transaction_id INT AUTO_INCREMENT PRIMARY KEY,
    buyer_id INT NOT NULL,
    seller_id INT NOT NULL,
    item_id INT NOT NULL,
    auction_id INT NOT NULL,
    transaction_amount DECIMAL(10,2) NOT NULL,
    transaction_time DATETIME NOT NULL,
    transaction_status VARCHAR(50) NOT NULL,
    FOREIGN KEY (buyer_id) REFERENCES users(user_id),
    FOREIGN KEY (seller_id) REFERENCES users(user_id),
    FOREIGN KEY (item_id) REFERENCES items(item_id),
    FOREIGN KEY (auction_id) REFERENCES auctions(auction_id)
);

CREATE TABLE payments (
    payment_id INT AUTO_INCREMENT PRIMARY KEY,
    buyer_id INT NOT NULL,
    seller_id INT NOT NULL,
    item_id INT NOT NULL,
    payment_amount DECIMAL(10,2) NOT NULL,
    payment_method VARCHAR(50) NOT NULL,
    FOREIGN KEY (buyer_id) REFERENCES users(user_id),
    FOREIGN KEY (seller_id) REFERENCES users(user_id),
    FOREIGN KEY (item_id) REFERENCES items(item_id)
);