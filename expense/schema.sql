CREATE TABLE expenses (
  id serial PRIMARY KEY,
  amount numeric(6, 2) NOT NULL,
  memo text NOT NULL,
  created_on date DEFAULT CURRENT_DATE
);

ALTER TABLE expenses ADD CHECK (amount >= 0.00);

INSERT INTO expenses (amount, memo)
  VALUES (13.99, 'Coffee'),
    (3.00, 'Pencil'),
    (9.79, 'Github Copilot');