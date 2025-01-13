-- FACT TABLE
CREATE TABLE fact_order_products AS (
    SELECT
        op.order_id,
        op.product_id,
        o.user_id,
        p.department_id,
        p.aisle_id,
        op.add_to_cart_order,
        op.reordered
    FROM
        order_products op
    JOIN
        orders o ON op.order_id = o.order_id
    JOIN
        products p ON op.product_id = p.product_id
);
