--1
select * from products inner join stores on products.store_id=stores.id;
--2
select * from feedbacks inner join products on feedbacks.product_id=products.id where products.id=1;
--3
select name, instagram from stores;
--4
select full_name ,balance from clients where id=1;
--5
select products.name, categories.id from products inner join categories on products.category_id=categories.id where categories.id=2;
--6
select * from clients where balance>500;
--7
select clients.full_name, products.description from feedbacks join clients on feedbacks.client_id=clients.id join products on feedbacks.product_id=products.id;
--8
select stores.address, products.name from products join stores on products.store_id=stores.id where products.id=4;
--9
select distinct clients.email from feedbacks join clients on feedbacks.client_id=clients.id;
--10
select avg(price) from products join stores on products.store_id=stores.id where stores.id=2;
--11
select stores.name,count(*)as CountProduct from products full join stores on products.store_id=stores.id group by stores.name;
--12
select products.name ,categories.name from products join categories on products.category_id=categories.id;
--13
select clients.full_name ,products.name from product_client join clients on product_client.client_id=clients.id join products on product_client.product_id=products.id where products.id=5;
--14
select products.name, count(feedbacks.description) from feedbacks inner join products on feedbacks.product_id=products.id group by products.name;
--15
select stores.name , clients.full_name,clients.email, clients.phone_number, clients.balance from product_client inner join clients on product_client.client_id=clients.id join products on product_client.product_id=products.id join stores on products.store_id=stores.id;
--16
select products.name, products.price, stores.name from products inner join stores on products.store_id=stores.id where stores.id=2;
--17
select clients.email, feedbacks.description from feedbacks inner join clients on feedbacks.client_id=clients.id group by clients.email, feedbacks.description;
--18
select products.name ,count(feedbacks.description) as Descriptioncount from feedbacks inner join products on feedbacks.product_id=products.id group by products.name;
--19
select stores.name ,sum(clients.balance) from product_client full join clients on product_client.client_id=clients.id full join products on product_client.product_id=products.id full join stores on products.store_id=stores.id group by stores.name;
--20
select stores.name, feedbacks.description from feedbacks inner join products on feedbacks.product_id=products.id inner join stores on products.store_id=stores.id group by stores.name, feedbacks.description;
--21
select categories.name as CategoryName, clients.full_name as clientsName from product_client inner join products on product_client.product_id=products.id join categories on products.category_id=categories.id join clients on product_client.client_id=clients.id where categories.id=2 group by categories.name , clients.full_name;
--22
select stores.name , avg(clients.balance)from product_client inner join products on product_client.product_id=products.id join stores on products.store_id=stores.id join clients on product_client.client_id=clients.id group by stores.name;
--23
select clients.full_name, clients.email,clients.phone_number, products.name from product_client join products on product_client.product_id=products.id join clients on product_client.client_id=clients.id where products.price=50.99 group by clients.full_name,clients.email,clients.phone_number,products.name;
--24
select products.name,feedbacks.image from feedbacks inner join products on feedbacks.product_id=products.id group by products.name,feedbacks.image;
--25
select clients.full_name, count(product_client.client_id) from product_client inner join clients on product_client.client_id=clients.id group by  clients.full_name having count(product_client.client_id)>1;
--26
alter table feedbacks add column reiting varchar;
update table feedbacks set new_column=2 where feedbacks.id=1;
--27
select clients.full_name,products.name from product_client inner join products on product_client.product_id=products.id inner join clients on product_client.client_id=clients.id order by products.price desc limit 2;
--28
select products.name , count(feedbacks.description) from feedbacks inner join products on feedbacks.product_id=products.id group by products.name;
--29
select clients.full_name, stores.name  from product_client  inner join products on product_client.product_id=products.id inner join clients on product_client.client_id=clients.id inner join stores on products.store_id=stores.id where stores.name='Asia';
--30
select products.name from feedbacks inner join products on feedbacks.product_id=products.id where feedbacks.description is null;
