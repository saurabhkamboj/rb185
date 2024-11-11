CREATE TABLE expenses (
  id serial PRIMARY KEY,
  amount numeric(6, 2) NOT NULL,
  memo text NOT NULL,
  created_on date NOT NULL
);

ALTER TABLE expenses ADD CHECK (amount >= 0.01);

INSERT INTO expenses (amount, memo, created_on)
  VALUES (13.99, 'Coffee', CURRENT_DATE),
    (3.00, 'Pencil', CURRENT_DATE),
    (9.79, 'Github Copilot', CURRENT_DATE);