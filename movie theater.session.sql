CREATE TABLE customer(
    customer_id SERIAL PRIMARY KEY,
    first_name VARCHAR(100),
    last_name VARCHAR(100)  
);
CREATE TABLE ticket(
    ticket_id SERIAL PRIMARY KEY,
    ticket_number VARCHAR(100),
    customer_id INTEGER NOT NULL,
    FOREIGN KEY (customer_id) REFERENCES customer(customer_id) ON DELETE CASCADE
);
CREATE TABLE movie(
    movie_id SERIAL PRIMARY KEY,
    movie_title VARCHAR(100),
    ticket_id INTEGER NOT NULL,
    FOREIGN KEY (ticket_id) REFERENCES ticket(ticket_id) ON DELETE CASCADE  
);
CREATE TABLE concession(
    concession_id SERIAL PRIMARY KEY,
    food VARCHAR(100),
    customer_id INTEGER NOT NULL,
    FOREIGN KEY (customer_id) REFERENCES customer(customer_id) ON DELETE CASCADE
);
