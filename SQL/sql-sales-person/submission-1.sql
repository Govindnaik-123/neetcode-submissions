-- Write your query below

select distinct s.name from sales_person s
left join orders o on s.sales_id=o.sales_id
where s.sales_id not in (
    select sales_id from orders o 
    join company c on c.com_id=o.com_id
    where c.name='CRIMSON'
);
