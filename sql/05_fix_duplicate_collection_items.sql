-- 05_fix_duplicate_collection_items.sql
-- Fixes the 30 duplicated collection_items rows (165 products -> 195 rows)
-- caused by re-running 02_migrate_collection_items.sql after the date-bug fix
-- without the first (partial) run's rows being cleared out first.

-- ============================================================
-- STEP 1 — REVIEW FIRST. Run just this SELECT and eyeball a few
-- rows: each product_id should appear twice with IDENTICAL
-- values (same date_acquired, store, price_paid, notes, etc.)
-- If any pair looks genuinely different, STOP and tell Claude
-- before running steps 2-3.
-- ============================================================
SELECT ci.*
FROM collection_items ci
WHERE ci.product_id IN (
    SELECT product_id FROM collection_items GROUP BY product_id HAVING COUNT(*) > 1
)
ORDER BY ci.product_id, ci.collection_item_id;


-- ============================================================
-- STEP 2 — Delete the images rows attached to the duplicate
-- (higher-numbered) collection_item_id for each affected product,
-- keeping the lower collection_item_id's images.
-- ============================================================
DELETE FROM images
WHERE collection_item_id IN (
    SELECT collection_item_id
    FROM (
        SELECT collection_item_id,
               ROW_NUMBER() OVER (PARTITION BY product_id ORDER BY collection_item_id) AS rn
        FROM collection_items
    ) t
    WHERE t.rn > 1
);


-- ============================================================
-- STEP 3 — Delete the duplicate collection_items rows themselves
-- (keeps the lower collection_item_id per product_id).
-- ============================================================
DELETE FROM collection_items
WHERE collection_item_id IN (
    SELECT collection_item_id
    FROM (
        SELECT collection_item_id,
               ROW_NUMBER() OVER (PARTITION BY product_id ORDER BY collection_item_id) AS rn
        FROM collection_items
    ) t
    WHERE t.rn > 1
);


-- ============================================================
-- STEP 4 — Verify. Expect: total_rows = 165, distinct_products = 165,
-- and image count back down to 161.
-- ============================================================
SELECT COUNT(*) AS total_rows, COUNT(DISTINCT product_id) AS distinct_products FROM collection_items;
SELECT COUNT(*) AS image_count FROM images;
