select  m.model, b.brand, g.car_group, car.purch_date, car.license, col.color, car.total_km, i.ins_company, i.ins_policy
from nuria_orgaz.cars car 
left join nuria_orgaz.models m on car.id_model = m.id_model
left join nuria_orgaz.brands b on m.id_brand = b.id_brand 
left join nuria_orgaz.car_groups g on b.id_cargroup = g.id_cargroup 
left join nuria_orgaz.colors col on car.id_color = col.id_color
left join nuria_orgaz.insurances i on car.id_car = i.id_car;