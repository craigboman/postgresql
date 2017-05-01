SELECT 
--*
p.record_type_code || p.record_num
FROM
sierra_view.varfield v

LEFT JOIN
sierra_view.patron_view AS p
ON ( p.id = v.record_id )

LEFT JOIN sierra_view.varfield_type AS t
ON (t.id = v.id)

WHERE
p.record_type_code = 'p'
AND
--v.varfield_type_code = 'x'
--OR
v.field_content IN
(
)

--LIMIT 100
;


