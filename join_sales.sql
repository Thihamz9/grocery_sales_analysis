SELECT
	s.sales_id,
	s.sales_person_id,
	s.customer_id,
	s.quantity,
	s.discount,
	s.sales_date,
	p.product_name,
	p.price,
	p.class_type,
	p.resistant,
	p.is_allergic,
	p.vitality_days,
	c.category_name,
	cu.first_name AS customer_first_name,
	cu.last_name AS customer_last_name,
	cu.address AS customer_address,
	ci.city_name,
	co.country_name,
	e.first_name AS employee_first_name,
	e.last_name AS employee_last_name
FROM 
	sales s
JOIN 
	products p ON s.product_id = p.product_id
JOIN
	categories c ON p.category_id = c.category_id
JOIN
	customers cu ON s.customer_id = cu.customer_id
JOIN
	employees e ON s.sales_person_id = e.employee_id
JOIN 
	cities ci ON cu.city_id = ci.city_id
JOIN
	countries co ON ci.country_id = co.country_id
WHERE s.sales_date >= '2017-12-31' AND s.sales_date <= '2018-05-09'
ORDER BY s.sales_id ASC;

