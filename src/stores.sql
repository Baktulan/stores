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