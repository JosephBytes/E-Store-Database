-- Aggregating mimimum price (lowest product price)
select MIN(price)
from e_store.products; 

-- Aliasing (as keyword)
select MIN(price) as minimum_product_price
from e_store.products;

-- Lowest star of a specific product_id
select *
from e_store.reviews;
select MIN(stars) as lowest_star, product_id
from e_store.reviews
where product_id = 4;

-- Get the MIN(price) and the MAX(price) in products with a single SELECT statement
select MIN(price) as product_min_price, MAX(price) as product_max_price
from e_store.products
where id <= 6;

-- Average stars for the Tablet product
select products.id, name, AVG(stars) as stars_avg
from products join reviews
on products.id = reviews.product_id
where product_id = 1;

-- Average stars for each product
select products.id, name, AVG(stars) as average
from products join reviews
on products.id = reviews.product_id
group by id;

-- Comupte average stars for smartphones 
select name, AVG(stars) as average
from products join reviews
on products.id = reviews.product_id
where reviews.product_id = 2;
-- OR WHERE products.name like 'Smartphone';

-- Compute average stars for smartphones and headphones 
select AVG(stars) as average
from products join reviews
on products.id = reviews.product_id
where reviews.product_id = 2 or reviews.product_id = 4;

-- Average stars for smartphones and headphones (group by non-key attribute, name)
select name, AVG(stars) as avg_stars
from products join reviews on products.id = reviews.product_id
where products.name like 'Smartphone' or products.name like 'Headphones'
group by name;

-- products with average stars over 3
select products.id, name, AVG(stars) as avg_stars
from products join reviews
on products.id = reviews.product_id
group by products.id having avg_stars > 3;

-- Products with average stars under 4
select products.id, products.name, AVG(stars) as avg_stars
from products join reviews on products.id = reviews.product_id
where products.id < 6
group by products.id
having avg_stars < 4;

