-- 04_migrate_images.sql

-- Links uploaded blob URLs (piece-images container, twlimages storage account) to collection_items

-- Matches products by name + item_type + size (run AFTER confirming the Azure upload finished)



INSERT INTO images (collection_item_id, blob_url, is_primary, uploaded_at)
SELECT ci.collection_item_id, 'https://twlimages.blob.core.windows.net/piece-images/pieces/acorn/00002_acorn-jar-shade-lg_1.jpg', 1, SYSUTCDATETIME()
FROM products p
JOIN collection_items ci ON ci.product_id = p.product_id
WHERE p.name = 'Acorn' AND p.item_type = 'Jar Shade' AND p.size = 'Large';

INSERT INTO images (collection_item_id, blob_url, is_primary, uploaded_at)
SELECT ci.collection_item_id, 'https://twlimages.blob.core.windows.net/piece-images/pieces/acorn/00002_acorn-jar-shade-lg_2.jpg', 0, SYSUTCDATETIME()
FROM products p
JOIN collection_items ci ON ci.product_id = p.product_id
WHERE p.name = 'Acorn' AND p.item_type = 'Jar Shade' AND p.size = 'Large';

INSERT INTO images (collection_item_id, blob_url, is_primary, uploaded_at)
SELECT ci.collection_item_id, 'https://twlimages.blob.core.windows.net/piece-images/pieces/apple-patchwork/00005_apple-patchwork-jar-candle-tray-plate-lg_1.jpg', 1, SYSUTCDATETIME()
FROM products p
JOIN collection_items ci ON ci.product_id = p.product_id
WHERE p.name = 'Apple Patchwork' AND p.item_type = 'Jar Candle Tray (Plate)' AND p.size = 'Large';

INSERT INTO images (collection_item_id, blob_url, is_primary, uploaded_at)
SELECT ci.collection_item_id, 'https://twlimages.blob.core.windows.net/piece-images/pieces/apple-patchwork/00005_apple-patchwork-jar-candle-tray-plate-lg_2.jpg', 0, SYSUTCDATETIME()
FROM products p
JOIN collection_items ci ON ci.product_id = p.product_id
WHERE p.name = 'Apple Patchwork' AND p.item_type = 'Jar Candle Tray (Plate)' AND p.size = 'Large';

INSERT INTO images (collection_item_id, blob_url, is_primary, uploaded_at)
SELECT ci.collection_item_id, 'https://twlimages.blob.core.windows.net/piece-images/pieces/apple-patchwork/00005_apple-patchwork-jar-candle-tray-plate-lg_3.jpg', 0, SYSUTCDATETIME()
FROM products p
JOIN collection_items ci ON ci.product_id = p.product_id
WHERE p.name = 'Apple Patchwork' AND p.item_type = 'Jar Candle Tray (Plate)' AND p.size = 'Large';

INSERT INTO images (collection_item_id, blob_url, is_primary, uploaded_at)
SELECT ci.collection_item_id, 'https://twlimages.blob.core.windows.net/piece-images/pieces/apple-patchwork/00006_apple-patchwork-jar-shade-lg_1.jpg', 1, SYSUTCDATETIME()
FROM products p
JOIN collection_items ci ON ci.product_id = p.product_id
WHERE p.name = 'Apple Patchwork' AND p.item_type = 'Jar Shade' AND p.size = 'Large';

INSERT INTO images (collection_item_id, blob_url, is_primary, uploaded_at)
SELECT ci.collection_item_id, 'https://twlimages.blob.core.windows.net/piece-images/pieces/apple-patchwork/00006_apple-patchwork-jar-shade-lg_2.jpg', 0, SYSUTCDATETIME()
FROM products p
JOIN collection_items ci ON ci.product_id = p.product_id
WHERE p.name = 'Apple Patchwork' AND p.item_type = 'Jar Shade' AND p.size = 'Large';

INSERT INTO images (collection_item_id, blob_url, is_primary, uploaded_at)
SELECT ci.collection_item_id, 'https://twlimages.blob.core.windows.net/piece-images/pieces/apple-patchwork/00006_apple-patchwork-jar-shade-lg_3.jpg', 0, SYSUTCDATETIME()
FROM products p
JOIN collection_items ci ON ci.product_id = p.product_id
WHERE p.name = 'Apple Patchwork' AND p.item_type = 'Jar Shade' AND p.size = 'Large';

INSERT INTO images (collection_item_id, blob_url, is_primary, uploaded_at)
SELECT ci.collection_item_id, 'https://twlimages.blob.core.windows.net/piece-images/pieces/apple-patchwork/00007_apple-patchwork-tart-warmer-candle-lg.jpg', 1, SYSUTCDATETIME()
FROM products p
JOIN collection_items ci ON ci.product_id = p.product_id
WHERE p.name = 'Apple Patchwork' AND p.item_type = 'Tart Warmer (Candle)' AND p.size = 'Large';

INSERT INTO images (collection_item_id, blob_url, is_primary, uploaded_at)
SELECT ci.collection_item_id, 'https://twlimages.blob.core.windows.net/piece-images/pieces/apple-patchwork/00008_apple-patchwork-tart-warmer-electric-lg.jpg', 1, SYSUTCDATETIME()
FROM products p
JOIN collection_items ci ON ci.product_id = p.product_id
WHERE p.name = 'Apple Patchwork' AND p.item_type = 'Tart Warmer (Electric)' AND p.size = 'Large';

INSERT INTO images (collection_item_id, blob_url, is_primary, uploaded_at)
SELECT ci.collection_item_id, 'https://twlimages.blob.core.windows.net/piece-images/pieces/art-deco/00009_art-deco-illuma-lid-topper-lg.jpg', 1, SYSUTCDATETIME()
FROM products p
JOIN collection_items ci ON ci.product_id = p.product_id
WHERE p.name = 'Art Deco' AND p.item_type = 'Illuma-Lid Topper' AND p.size = 'Large';

INSERT INTO images (collection_item_id, blob_url, is_primary, uploaded_at)
SELECT ci.collection_item_id, 'https://twlimages.blob.core.windows.net/piece-images/pieces/autumn-patchwork/00010_autumn-patchwork-jar-candle-tray-plate-lg.jpg', 1, SYSUTCDATETIME()
FROM products p
JOIN collection_items ci ON ci.product_id = p.product_id
WHERE p.name = 'Autumn Patchwork' AND p.item_type = 'Jar Candle Tray (Plate)' AND p.size = 'Large';

INSERT INTO images (collection_item_id, blob_url, is_primary, uploaded_at)
SELECT ci.collection_item_id, 'https://twlimages.blob.core.windows.net/piece-images/pieces/autumn-patchwork/00011_autumn-patchwork-jar-shade-lg.jpg', 1, SYSUTCDATETIME()
FROM products p
JOIN collection_items ci ON ci.product_id = p.product_id
WHERE p.name = 'Autumn Patchwork' AND p.item_type = 'Jar Shade' AND p.size = 'Large';

INSERT INTO images (collection_item_id, blob_url, is_primary, uploaded_at)
SELECT ci.collection_item_id, 'https://twlimages.blob.core.windows.net/piece-images/pieces/bay-berry-green-bronze/00012_bay-berry-green-bronze-illuma-lid-topper-lg.jpg', 1, SYSUTCDATETIME()
FROM products p
JOIN collection_items ci ON ci.product_id = p.product_id
WHERE p.name = 'Bay Berry Green Bronze' AND p.item_type = 'Illuma-Lid Topper' AND p.size = 'Large';

INSERT INTO images (collection_item_id, blob_url, is_primary, uploaded_at)
SELECT ci.collection_item_id, 'https://twlimages.blob.core.windows.net/piece-images/pieces/beach-holiday/00013_beach-holiday-jar-candle-tray-plate-lg.jpg', 1, SYSUTCDATETIME()
FROM products p
JOIN collection_items ci ON ci.product_id = p.product_id
WHERE p.name = 'Beach Holiday' AND p.item_type = 'Jar Candle Tray (Plate)' AND p.size = 'Large';

INSERT INTO images (collection_item_id, blob_url, is_primary, uploaded_at)
SELECT ci.collection_item_id, 'https://twlimages.blob.core.windows.net/piece-images/pieces/beach-holiday/00014_beach-holiday-jar-shade-lg.jpg', 1, SYSUTCDATETIME()
FROM products p
JOIN collection_items ci ON ci.product_id = p.product_id
WHERE p.name = 'Beach Holiday' AND p.item_type = 'Jar Shade' AND p.size = 'Large';

INSERT INTO images (collection_item_id, blob_url, is_primary, uploaded_at)
SELECT ci.collection_item_id, 'https://twlimages.blob.core.windows.net/piece-images/pieces/blue-chevron/00017_blue-chevron-jar-candle-holder-lg.jpg', 1, SYSUTCDATETIME()
FROM products p
JOIN collection_items ci ON ci.product_id = p.product_id
WHERE p.name = 'Blue Chevron' AND p.item_type = 'Jar Candle Holder' AND p.size = 'Large';

INSERT INTO images (collection_item_id, blob_url, is_primary, uploaded_at)
SELECT ci.collection_item_id, 'https://twlimages.blob.core.windows.net/piece-images/pieces/blue-chevron/00016_blue-chevron-jar-shade-lg.jpg', 1, SYSUTCDATETIME()
FROM products p
JOIN collection_items ci ON ci.product_id = p.product_id
WHERE p.name = 'Blue Chevron' AND p.item_type = 'Jar Shade' AND p.size = 'Large';

INSERT INTO images (collection_item_id, blob_url, is_primary, uploaded_at)
SELECT ci.collection_item_id, 'https://twlimages.blob.core.windows.net/piece-images/pieces/blue-posies/00020_blue-posies-jar-candle-tray-plate-lg.jpg', 1, SYSUTCDATETIME()
FROM products p
JOIN collection_items ci ON ci.product_id = p.product_id
WHERE p.name = 'Blue Posies' AND p.item_type = 'Jar Candle Tray (Plate)' AND p.size = 'Large';

INSERT INTO images (collection_item_id, blob_url, is_primary, uploaded_at)
SELECT ci.collection_item_id, 'https://twlimages.blob.core.windows.net/piece-images/pieces/blue-posies/00021_blue-posies-jar-shade-lg.jpg', 1, SYSUTCDATETIME()
FROM products p
JOIN collection_items ci ON ci.product_id = p.product_id
WHERE p.name = 'Blue Posies' AND p.item_type = 'Jar Shade' AND p.size = 'Large';

INSERT INTO images (collection_item_id, blob_url, is_primary, uploaded_at)
SELECT ci.collection_item_id, 'https://twlimages.blob.core.windows.net/piece-images/pieces/butterfly/00022_butterfly-jar-candle-tray-plate-lg.jpg', 1, SYSUTCDATETIME()
FROM products p
JOIN collection_items ci ON ci.product_id = p.product_id
WHERE p.name = 'Butterfly' AND p.item_type = 'Jar Candle Tray (Plate)' AND p.size = 'Large';

INSERT INTO images (collection_item_id, blob_url, is_primary, uploaded_at)
SELECT ci.collection_item_id, 'https://twlimages.blob.core.windows.net/piece-images/pieces/butterfly/00023_butterfly-jar-shade-lg.jpg', 1, SYSUTCDATETIME()
FROM products p
JOIN collection_items ci ON ci.product_id = p.product_id
WHERE p.name = 'Butterfly' AND p.item_type = 'Jar Shade' AND p.size = 'Large';

INSERT INTO images (collection_item_id, blob_url, is_primary, uploaded_at)
SELECT ci.collection_item_id, 'https://twlimages.blob.core.windows.net/piece-images/pieces/butterfly-crackle/00024_butterfly-crackle-jar-candle-tray-plate-lg.jpg', 1, SYSUTCDATETIME()
FROM products p
JOIN collection_items ci ON ci.product_id = p.product_id
WHERE p.name = 'Butterfly Crackle' AND p.item_type = 'Jar Candle Tray (Plate)' AND p.size = 'Large';

INSERT INTO images (collection_item_id, blob_url, is_primary, uploaded_at)
SELECT ci.collection_item_id, 'https://twlimages.blob.core.windows.net/piece-images/pieces/butterfly-crackle/00025_butterfly-crackle-jar-shade-lg.jpg', 1, SYSUTCDATETIME()
FROM products p
JOIN collection_items ci ON ci.product_id = p.product_id
WHERE p.name = 'Butterfly Crackle' AND p.item_type = 'Jar Shade' AND p.size = 'Large';

INSERT INTO images (collection_item_id, blob_url, is_primary, uploaded_at)
SELECT ci.collection_item_id, 'https://twlimages.blob.core.windows.net/piece-images/pieces/cabana-stripes/00026_cabana-stripes-jar-candle-tray-plate-lg.jpg', 1, SYSUTCDATETIME()
FROM products p
JOIN collection_items ci ON ci.product_id = p.product_id
WHERE p.name = 'Cabana Stripes' AND p.item_type = 'Jar Candle Tray (Plate)' AND p.size = 'Large';

INSERT INTO images (collection_item_id, blob_url, is_primary, uploaded_at)
SELECT ci.collection_item_id, 'https://twlimages.blob.core.windows.net/piece-images/pieces/cabana-stripes/00027_cabana-stripes-jar-shade-lg.jpg', 1, SYSUTCDATETIME()
FROM products p
JOIN collection_items ci ON ci.product_id = p.product_id
WHERE p.name = 'Cabana Stripes' AND p.item_type = 'Jar Shade' AND p.size = 'Large';

INSERT INTO images (collection_item_id, blob_url, is_primary, uploaded_at)
SELECT ci.collection_item_id, 'https://twlimages.blob.core.windows.net/piece-images/pieces/caf-collection/00031_caf-collection-illuma-lid-topper-lg.jpg', 1, SYSUTCDATETIME()
FROM products p
JOIN collection_items ci ON ci.product_id = p.product_id
WHERE p.name = 'Café Collection' AND p.item_type = 'Illuma-Lid Topper' AND p.size = 'Large';

INSERT INTO images (collection_item_id, blob_url, is_primary, uploaded_at)
SELECT ci.collection_item_id, 'https://twlimages.blob.core.windows.net/piece-images/pieces/caf-collection/00028_caf-collection-jar-candle-tray-plate-lg.jpg', 1, SYSUTCDATETIME()
FROM products p
JOIN collection_items ci ON ci.product_id = p.product_id
WHERE p.name = 'Café Collection' AND p.item_type = 'Jar Candle Tray (Plate)' AND p.size = 'Large';

INSERT INTO images (collection_item_id, blob_url, is_primary, uploaded_at)
SELECT ci.collection_item_id, 'https://twlimages.blob.core.windows.net/piece-images/pieces/caf-collection/00029_caf-collection-jar-shade-lg.jpg', 1, SYSUTCDATETIME()
FROM products p
JOIN collection_items ci ON ci.product_id = p.product_id
WHERE p.name = 'Café Collection' AND p.item_type = 'Jar Shade' AND p.size = 'Large';

INSERT INTO images (collection_item_id, blob_url, is_primary, uploaded_at)
SELECT ci.collection_item_id, 'https://twlimages.blob.core.windows.net/piece-images/pieces/caf-collection/00030_caf-collection-votive-holder-lg.jpg', 1, SYSUTCDATETIME()
FROM products p
JOIN collection_items ci ON ci.product_id = p.product_id
WHERE p.name = 'Café Collection' AND p.item_type = 'Votive Holder' AND p.size = 'Large';

INSERT INTO images (collection_item_id, blob_url, is_primary, uploaded_at)
SELECT ci.collection_item_id, 'https://twlimages.blob.core.windows.net/piece-images/pieces/carmen-southwest/00032_carmen-southwest-jar-candle-tray-plate.jpg', 1, SYSUTCDATETIME()
FROM products p
JOIN collection_items ci ON ci.product_id = p.product_id
WHERE p.name = 'Carmen Southwest' AND p.item_type = 'Jar Candle Tray (Plate)' AND p.size IS NULL;

INSERT INTO images (collection_item_id, blob_url, is_primary, uploaded_at)
SELECT ci.collection_item_id, 'https://twlimages.blob.core.windows.net/piece-images/pieces/carmen-southwest/00033_carmen-southwest-jar-shade.jpg', 1, SYSUTCDATETIME()
FROM products p
JOIN collection_items ci ON ci.product_id = p.product_id
WHERE p.name = 'Carmen Southwest' AND p.item_type = 'Jar Shade' AND p.size IS NULL;

INSERT INTO images (collection_item_id, blob_url, is_primary, uploaded_at)
SELECT ci.collection_item_id, 'https://twlimages.blob.core.windows.net/piece-images/pieces/christmas-past/00034_christmas-past-illuma-lid-topper-lg.jpg', 1, SYSUTCDATETIME()
FROM products p
JOIN collection_items ci ON ci.product_id = p.product_id
WHERE p.name = 'Christmas Past' AND p.item_type = 'Illuma-Lid Topper' AND p.size = 'Large';

INSERT INTO images (collection_item_id, blob_url, is_primary, uploaded_at)
SELECT ci.collection_item_id, 'https://twlimages.blob.core.windows.net/piece-images/pieces/coastal/00036_coastal-jar-candle-holder-lg.jpg', 1, SYSUTCDATETIME()
FROM products p
JOIN collection_items ci ON ci.product_id = p.product_id
WHERE p.name = 'Coastal' AND p.item_type = 'Jar Candle Holder' AND p.size = 'Large';

INSERT INTO images (collection_item_id, blob_url, is_primary, uploaded_at)
SELECT ci.collection_item_id, 'https://twlimages.blob.core.windows.net/piece-images/pieces/coastal/00035_coastal-jar-shade-lg.jpg', 1, SYSUTCDATETIME()
FROM products p
JOIN collection_items ci ON ci.product_id = p.product_id
WHERE p.name = 'Coastal' AND p.item_type = 'Jar Shade' AND p.size = 'Large';

INSERT INTO images (collection_item_id, blob_url, is_primary, uploaded_at)
SELECT ci.collection_item_id, 'https://twlimages.blob.core.windows.net/piece-images/pieces/cocktail/00037_cocktail-jar-candle-holder-lg.jpg', 1, SYSUTCDATETIME()
FROM products p
JOIN collection_items ci ON ci.product_id = p.product_id
WHERE p.name = 'Cocktail' AND p.item_type = 'Jar Candle Holder' AND p.size = 'Large';

INSERT INTO images (collection_item_id, blob_url, is_primary, uploaded_at)
SELECT ci.collection_item_id, 'https://twlimages.blob.core.windows.net/piece-images/pieces/copper-cage/00038_copper-cage-illuma-lid-topper-lg.jpg', 1, SYSUTCDATETIME()
FROM products p
JOIN collection_items ci ON ci.product_id = p.product_id
WHERE p.name = 'Copper Cage' AND p.item_type = 'Illuma-Lid Topper' AND p.size = 'Large';

INSERT INTO images (collection_item_id, blob_url, is_primary, uploaded_at)
SELECT ci.collection_item_id, 'https://twlimages.blob.core.windows.net/piece-images/pieces/coral-floral/00039_coral-floral-jar-candle-tray-plate.jpg', 1, SYSUTCDATETIME()
FROM products p
JOIN collection_items ci ON ci.product_id = p.product_id
WHERE p.name = 'Coral Floral' AND p.item_type = 'Jar Candle Tray (Plate)' AND p.size IS NULL;

INSERT INTO images (collection_item_id, blob_url, is_primary, uploaded_at)
SELECT ci.collection_item_id, 'https://twlimages.blob.core.windows.net/piece-images/pieces/coral-floral/00040_coral-floral-jar-shade.jpg', 1, SYSUTCDATETIME()
FROM products p
JOIN collection_items ci ON ci.product_id = p.product_id
WHERE p.name = 'Coral Floral' AND p.item_type = 'Jar Shade' AND p.size IS NULL;

INSERT INTO images (collection_item_id, blob_url, is_primary, uploaded_at)
SELECT ci.collection_item_id, 'https://twlimages.blob.core.windows.net/piece-images/pieces/cornucopia-crackle/00041_cornucopia-crackle-jar-candle-tray-plate-lg.jpg', 1, SYSUTCDATETIME()
FROM products p
JOIN collection_items ci ON ci.product_id = p.product_id
WHERE p.name = 'Cornucopia Crackle' AND p.item_type = 'Jar Candle Tray (Plate)' AND p.size = 'Large';

INSERT INTO images (collection_item_id, blob_url, is_primary, uploaded_at)
SELECT ci.collection_item_id, 'https://twlimages.blob.core.windows.net/piece-images/pieces/cornucopia-crackle/00042_cornucopia-crackle-jar-shade-lg.jpg', 1, SYSUTCDATETIME()
FROM products p
JOIN collection_items ci ON ci.product_id = p.product_id
WHERE p.name = 'Cornucopia Crackle' AND p.item_type = 'Jar Shade' AND p.size = 'Large';

INSERT INTO images (collection_item_id, blob_url, is_primary, uploaded_at)
SELECT ci.collection_item_id, 'https://twlimages.blob.core.windows.net/piece-images/pieces/cross-lacing/00046_cross-lacing-illuma-lid-topper-lg.jpg', 1, SYSUTCDATETIME()
FROM products p
JOIN collection_items ci ON ci.product_id = p.product_id
WHERE p.name = 'Cross Lacing' AND p.item_type = 'Illuma-Lid Topper' AND p.size = 'Large';

INSERT INTO images (collection_item_id, blob_url, is_primary, uploaded_at)
SELECT ci.collection_item_id, 'https://twlimages.blob.core.windows.net/piece-images/pieces/cross-lacing/00045_cross-lacing-jar-candle-holder-lg.jpg', 1, SYSUTCDATETIME()
FROM products p
JOIN collection_items ci ON ci.product_id = p.product_id
WHERE p.name = 'Cross Lacing' AND p.item_type = 'Jar Candle Holder' AND p.size = 'Large';

INSERT INTO images (collection_item_id, blob_url, is_primary, uploaded_at)
SELECT ci.collection_item_id, 'https://twlimages.blob.core.windows.net/piece-images/pieces/cross-lacing/00044_cross-lacing-jar-shade-lg.jpg', 1, SYSUTCDATETIME()
FROM products p
JOIN collection_items ci ON ci.product_id = p.product_id
WHERE p.name = 'Cross Lacing' AND p.item_type = 'Jar Shade' AND p.size = 'Large';

INSERT INTO images (collection_item_id, blob_url, is_primary, uploaded_at)
SELECT ci.collection_item_id, 'https://twlimages.blob.core.windows.net/piece-images/pieces/cut-out-driftwood/00047_cut-out-driftwood-jar-candle-tray-plate-lg.jpg', 1, SYSUTCDATETIME()
FROM products p
JOIN collection_items ci ON ci.product_id = p.product_id
WHERE p.name = 'Cut-Out Driftwood' AND p.item_type = 'Jar Candle Tray (Plate)' AND p.size = 'Large';

INSERT INTO images (collection_item_id, blob_url, is_primary, uploaded_at)
SELECT ci.collection_item_id, 'https://twlimages.blob.core.windows.net/piece-images/pieces/cut-out-driftwood/00048_cut-out-driftwood-jar-shade-lg.jpg', 1, SYSUTCDATETIME()
FROM products p
JOIN collection_items ci ON ci.product_id = p.product_id
WHERE p.name = 'Cut-Out Driftwood' AND p.item_type = 'Jar Shade' AND p.size = 'Large';

INSERT INTO images (collection_item_id, blob_url, is_primary, uploaded_at)
SELECT ci.collection_item_id, 'https://twlimages.blob.core.windows.net/piece-images/pieces/easter-bunny/00053_easter-bunny-jar-candle-holder-lg.jpg', 1, SYSUTCDATETIME()
FROM products p
JOIN collection_items ci ON ci.product_id = p.product_id
WHERE p.name = 'Easter Bunny' AND p.item_type = 'Jar Candle Holder' AND p.size = 'Large';

INSERT INTO images (collection_item_id, blob_url, is_primary, uploaded_at)
SELECT ci.collection_item_id, 'https://twlimages.blob.core.windows.net/piece-images/pieces/easter-crackle/00054_easter-crackle-jar-candle-tray-plate-lg.jpg', 1, SYSUTCDATETIME()
FROM products p
JOIN collection_items ci ON ci.product_id = p.product_id
WHERE p.name = 'Easter Crackle' AND p.item_type = 'Jar Candle Tray (Plate)' AND p.size = 'Large';

INSERT INTO images (collection_item_id, blob_url, is_primary, uploaded_at)
SELECT ci.collection_item_id, 'https://twlimages.blob.core.windows.net/piece-images/pieces/easter-crackle/00055_easter-crackle-jar-shade-lg.jpg', 1, SYSUTCDATETIME()
FROM products p
JOIN collection_items ci ON ci.product_id = p.product_id
WHERE p.name = 'Easter Crackle' AND p.item_type = 'Jar Shade' AND p.size = 'Large';

INSERT INTO images (collection_item_id, blob_url, is_primary, uploaded_at)
SELECT ci.collection_item_id, 'https://twlimages.blob.core.windows.net/piece-images/pieces/easter-eggs/00056_easter-eggs-illuma-lid-topper-lg.jpg', 1, SYSUTCDATETIME()
FROM products p
JOIN collection_items ci ON ci.product_id = p.product_id
WHERE p.name = 'Easter Eggs' AND p.item_type = 'Illuma-Lid Topper' AND p.size = 'Large';

INSERT INTO images (collection_item_id, blob_url, is_primary, uploaded_at)
SELECT ci.collection_item_id, 'https://twlimages.blob.core.windows.net/piece-images/pieces/enchanted-tree/00057_enchanted-tree-jar-candle-tray-3d-lg.jpg', 1, SYSUTCDATETIME()
FROM products p
JOIN collection_items ci ON ci.product_id = p.product_id
WHERE p.name = 'Enchanted Tree' AND p.item_type = 'Jar Candle Tray (3D)' AND p.size = 'Large';

INSERT INTO images (collection_item_id, blob_url, is_primary, uploaded_at)
SELECT ci.collection_item_id, 'https://twlimages.blob.core.windows.net/piece-images/pieces/fall-gourds/00058_fall-gourds-jar-candle-holder-lg.jpg', 1, SYSUTCDATETIME()
FROM products p
JOIN collection_items ci ON ci.product_id = p.product_id
WHERE p.name = 'Fall Gourds' AND p.item_type = 'Jar Candle Holder' AND p.size = 'Large';

INSERT INTO images (collection_item_id, blob_url, is_primary, uploaded_at)
SELECT ci.collection_item_id, 'https://twlimages.blob.core.windows.net/piece-images/pieces/fall-leaves/00059_fall-leaves-jar-candle-holder-lg.jpg', 1, SYSUTCDATETIME()
FROM products p
JOIN collection_items ci ON ci.product_id = p.product_id
WHERE p.name = 'Fall Leaves' AND p.item_type = 'Jar Candle Holder' AND p.size = 'Large';

INSERT INTO images (collection_item_id, blob_url, is_primary, uploaded_at)
SELECT ci.collection_item_id, 'https://twlimages.blob.core.windows.net/piece-images/pieces/flutterby/00061_flutterby-jar-candle-tray-plate-lg.jpg', 1, SYSUTCDATETIME()
FROM products p
JOIN collection_items ci ON ci.product_id = p.product_id
WHERE p.name = 'Flutterby' AND p.item_type = 'Jar Candle Tray (Plate)' AND p.size = 'Large';

INSERT INTO images (collection_item_id, blob_url, is_primary, uploaded_at)
SELECT ci.collection_item_id, 'https://twlimages.blob.core.windows.net/piece-images/pieces/flutterby/00062_flutterby-jar-shade-lg.jpg', 1, SYSUTCDATETIME()
FROM products p
JOIN collection_items ci ON ci.product_id = p.product_id
WHERE p.name = 'Flutterby' AND p.item_type = 'Jar Shade' AND p.size = 'Large';

INSERT INTO images (collection_item_id, blob_url, is_primary, uploaded_at)
SELECT ci.collection_item_id, 'https://twlimages.blob.core.windows.net/piece-images/pieces/fork-and-spoon-jar-holder/00063_fork-and-spoon-jar-holder-jar-candle-holder-lg_1.jpg', 1, SYSUTCDATETIME()
FROM products p
JOIN collection_items ci ON ci.product_id = p.product_id
WHERE p.name = 'Fork and Spoon Jar Holder' AND p.item_type = 'Jar Candle Holder' AND p.size = 'Large';

INSERT INTO images (collection_item_id, blob_url, is_primary, uploaded_at)
SELECT ci.collection_item_id, 'https://twlimages.blob.core.windows.net/piece-images/pieces/fork-and-spoon-jar-holder/00063_fork-and-spoon-jar-holder-jar-candle-holder-lg_2.jpg', 0, SYSUTCDATETIME()
FROM products p
JOIN collection_items ci ON ci.product_id = p.product_id
WHERE p.name = 'Fork and Spoon Jar Holder' AND p.item_type = 'Jar Candle Holder' AND p.size = 'Large';

INSERT INTO images (collection_item_id, blob_url, is_primary, uploaded_at)
SELECT ci.collection_item_id, 'https://twlimages.blob.core.windows.net/piece-images/pieces/fresh-ocean/00065_fresh-ocean-jar-candle-tray-plate-lg.jpg', 1, SYSUTCDATETIME()
FROM products p
JOIN collection_items ci ON ci.product_id = p.product_id
WHERE p.name = 'Fresh Ocean' AND p.item_type = 'Jar Candle Tray (Plate)' AND p.size = 'Large';

INSERT INTO images (collection_item_id, blob_url, is_primary, uploaded_at)
SELECT ci.collection_item_id, 'https://twlimages.blob.core.windows.net/piece-images/pieces/fresh-ocean/00066_fresh-ocean-jar-shade-lg.jpg', 1, SYSUTCDATETIME()
FROM products p
JOIN collection_items ci ON ci.product_id = p.product_id
WHERE p.name = 'Fresh Ocean' AND p.item_type = 'Jar Shade' AND p.size = 'Large';

INSERT INTO images (collection_item_id, blob_url, is_primary, uploaded_at)
SELECT ci.collection_item_id, 'https://twlimages.blob.core.windows.net/piece-images/pieces/garden-tulips/00067_garden-tulips-jar-candle-tray-plate-lg.jpg', 1, SYSUTCDATETIME()
FROM products p
JOIN collection_items ci ON ci.product_id = p.product_id
WHERE p.name = 'Garden Tulips' AND p.item_type = 'Jar Candle Tray (Plate)' AND p.size = 'Large';

INSERT INTO images (collection_item_id, blob_url, is_primary, uploaded_at)
SELECT ci.collection_item_id, 'https://twlimages.blob.core.windows.net/piece-images/pieces/garden-tulips/00068_garden-tulips-jar-shade-lg.jpg', 1, SYSUTCDATETIME()
FROM products p
JOIN collection_items ci ON ci.product_id = p.product_id
WHERE p.name = 'Garden Tulips' AND p.item_type = 'Jar Shade' AND p.size = 'Large';

INSERT INTO images (collection_item_id, blob_url, is_primary, uploaded_at)
SELECT ci.collection_item_id, 'https://twlimages.blob.core.windows.net/piece-images/pieces/gardening-bee/00071_gardening-bee-jar-candle-tray-plate-lg.jpg', 1, SYSUTCDATETIME()
FROM products p
JOIN collection_items ci ON ci.product_id = p.product_id
WHERE p.name = 'Gardening Bee' AND p.item_type = 'Jar Candle Tray (Plate)' AND p.size = 'Large';

INSERT INTO images (collection_item_id, blob_url, is_primary, uploaded_at)
SELECT ci.collection_item_id, 'https://twlimages.blob.core.windows.net/piece-images/pieces/gardening-bee/00072_gardening-bee-jar-candle-tray-plate-sm.jpg', 1, SYSUTCDATETIME()
FROM products p
JOIN collection_items ci ON ci.product_id = p.product_id
WHERE p.name = 'Gardening Bee' AND p.item_type = 'Jar Candle Tray (Plate)' AND p.size = 'Small';

INSERT INTO images (collection_item_id, blob_url, is_primary, uploaded_at)
SELECT ci.collection_item_id, 'https://twlimages.blob.core.windows.net/piece-images/pieces/gardening-bee/00074_gardening-bee-jar-shade-sm.jpg', 1, SYSUTCDATETIME()
FROM products p
JOIN collection_items ci ON ci.product_id = p.product_id
WHERE p.name = 'Gardening Bee' AND p.item_type = 'Jar Shade' AND p.size = 'Small';

INSERT INTO images (collection_item_id, blob_url, is_primary, uploaded_at)
SELECT ci.collection_item_id, 'https://twlimages.blob.core.windows.net/piece-images/pieces/halloween-friends/00077_halloween-friends-illuma-lid-topper-lg.jpg', 1, SYSUTCDATETIME()
FROM products p
JOIN collection_items ci ON ci.product_id = p.product_id
WHERE p.name = 'Halloween Friends' AND p.item_type = 'Illuma-Lid Topper' AND p.size = 'Large';

INSERT INTO images (collection_item_id, blob_url, is_primary, uploaded_at)
SELECT ci.collection_item_id, 'https://twlimages.blob.core.windows.net/piece-images/pieces/halloween-ghosts/00078_halloween-ghosts-jar-candle-tray-3d-lg.jpg', 1, SYSUTCDATETIME()
FROM products p
JOIN collection_items ci ON ci.product_id = p.product_id
WHERE p.name = 'Halloween Ghosts' AND p.item_type = 'Jar Candle Tray (3D)' AND p.size = 'Large';

INSERT INTO images (collection_item_id, blob_url, is_primary, uploaded_at)
SELECT ci.collection_item_id, 'https://twlimages.blob.core.windows.net/piece-images/pieces/hanging-iron-holder/00079_hanging-iron-holder-jar-candle-holder-lg.jpg', 1, SYSUTCDATETIME()
FROM products p
JOIN collection_items ci ON ci.product_id = p.product_id
WHERE p.name = 'Hanging Iron Holder' AND p.item_type = 'Jar Candle Holder' AND p.size = 'Large';

INSERT INTO images (collection_item_id, blob_url, is_primary, uploaded_at)
SELECT ci.collection_item_id, 'https://twlimages.blob.core.windows.net/piece-images/pieces/happy-birthday-america/00080_happy-birthday-america-jar-candle-holder-lg.jpg', 1, SYSUTCDATETIME()
FROM products p
JOIN collection_items ci ON ci.product_id = p.product_id
WHERE p.name = 'Happy Birthday, America!' AND p.item_type = 'Jar Candle Holder' AND p.size = 'Large';

INSERT INTO images (collection_item_id, blob_url, is_primary, uploaded_at)
SELECT ci.collection_item_id, 'https://twlimages.blob.core.windows.net/piece-images/pieces/happy-garden/00081_happy-garden-jar-candle-tray-plate.jpg', 1, SYSUTCDATETIME()
FROM products p
JOIN collection_items ci ON ci.product_id = p.product_id
WHERE p.name = 'Happy Garden' AND p.item_type = 'Jar Candle Tray (Plate)' AND p.size IS NULL;

INSERT INTO images (collection_item_id, blob_url, is_primary, uploaded_at)
SELECT ci.collection_item_id, 'https://twlimages.blob.core.windows.net/piece-images/pieces/happy-garden/00082_happy-garden-jar-shade.jpg', 1, SYSUTCDATETIME()
FROM products p
JOIN collection_items ci ON ci.product_id = p.product_id
WHERE p.name = 'Happy Garden' AND p.item_type = 'Jar Shade' AND p.size IS NULL;

INSERT INTO images (collection_item_id, blob_url, is_primary, uploaded_at)
SELECT ci.collection_item_id, 'https://twlimages.blob.core.windows.net/piece-images/pieces/harvest-bounty/00083_harvest-bounty-jar-candle-tray-plate-lg.jpg', 1, SYSUTCDATETIME()
FROM products p
JOIN collection_items ci ON ci.product_id = p.product_id
WHERE p.name = 'Harvest Bounty' AND p.item_type = 'Jar Candle Tray (Plate)' AND p.size = 'Large';

INSERT INTO images (collection_item_id, blob_url, is_primary, uploaded_at)
SELECT ci.collection_item_id, 'https://twlimages.blob.core.windows.net/piece-images/pieces/harvest-bounty/00085_harvest-bounty-jar-shade-lg.jpg', 1, SYSUTCDATETIME()
FROM products p
JOIN collection_items ci ON ci.product_id = p.product_id
WHERE p.name = 'Harvest Bounty' AND p.item_type = 'Jar Shade' AND p.size = 'Large';

INSERT INTO images (collection_item_id, blob_url, is_primary, uploaded_at)
SELECT ci.collection_item_id, 'https://twlimages.blob.core.windows.net/piece-images/pieces/harvest-corn/00087_harvest-corn-jar-candle-tray-plate-lg.jpg', 1, SYSUTCDATETIME()
FROM products p
JOIN collection_items ci ON ci.product_id = p.product_id
WHERE p.name = 'Harvest Corn' AND p.item_type = 'Jar Candle Tray (Plate)' AND p.size = 'Large';

INSERT INTO images (collection_item_id, blob_url, is_primary, uploaded_at)
SELECT ci.collection_item_id, 'https://twlimages.blob.core.windows.net/piece-images/pieces/harvest-corn/00088_harvest-corn-jar-shade-lg.jpg', 1, SYSUTCDATETIME()
FROM products p
JOIN collection_items ci ON ci.product_id = p.product_id
WHERE p.name = 'Harvest Corn' AND p.item_type = 'Jar Shade' AND p.size = 'Large';

INSERT INTO images (collection_item_id, blob_url, is_primary, uploaded_at)
SELECT ci.collection_item_id, 'https://twlimages.blob.core.windows.net/piece-images/pieces/harvest-trucks/00089_harvest-trucks-illuma-lid-topper-lg.jpg', 1, SYSUTCDATETIME()
FROM products p
JOIN collection_items ci ON ci.product_id = p.product_id
WHERE p.name = 'Harvest Trucks' AND p.item_type = 'Illuma-Lid Topper' AND p.size = 'Large';

INSERT INTO images (collection_item_id, blob_url, is_primary, uploaded_at)
SELECT ci.collection_item_id, 'https://twlimages.blob.core.windows.net/piece-images/pieces/holiday-paisley/00090_holiday-paisley-jar-candle-tray-plate-lg_1.jpg', 1, SYSUTCDATETIME()
FROM products p
JOIN collection_items ci ON ci.product_id = p.product_id
WHERE p.name = 'Holiday Paisley' AND p.item_type = 'Jar Candle Tray (Plate)' AND p.size = 'Large';

INSERT INTO images (collection_item_id, blob_url, is_primary, uploaded_at)
SELECT ci.collection_item_id, 'https://twlimages.blob.core.windows.net/piece-images/pieces/holiday-paisley/00090_holiday-paisley-jar-candle-tray-plate-lg_2.jpg', 0, SYSUTCDATETIME()
FROM products p
JOIN collection_items ci ON ci.product_id = p.product_id
WHERE p.name = 'Holiday Paisley' AND p.item_type = 'Jar Candle Tray (Plate)' AND p.size = 'Large';

INSERT INTO images (collection_item_id, blob_url, is_primary, uploaded_at)
SELECT ci.collection_item_id, 'https://twlimages.blob.core.windows.net/piece-images/pieces/holiday-paisley/00090_holiday-paisley-jar-candle-tray-plate-lg_3.jpg', 0, SYSUTCDATETIME()
FROM products p
JOIN collection_items ci ON ci.product_id = p.product_id
WHERE p.name = 'Holiday Paisley' AND p.item_type = 'Jar Candle Tray (Plate)' AND p.size = 'Large';

INSERT INTO images (collection_item_id, blob_url, is_primary, uploaded_at)
SELECT ci.collection_item_id, 'https://twlimages.blob.core.windows.net/piece-images/pieces/holiday-paisley/00091_holiday-paisley-jar-shade-lg_1.jpg', 1, SYSUTCDATETIME()
FROM products p
JOIN collection_items ci ON ci.product_id = p.product_id
WHERE p.name = 'Holiday Paisley' AND p.item_type = 'Jar Shade' AND p.size = 'Large';

INSERT INTO images (collection_item_id, blob_url, is_primary, uploaded_at)
SELECT ci.collection_item_id, 'https://twlimages.blob.core.windows.net/piece-images/pieces/holiday-paisley/00091_holiday-paisley-jar-shade-lg_2.jpg', 0, SYSUTCDATETIME()
FROM products p
JOIN collection_items ci ON ci.product_id = p.product_id
WHERE p.name = 'Holiday Paisley' AND p.item_type = 'Jar Shade' AND p.size = 'Large';

INSERT INTO images (collection_item_id, blob_url, is_primary, uploaded_at)
SELECT ci.collection_item_id, 'https://twlimages.blob.core.windows.net/piece-images/pieces/holiday-paisley/00091_holiday-paisley-jar-shade-lg_3.jpg', 0, SYSUTCDATETIME()
FROM products p
JOIN collection_items ci ON ci.product_id = p.product_id
WHERE p.name = 'Holiday Paisley' AND p.item_type = 'Jar Shade' AND p.size = 'Large';

INSERT INTO images (collection_item_id, blob_url, is_primary, uploaded_at)
SELECT ci.collection_item_id, 'https://twlimages.blob.core.windows.net/piece-images/pieces/iced-winter-berry/00092_iced-winter-berry-jar-candle-tray-plate-lg.jpg', 1, SYSUTCDATETIME()
FROM products p
JOIN collection_items ci ON ci.product_id = p.product_id
WHERE p.name = 'Iced Winter Berry' AND p.item_type = 'Jar Candle Tray (Plate)' AND p.size = 'Large';

INSERT INTO images (collection_item_id, blob_url, is_primary, uploaded_at)
SELECT ci.collection_item_id, 'https://twlimages.blob.core.windows.net/piece-images/pieces/iced-winter-berry/00093_iced-winter-berry-jar-shade-lg.jpg', 1, SYSUTCDATETIME()
FROM products p
JOIN collection_items ci ON ci.product_id = p.product_id
WHERE p.name = 'Iced Winter Berry' AND p.item_type = 'Jar Shade' AND p.size = 'Large';

INSERT INTO images (collection_item_id, blob_url, is_primary, uploaded_at)
SELECT ci.collection_item_id, 'https://twlimages.blob.core.windows.net/piece-images/pieces/laundry-day/00094_laundry-day-jar-candle-tray-plate-lg.jpg', 1, SYSUTCDATETIME()
FROM products p
JOIN collection_items ci ON ci.product_id = p.product_id
WHERE p.name = 'Laundry Day' AND p.item_type = 'Jar Candle Tray (Plate)' AND p.size = 'Large';

INSERT INTO images (collection_item_id, blob_url, is_primary, uploaded_at)
SELECT ci.collection_item_id, 'https://twlimages.blob.core.windows.net/piece-images/pieces/laundry-day/00095_laundry-day-jar-shade-lg.jpg', 1, SYSUTCDATETIME()
FROM products p
JOIN collection_items ci ON ci.product_id = p.product_id
WHERE p.name = 'Laundry Day' AND p.item_type = 'Jar Shade' AND p.size = 'Large';

INSERT INTO images (collection_item_id, blob_url, is_primary, uploaded_at)
SELECT ci.collection_item_id, 'https://twlimages.blob.core.windows.net/piece-images/pieces/lighthouse-beach/00096_lighthouse-beach-jar-candle-tray-plate-lg.jpg', 1, SYSUTCDATETIME()
FROM products p
JOIN collection_items ci ON ci.product_id = p.product_id
WHERE p.name = 'Lighthouse Beach' AND p.item_type = 'Jar Candle Tray (Plate)' AND p.size = 'Large';

INSERT INTO images (collection_item_id, blob_url, is_primary, uploaded_at)
SELECT ci.collection_item_id, 'https://twlimages.blob.core.windows.net/piece-images/pieces/lighthouse-beach/00097_lighthouse-beach-jar-shade-lg.jpg', 1, SYSUTCDATETIME()
FROM products p
JOIN collection_items ci ON ci.product_id = p.product_id
WHERE p.name = 'Lighthouse Beach' AND p.item_type = 'Jar Shade' AND p.size = 'Large';

INSERT INTO images (collection_item_id, blob_url, is_primary, uploaded_at)
SELECT ci.collection_item_id, 'https://twlimages.blob.core.windows.net/piece-images/pieces/love/00098_love-illuma-lid-topper-lg.jpg', 1, SYSUTCDATETIME()
FROM products p
JOIN collection_items ci ON ci.product_id = p.product_id
WHERE p.name = 'Love' AND p.item_type = 'Illuma-Lid Topper' AND p.size = 'Large';

INSERT INTO images (collection_item_id, blob_url, is_primary, uploaded_at)
SELECT ci.collection_item_id, 'https://twlimages.blob.core.windows.net/piece-images/pieces/magic-garden/00099_magic-garden-jar-shade-lg.jpg', 1, SYSUTCDATETIME()
FROM products p
JOIN collection_items ci ON ci.product_id = p.product_id
WHERE p.name = 'Magic Garden' AND p.item_type = 'Jar Shade' AND p.size = 'Large';

INSERT INTO images (collection_item_id, blob_url, is_primary, uploaded_at)
SELECT ci.collection_item_id, 'https://twlimages.blob.core.windows.net/piece-images/pieces/night-before-christmas/00100_night-before-christmas-jar-candle-tray-3d-lg.jpg', 1, SYSUTCDATETIME()
FROM products p
JOIN collection_items ci ON ci.product_id = p.product_id
WHERE p.name = 'Night Before Christmas' AND p.item_type = 'Jar Candle Tray (3D)' AND p.size = 'Large';

INSERT INTO images (collection_item_id, blob_url, is_primary, uploaded_at)
SELECT ci.collection_item_id, 'https://twlimages.blob.core.windows.net/piece-images/pieces/north-pole-polar-bears/00101_north-pole-polar-bears-jar-candle-tray-plate.jpg', 1, SYSUTCDATETIME()
FROM products p
JOIN collection_items ci ON ci.product_id = p.product_id
WHERE p.name = 'North Pole Polar Bears' AND p.item_type = 'Jar Candle Tray (Plate)' AND p.size IS NULL;

INSERT INTO images (collection_item_id, blob_url, is_primary, uploaded_at)
SELECT ci.collection_item_id, 'https://twlimages.blob.core.windows.net/piece-images/pieces/north-pole-polar-bears/00102_north-pole-polar-bears-jar-shade.jpg', 1, SYSUTCDATETIME()
FROM products p
JOIN collection_items ci ON ci.product_id = p.product_id
WHERE p.name = 'North Pole Polar Bears' AND p.item_type = 'Jar Shade' AND p.size IS NULL;

INSERT INTO images (collection_item_id, blob_url, is_primary, uploaded_at)
SELECT ci.collection_item_id, 'https://twlimages.blob.core.windows.net/piece-images/pieces/peppermint-snowman/00106_peppermint-snowman-illuma-lid-topper-lg.jpg', 1, SYSUTCDATETIME()
FROM products p
JOIN collection_items ci ON ci.product_id = p.product_id
WHERE p.name = 'Peppermint Snowman' AND p.item_type = 'Illuma-Lid Topper' AND p.size = 'Large';

INSERT INTO images (collection_item_id, blob_url, is_primary, uploaded_at)
SELECT ci.collection_item_id, 'https://twlimages.blob.core.windows.net/piece-images/pieces/peppermint-snowman/00104_peppermint-snowman-jar-candle-tray-3d-lg.jpg', 1, SYSUTCDATETIME()
FROM products p
JOIN collection_items ci ON ci.product_id = p.product_id
WHERE p.name = 'Peppermint Snowman' AND p.item_type = 'Jar Candle Tray (3D)' AND p.size = 'Large';

INSERT INTO images (collection_item_id, blob_url, is_primary, uploaded_at)
SELECT ci.collection_item_id, 'https://twlimages.blob.core.windows.net/piece-images/pieces/peppermint-snowman/00103_peppermint-snowman-jar-candle-tray-plate-lg_1.jpg', 1, SYSUTCDATETIME()
FROM products p
JOIN collection_items ci ON ci.product_id = p.product_id
WHERE p.name = 'Peppermint Snowman' AND p.item_type = 'Jar Candle Tray (Plate)' AND p.size = 'Large';

INSERT INTO images (collection_item_id, blob_url, is_primary, uploaded_at)
SELECT ci.collection_item_id, 'https://twlimages.blob.core.windows.net/piece-images/pieces/peppermint-snowman/00103_peppermint-snowman-jar-candle-tray-plate-lg_2.jpg', 0, SYSUTCDATETIME()
FROM products p
JOIN collection_items ci ON ci.product_id = p.product_id
WHERE p.name = 'Peppermint Snowman' AND p.item_type = 'Jar Candle Tray (Plate)' AND p.size = 'Large';

INSERT INTO images (collection_item_id, blob_url, is_primary, uploaded_at)
SELECT ci.collection_item_id, 'https://twlimages.blob.core.windows.net/piece-images/pieces/peppermint-snowman/00103_peppermint-snowman-jar-candle-tray-plate-lg_3.jpg', 0, SYSUTCDATETIME()
FROM products p
JOIN collection_items ci ON ci.product_id = p.product_id
WHERE p.name = 'Peppermint Snowman' AND p.item_type = 'Jar Candle Tray (Plate)' AND p.size = 'Large';

INSERT INTO images (collection_item_id, blob_url, is_primary, uploaded_at)
SELECT ci.collection_item_id, 'https://twlimages.blob.core.windows.net/piece-images/pieces/peppermint-snowman/00105_peppermint-snowman-jar-shade-lg_1.jpg', 1, SYSUTCDATETIME()
FROM products p
JOIN collection_items ci ON ci.product_id = p.product_id
WHERE p.name = 'Peppermint Snowman' AND p.item_type = 'Jar Shade' AND p.size = 'Large';

INSERT INTO images (collection_item_id, blob_url, is_primary, uploaded_at)
SELECT ci.collection_item_id, 'https://twlimages.blob.core.windows.net/piece-images/pieces/peppermint-snowman/00105_peppermint-snowman-jar-shade-lg_2.jpg', 0, SYSUTCDATETIME()
FROM products p
JOIN collection_items ci ON ci.product_id = p.product_id
WHERE p.name = 'Peppermint Snowman' AND p.item_type = 'Jar Shade' AND p.size = 'Large';

INSERT INTO images (collection_item_id, blob_url, is_primary, uploaded_at)
SELECT ci.collection_item_id, 'https://twlimages.blob.core.windows.net/piece-images/pieces/peppermint-snowman/00105_peppermint-snowman-jar-shade-lg_3.jpg', 0, SYSUTCDATETIME()
FROM products p
JOIN collection_items ci ON ci.product_id = p.product_id
WHERE p.name = 'Peppermint Snowman' AND p.item_type = 'Jar Shade' AND p.size = 'Large';

INSERT INTO images (collection_item_id, blob_url, is_primary, uploaded_at)
SELECT ci.collection_item_id, 'https://twlimages.blob.core.windows.net/piece-images/pieces/pine-cone-berries/00107_pine-cone-berries-jar-shade.jpg', 1, SYSUTCDATETIME()
FROM products p
JOIN collection_items ci ON ci.product_id = p.product_id
WHERE p.name = 'Pine Cone & Berries' AND p.item_type = 'Jar Shade' AND p.size IS NULL;

INSERT INTO images (collection_item_id, blob_url, is_primary, uploaded_at)
SELECT ci.collection_item_id, 'https://twlimages.blob.core.windows.net/piece-images/pieces/pumpkin-pals/00108_pumpkin-pals-jar-candle-tray-plate-lg_1.jpg', 1, SYSUTCDATETIME()
FROM products p
JOIN collection_items ci ON ci.product_id = p.product_id
WHERE p.name = 'Pumpkin Pals' AND p.item_type = 'Jar Candle Tray (Plate)' AND p.size = 'Large';

INSERT INTO images (collection_item_id, blob_url, is_primary, uploaded_at)
SELECT ci.collection_item_id, 'https://twlimages.blob.core.windows.net/piece-images/pieces/pumpkin-pals/00108_pumpkin-pals-jar-candle-tray-plate-lg_2.jpg', 0, SYSUTCDATETIME()
FROM products p
JOIN collection_items ci ON ci.product_id = p.product_id
WHERE p.name = 'Pumpkin Pals' AND p.item_type = 'Jar Candle Tray (Plate)' AND p.size = 'Large';

INSERT INTO images (collection_item_id, blob_url, is_primary, uploaded_at)
SELECT ci.collection_item_id, 'https://twlimages.blob.core.windows.net/piece-images/pieces/pumpkin-pals/00108_pumpkin-pals-jar-candle-tray-plate-lg_3.jpg', 0, SYSUTCDATETIME()
FROM products p
JOIN collection_items ci ON ci.product_id = p.product_id
WHERE p.name = 'Pumpkin Pals' AND p.item_type = 'Jar Candle Tray (Plate)' AND p.size = 'Large';

INSERT INTO images (collection_item_id, blob_url, is_primary, uploaded_at)
SELECT ci.collection_item_id, 'https://twlimages.blob.core.windows.net/piece-images/pieces/pumpkin-pals/00109_pumpkin-pals-jar-shade-lg_1.jpg', 1, SYSUTCDATETIME()
FROM products p
JOIN collection_items ci ON ci.product_id = p.product_id
WHERE p.name = 'Pumpkin Pals' AND p.item_type = 'Jar Shade' AND p.size = 'Large';

INSERT INTO images (collection_item_id, blob_url, is_primary, uploaded_at)
SELECT ci.collection_item_id, 'https://twlimages.blob.core.windows.net/piece-images/pieces/pumpkin-pals/00109_pumpkin-pals-jar-shade-lg_2.jpg', 0, SYSUTCDATETIME()
FROM products p
JOIN collection_items ci ON ci.product_id = p.product_id
WHERE p.name = 'Pumpkin Pals' AND p.item_type = 'Jar Shade' AND p.size = 'Large';

INSERT INTO images (collection_item_id, blob_url, is_primary, uploaded_at)
SELECT ci.collection_item_id, 'https://twlimages.blob.core.windows.net/piece-images/pieces/pumpkin-pals/00109_pumpkin-pals-jar-shade-lg_3.jpg', 0, SYSUTCDATETIME()
FROM products p
JOIN collection_items ci ON ci.product_id = p.product_id
WHERE p.name = 'Pumpkin Pals' AND p.item_type = 'Jar Shade' AND p.size = 'Large';

INSERT INTO images (collection_item_id, blob_url, is_primary, uploaded_at)
SELECT ci.collection_item_id, 'https://twlimages.blob.core.windows.net/piece-images/pieces/pumpkins/00110_pumpkins-illuma-lid-topper-lg.jpg', 1, SYSUTCDATETIME()
FROM products p
JOIN collection_items ci ON ci.product_id = p.product_id
WHERE p.name = 'Pumpkins' AND p.item_type = 'Illuma-Lid Topper' AND p.size = 'Large';

INSERT INTO images (collection_item_id, blob_url, is_primary, uploaded_at)
SELECT ci.collection_item_id, 'https://twlimages.blob.core.windows.net/piece-images/pieces/purple-gem-spiders/00113_purple-gem-spiders-jar-candle-holder-lg.jpg', 1, SYSUTCDATETIME()
FROM products p
JOIN collection_items ci ON ci.product_id = p.product_id
WHERE p.name = 'Purple-Gem Spiders' AND p.item_type = 'Jar Candle Holder' AND p.size = 'Large';

INSERT INTO images (collection_item_id, blob_url, is_primary, uploaded_at)
SELECT ci.collection_item_id, 'https://twlimages.blob.core.windows.net/piece-images/pieces/purple-fruit/00111_purple-fruit-jar-candle-tray-plate-lg_1.jpg', 1, SYSUTCDATETIME()
FROM products p
JOIN collection_items ci ON ci.product_id = p.product_id
WHERE p.name = 'Purple/Fruit' AND p.item_type = 'Jar Candle Tray (Plate)' AND p.size = 'Large';

INSERT INTO images (collection_item_id, blob_url, is_primary, uploaded_at)
SELECT ci.collection_item_id, 'https://twlimages.blob.core.windows.net/piece-images/pieces/purple-fruit/00111_purple-fruit-jar-candle-tray-plate-lg_2.jpg', 0, SYSUTCDATETIME()
FROM products p
JOIN collection_items ci ON ci.product_id = p.product_id
WHERE p.name = 'Purple/Fruit' AND p.item_type = 'Jar Candle Tray (Plate)' AND p.size = 'Large';

INSERT INTO images (collection_item_id, blob_url, is_primary, uploaded_at)
SELECT ci.collection_item_id, 'https://twlimages.blob.core.windows.net/piece-images/pieces/raised-iron-holder/00114_raised-iron-holder-jar-candle-holder-lg.jpg', 1, SYSUTCDATETIME()
FROM products p
JOIN collection_items ci ON ci.product_id = p.product_id
WHERE p.name = 'Raised Iron Holder' AND p.item_type = 'Jar Candle Holder' AND p.size = 'Large';

INSERT INTO images (collection_item_id, blob_url, is_primary, uploaded_at)
SELECT ci.collection_item_id, 'https://twlimages.blob.core.windows.net/piece-images/pieces/red-hibiscus/00115_red-hibiscus-jar-candle-tray-plate.jpg', 1, SYSUTCDATETIME()
FROM products p
JOIN collection_items ci ON ci.product_id = p.product_id
WHERE p.name = 'Red Hibiscus' AND p.item_type = 'Jar Candle Tray (Plate)' AND p.size IS NULL;

INSERT INTO images (collection_item_id, blob_url, is_primary, uploaded_at)
SELECT ci.collection_item_id, 'https://twlimages.blob.core.windows.net/piece-images/pieces/red-hibiscus/00116_red-hibiscus-jar-shade.jpg', 1, SYSUTCDATETIME()
FROM products p
JOIN collection_items ci ON ci.product_id = p.product_id
WHERE p.name = 'Red Hibiscus' AND p.item_type = 'Jar Shade' AND p.size IS NULL;

INSERT INTO images (collection_item_id, blob_url, is_primary, uploaded_at)
SELECT ci.collection_item_id, 'https://twlimages.blob.core.windows.net/piece-images/pieces/scroll-set/00118_scroll-set-illuma-lid-topper-lg.jpg', 1, SYSUTCDATETIME()
FROM products p
JOIN collection_items ci ON ci.product_id = p.product_id
WHERE p.name = 'Scroll Set' AND p.item_type = 'Illuma-Lid Topper' AND p.size = 'Large';

INSERT INTO images (collection_item_id, blob_url, is_primary, uploaded_at)
SELECT ci.collection_item_id, 'https://twlimages.blob.core.windows.net/piece-images/pieces/scroll-set/00117_scroll-set-jar-candle-holder-lg.jpg', 1, SYSUTCDATETIME()
FROM products p
JOIN collection_items ci ON ci.product_id = p.product_id
WHERE p.name = 'Scroll Set' AND p.item_type = 'Jar Candle Holder' AND p.size = 'Large';

INSERT INTO images (collection_item_id, blob_url, is_primary, uploaded_at)
SELECT ci.collection_item_id, 'https://twlimages.blob.core.windows.net/piece-images/pieces/seashell/00120_seashell-illuma-lid-topper-lg.jpg', 1, SYSUTCDATETIME()
FROM products p
JOIN collection_items ci ON ci.product_id = p.product_id
WHERE p.name = 'Seashell' AND p.item_type = 'Illuma-Lid Topper' AND p.size = 'Large';

INSERT INTO images (collection_item_id, blob_url, is_primary, uploaded_at)
SELECT ci.collection_item_id, 'https://twlimages.blob.core.windows.net/piece-images/pieces/seashell/00119_seashell-votive-holder-sm.jpg', 1, SYSUTCDATETIME()
FROM products p
JOIN collection_items ci ON ci.product_id = p.product_id
WHERE p.name = 'Seashell' AND p.item_type = 'Votive Holder' AND p.size = 'Small';

INSERT INTO images (collection_item_id, blob_url, is_primary, uploaded_at)
SELECT ci.collection_item_id, 'https://twlimages.blob.core.windows.net/piece-images/pieces/seaside-holiday/00121_seaside-holiday-jar-candle-tray-plate-lg.jpg', 1, SYSUTCDATETIME()
FROM products p
JOIN collection_items ci ON ci.product_id = p.product_id
WHERE p.name = 'Seaside Holiday' AND p.item_type = 'Jar Candle Tray (Plate)' AND p.size = 'Large';

INSERT INTO images (collection_item_id, blob_url, is_primary, uploaded_at)
SELECT ci.collection_item_id, 'https://twlimages.blob.core.windows.net/piece-images/pieces/seaside-holiday/00122_seaside-holiday-jar-shade-lg.jpg', 1, SYSUTCDATETIME()
FROM products p
JOIN collection_items ci ON ci.product_id = p.product_id
WHERE p.name = 'Seaside Holiday' AND p.item_type = 'Jar Shade' AND p.size = 'Large';

INSERT INTO images (collection_item_id, blob_url, is_primary, uploaded_at)
SELECT ci.collection_item_id, 'https://twlimages.blob.core.windows.net/piece-images/pieces/snowflakes/00125_snowflakes-illuma-lid-topper-lg.jpg', 1, SYSUTCDATETIME()
FROM products p
JOIN collection_items ci ON ci.product_id = p.product_id
WHERE p.name = 'Snowflakes' AND p.item_type = 'Illuma-Lid Topper' AND p.size = 'Large';

INSERT INTO images (collection_item_id, blob_url, is_primary, uploaded_at)
SELECT ci.collection_item_id, 'https://twlimages.blob.core.windows.net/piece-images/pieces/splash-of-rain/00126_splash-of-rain-jar-candle-tray-plate-lg_1.png', 1, SYSUTCDATETIME()
FROM products p
JOIN collection_items ci ON ci.product_id = p.product_id
WHERE p.name = 'Splash of Rain' AND p.item_type = 'Jar Candle Tray (Plate)' AND p.size = 'Large';

INSERT INTO images (collection_item_id, blob_url, is_primary, uploaded_at)
SELECT ci.collection_item_id, 'https://twlimages.blob.core.windows.net/piece-images/pieces/splash-of-rain/00126_splash-of-rain-jar-candle-tray-plate-lg_2.jpg', 0, SYSUTCDATETIME()
FROM products p
JOIN collection_items ci ON ci.product_id = p.product_id
WHERE p.name = 'Splash of Rain' AND p.item_type = 'Jar Candle Tray (Plate)' AND p.size = 'Large';

INSERT INTO images (collection_item_id, blob_url, is_primary, uploaded_at)
SELECT ci.collection_item_id, 'https://twlimages.blob.core.windows.net/piece-images/pieces/splash-of-rain/00126_splash-of-rain-jar-candle-tray-plate-lg_3.jpg', 0, SYSUTCDATETIME()
FROM products p
JOIN collection_items ci ON ci.product_id = p.product_id
WHERE p.name = 'Splash of Rain' AND p.item_type = 'Jar Candle Tray (Plate)' AND p.size = 'Large';

INSERT INTO images (collection_item_id, blob_url, is_primary, uploaded_at)
SELECT ci.collection_item_id, 'https://twlimages.blob.core.windows.net/piece-images/pieces/splash-of-rain/00127_splash-of-rain-jar-shade-lg_1.png', 1, SYSUTCDATETIME()
FROM products p
JOIN collection_items ci ON ci.product_id = p.product_id
WHERE p.name = 'Splash of Rain' AND p.item_type = 'Jar Shade' AND p.size = 'Large';

INSERT INTO images (collection_item_id, blob_url, is_primary, uploaded_at)
SELECT ci.collection_item_id, 'https://twlimages.blob.core.windows.net/piece-images/pieces/splash-of-rain/00127_splash-of-rain-jar-shade-lg_2.jpg', 0, SYSUTCDATETIME()
FROM products p
JOIN collection_items ci ON ci.product_id = p.product_id
WHERE p.name = 'Splash of Rain' AND p.item_type = 'Jar Shade' AND p.size = 'Large';

INSERT INTO images (collection_item_id, blob_url, is_primary, uploaded_at)
SELECT ci.collection_item_id, 'https://twlimages.blob.core.windows.net/piece-images/pieces/splash-of-rain/00127_splash-of-rain-jar-shade-lg_3.jpg', 0, SYSUTCDATETIME()
FROM products p
JOIN collection_items ci ON ci.product_id = p.product_id
WHERE p.name = 'Splash of Rain' AND p.item_type = 'Jar Shade' AND p.size = 'Large';

INSERT INTO images (collection_item_id, blob_url, is_primary, uploaded_at)
SELECT ci.collection_item_id, 'https://twlimages.blob.core.windows.net/piece-images/pieces/spring-pastels/00130_spring-pastels-jar-candle-tray-plate-lg.jpg', 1, SYSUTCDATETIME()
FROM products p
JOIN collection_items ci ON ci.product_id = p.product_id
WHERE p.name = 'Spring Pastels' AND p.item_type = 'Jar Candle Tray (Plate)' AND p.size = 'Large';

INSERT INTO images (collection_item_id, blob_url, is_primary, uploaded_at)
SELECT ci.collection_item_id, 'https://twlimages.blob.core.windows.net/piece-images/pieces/spring-pastels/00131_spring-pastels-jar-shade-lg.jpg', 1, SYSUTCDATETIME()
FROM products p
JOIN collection_items ci ON ci.product_id = p.product_id
WHERE p.name = 'Spring Pastels' AND p.item_type = 'Jar Shade' AND p.size = 'Large';

INSERT INTO images (collection_item_id, blob_url, is_primary, uploaded_at)
SELECT ci.collection_item_id, 'https://twlimages.blob.core.windows.net/piece-images/pieces/strawberry-basket/00132_strawberry-basket-jar-candle-tray-plate-lg.jpg', 1, SYSUTCDATETIME()
FROM products p
JOIN collection_items ci ON ci.product_id = p.product_id
WHERE p.name = 'Strawberry Basket' AND p.item_type = 'Jar Candle Tray (Plate)' AND p.size = 'Large';

INSERT INTO images (collection_item_id, blob_url, is_primary, uploaded_at)
SELECT ci.collection_item_id, 'https://twlimages.blob.core.windows.net/piece-images/pieces/strawberry-basket/00133_strawberry-basket-jar-shade-lg_1.jpg', 1, SYSUTCDATETIME()
FROM products p
JOIN collection_items ci ON ci.product_id = p.product_id
WHERE p.name = 'Strawberry Basket' AND p.item_type = 'Jar Shade' AND p.size = 'Large';

INSERT INTO images (collection_item_id, blob_url, is_primary, uploaded_at)
SELECT ci.collection_item_id, 'https://twlimages.blob.core.windows.net/piece-images/pieces/strawberry-basket/00133_strawberry-basket-jar-shade-lg_2.jpg', 0, SYSUTCDATETIME()
FROM products p
JOIN collection_items ci ON ci.product_id = p.product_id
WHERE p.name = 'Strawberry Basket' AND p.item_type = 'Jar Shade' AND p.size = 'Large';

INSERT INTO images (collection_item_id, blob_url, is_primary, uploaded_at)
SELECT ci.collection_item_id, 'https://twlimages.blob.core.windows.net/piece-images/pieces/summer-patio/00134_summer-patio-jar-candle-tray-plate.jpg', 1, SYSUTCDATETIME()
FROM products p
JOIN collection_items ci ON ci.product_id = p.product_id
WHERE p.name = 'Summer Patio' AND p.item_type = 'Jar Candle Tray (Plate)' AND p.size IS NULL;

INSERT INTO images (collection_item_id, blob_url, is_primary, uploaded_at)
SELECT ci.collection_item_id, 'https://twlimages.blob.core.windows.net/piece-images/pieces/summer-patio/00135_summer-patio-jar-shade.jpg', 1, SYSUTCDATETIME()
FROM products p
JOIN collection_items ci ON ci.product_id = p.product_id
WHERE p.name = 'Summer Patio' AND p.item_type = 'Jar Shade' AND p.size IS NULL;

INSERT INTO images (collection_item_id, blob_url, is_primary, uploaded_at)
SELECT ci.collection_item_id, 'https://twlimages.blob.core.windows.net/piece-images/pieces/summer-scoop/00136_summer-scoop-jar-candle-tray-plate-lg.jpg', 1, SYSUTCDATETIME()
FROM products p
JOIN collection_items ci ON ci.product_id = p.product_id
WHERE p.name = 'Summer Scoop' AND p.item_type = 'Jar Candle Tray (Plate)' AND p.size = 'Large';

INSERT INTO images (collection_item_id, blob_url, is_primary, uploaded_at)
SELECT ci.collection_item_id, 'https://twlimages.blob.core.windows.net/piece-images/pieces/sunflower-picnic/00140_sunflower-picnic-jar-candle-tray-plate-lg_1.jpg', 1, SYSUTCDATETIME()
FROM products p
JOIN collection_items ci ON ci.product_id = p.product_id
WHERE p.name = 'Sunflower Picnic' AND p.item_type = 'Jar Candle Tray (Plate)' AND p.size = 'Large';

INSERT INTO images (collection_item_id, blob_url, is_primary, uploaded_at)
SELECT ci.collection_item_id, 'https://twlimages.blob.core.windows.net/piece-images/pieces/sunflower-picnic/00140_sunflower-picnic-jar-candle-tray-plate-lg_2.jpg', 0, SYSUTCDATETIME()
FROM products p
JOIN collection_items ci ON ci.product_id = p.product_id
WHERE p.name = 'Sunflower Picnic' AND p.item_type = 'Jar Candle Tray (Plate)' AND p.size = 'Large';

INSERT INTO images (collection_item_id, blob_url, is_primary, uploaded_at)
SELECT ci.collection_item_id, 'https://twlimages.blob.core.windows.net/piece-images/pieces/sunflower-picnic/00140_sunflower-picnic-jar-candle-tray-plate-lg_3.jpg', 0, SYSUTCDATETIME()
FROM products p
JOIN collection_items ci ON ci.product_id = p.product_id
WHERE p.name = 'Sunflower Picnic' AND p.item_type = 'Jar Candle Tray (Plate)' AND p.size = 'Large';

INSERT INTO images (collection_item_id, blob_url, is_primary, uploaded_at)
SELECT ci.collection_item_id, 'https://twlimages.blob.core.windows.net/piece-images/pieces/sunflower-picnic/00141_sunflower-picnic-jar-shade-lg_1.jpg', 1, SYSUTCDATETIME()
FROM products p
JOIN collection_items ci ON ci.product_id = p.product_id
WHERE p.name = 'Sunflower Picnic' AND p.item_type = 'Jar Shade' AND p.size = 'Large';

INSERT INTO images (collection_item_id, blob_url, is_primary, uploaded_at)
SELECT ci.collection_item_id, 'https://twlimages.blob.core.windows.net/piece-images/pieces/sunflower-picnic/00141_sunflower-picnic-jar-shade-lg_2.jpg', 0, SYSUTCDATETIME()
FROM products p
JOIN collection_items ci ON ci.product_id = p.product_id
WHERE p.name = 'Sunflower Picnic' AND p.item_type = 'Jar Shade' AND p.size = 'Large';

INSERT INTO images (collection_item_id, blob_url, is_primary, uploaded_at)
SELECT ci.collection_item_id, 'https://twlimages.blob.core.windows.net/piece-images/pieces/sunflower-picnic/00141_sunflower-picnic-jar-shade-lg_3.jpg', 0, SYSUTCDATETIME()
FROM products p
JOIN collection_items ci ON ci.product_id = p.product_id
WHERE p.name = 'Sunflower Picnic' AND p.item_type = 'Jar Shade' AND p.size = 'Large';

INSERT INTO images (collection_item_id, blob_url, is_primary, uploaded_at)
SELECT ci.collection_item_id, 'https://twlimages.blob.core.windows.net/piece-images/pieces/toucan/00143_toucan-jar-candle-tray-plate-sm.jpg', 1, SYSUTCDATETIME()
FROM products p
JOIN collection_items ci ON ci.product_id = p.product_id
WHERE p.name = 'Toucan' AND p.item_type = 'Jar Candle Tray (Plate)' AND p.size = 'Small';

INSERT INTO images (collection_item_id, blob_url, is_primary, uploaded_at)
SELECT ci.collection_item_id, 'https://twlimages.blob.core.windows.net/piece-images/pieces/toucan/00144_toucan-jar-shade-lg_1.jpg', 1, SYSUTCDATETIME()
FROM products p
JOIN collection_items ci ON ci.product_id = p.product_id
WHERE p.name = 'Toucan' AND p.item_type = 'Jar Shade' AND p.size = 'Large';

INSERT INTO images (collection_item_id, blob_url, is_primary, uploaded_at)
SELECT ci.collection_item_id, 'https://twlimages.blob.core.windows.net/piece-images/pieces/toucan/00144_toucan-jar-shade-lg_2.jpg', 0, SYSUTCDATETIME()
FROM products p
JOIN collection_items ci ON ci.product_id = p.product_id
WHERE p.name = 'Toucan' AND p.item_type = 'Jar Shade' AND p.size = 'Large';

INSERT INTO images (collection_item_id, blob_url, is_primary, uploaded_at)
SELECT ci.collection_item_id, 'https://twlimages.blob.core.windows.net/piece-images/pieces/toucan/00145_toucan-jar-shade-sm.jpg', 1, SYSUTCDATETIME()
FROM products p
JOIN collection_items ci ON ci.product_id = p.product_id
WHERE p.name = 'Toucan' AND p.item_type = 'Jar Shade' AND p.size = 'Small';

INSERT INTO images (collection_item_id, blob_url, is_primary, uploaded_at)
SELECT ci.collection_item_id, 'https://twlimages.blob.core.windows.net/piece-images/pieces/twilight-dusk/00146_twilight-dusk-jar-candle-tray-plate-lg.jpg', 1, SYSUTCDATETIME()
FROM products p
JOIN collection_items ci ON ci.product_id = p.product_id
WHERE p.name = 'Twilight Dusk' AND p.item_type = 'Jar Candle Tray (Plate)' AND p.size = 'Large';

INSERT INTO images (collection_item_id, blob_url, is_primary, uploaded_at)
SELECT ci.collection_item_id, 'https://twlimages.blob.core.windows.net/piece-images/pieces/twilight-dusk/00147_twilight-dusk-jar-shade-lg.jpg', 1, SYSUTCDATETIME()
FROM products p
JOIN collection_items ci ON ci.product_id = p.product_id
WHERE p.name = 'Twilight Dusk' AND p.item_type = 'Jar Shade' AND p.size = 'Large';

INSERT INTO images (collection_item_id, blob_url, is_primary, uploaded_at)
SELECT ci.collection_item_id, 'https://twlimages.blob.core.windows.net/piece-images/pieces/vacationing-friends/00148_vacationing-friends-jar-candle-tray-3d-lg.jpg', 1, SYSUTCDATETIME()
FROM products p
JOIN collection_items ci ON ci.product_id = p.product_id
WHERE p.name = 'Vacationing Friends' AND p.item_type = 'Jar Candle Tray (3D)' AND p.size = 'Large';

INSERT INTO images (collection_item_id, blob_url, is_primary, uploaded_at)
SELECT ci.collection_item_id, 'https://twlimages.blob.core.windows.net/piece-images/pieces/vintage-wine/00150_vintage-wine-jar-candle-tray-3d-lg.jpg', 1, SYSUTCDATETIME()
FROM products p
JOIN collection_items ci ON ci.product_id = p.product_id
WHERE p.name = 'Vintage Wine' AND p.item_type = 'Jar Candle Tray (3D)' AND p.size = 'Large';

INSERT INTO images (collection_item_id, blob_url, is_primary, uploaded_at)
SELECT ci.collection_item_id, 'https://twlimages.blob.core.windows.net/piece-images/pieces/vintage-wine/00149_vintage-wine-jar-candle-tray-plate-lg.jpg', 1, SYSUTCDATETIME()
FROM products p
JOIN collection_items ci ON ci.product_id = p.product_id
WHERE p.name = 'Vintage Wine' AND p.item_type = 'Jar Candle Tray (Plate)' AND p.size = 'Large';

INSERT INTO images (collection_item_id, blob_url, is_primary, uploaded_at)
SELECT ci.collection_item_id, 'https://twlimages.blob.core.windows.net/piece-images/pieces/vintage-wine/00151_vintage-wine-jar-shade-lg.jpg', 1, SYSUTCDATETIME()
FROM products p
JOIN collection_items ci ON ci.product_id = p.product_id
WHERE p.name = 'Vintage Wine' AND p.item_type = 'Jar Shade' AND p.size = 'Large';

INSERT INTO images (collection_item_id, blob_url, is_primary, uploaded_at)
SELECT ci.collection_item_id, 'https://twlimages.blob.core.windows.net/piece-images/pieces/vinyard/00152_vinyard-jar-candle-tray-plate-lg.jpg', 1, SYSUTCDATETIME()
FROM products p
JOIN collection_items ci ON ci.product_id = p.product_id
WHERE p.name = 'Vinyard' AND p.item_type = 'Jar Candle Tray (Plate)' AND p.size = 'Large';

INSERT INTO images (collection_item_id, blob_url, is_primary, uploaded_at)
SELECT ci.collection_item_id, 'https://twlimages.blob.core.windows.net/piece-images/pieces/wildflower-crackle/00153_wildflower-crackle-jar-candle-tray-plate-lg.jpg', 1, SYSUTCDATETIME()
FROM products p
JOIN collection_items ci ON ci.product_id = p.product_id
WHERE p.name = 'Wildflower Crackle' AND p.item_type = 'Jar Candle Tray (Plate)' AND p.size = 'Large';

INSERT INTO images (collection_item_id, blob_url, is_primary, uploaded_at)
SELECT ci.collection_item_id, 'https://twlimages.blob.core.windows.net/piece-images/pieces/wildflower-crackle/00154_wildflower-crackle-jar-shade-lg.jpg', 1, SYSUTCDATETIME()
FROM products p
JOIN collection_items ci ON ci.product_id = p.product_id
WHERE p.name = 'Wildflower Crackle' AND p.item_type = 'Jar Shade' AND p.size = 'Large';

INSERT INTO images (collection_item_id, blob_url, is_primary, uploaded_at)
SELECT ci.collection_item_id, 'https://twlimages.blob.core.windows.net/piece-images/pieces/wildflowers/00156_wildflowers-jar-candle-tray-plate-lg.jpg', 1, SYSUTCDATETIME()
FROM products p
JOIN collection_items ci ON ci.product_id = p.product_id
WHERE p.name = 'Wildflowers' AND p.item_type = 'Jar Candle Tray (Plate)' AND p.size = 'Large';

INSERT INTO images (collection_item_id, blob_url, is_primary, uploaded_at)
SELECT ci.collection_item_id, 'https://twlimages.blob.core.windows.net/piece-images/pieces/wildflowers/00157_wildflowers-jar-shade-lg.jpg', 1, SYSUTCDATETIME()
FROM products p
JOIN collection_items ci ON ci.product_id = p.product_id
WHERE p.name = 'Wildflowers' AND p.item_type = 'Jar Shade' AND p.size = 'Large';

INSERT INTO images (collection_item_id, blob_url, is_primary, uploaded_at)
SELECT ci.collection_item_id, 'https://twlimages.blob.core.windows.net/piece-images/pieces/winter-bird-crackle/00160_winter-bird-crackle-jar-candle-tray-plate-lg.jpg', 1, SYSUTCDATETIME()
FROM products p
JOIN collection_items ci ON ci.product_id = p.product_id
WHERE p.name = 'Winter Bird Crackle' AND p.item_type = 'Jar Candle Tray (Plate)' AND p.size = 'Large';

INSERT INTO images (collection_item_id, blob_url, is_primary, uploaded_at)
SELECT ci.collection_item_id, 'https://twlimages.blob.core.windows.net/piece-images/pieces/winter-bird-crackle/00161_winter-bird-crackle-jar-shade-lg.jpg', 1, SYSUTCDATETIME()
FROM products p
JOIN collection_items ci ON ci.product_id = p.product_id
WHERE p.name = 'Winter Bird Crackle' AND p.item_type = 'Jar Shade' AND p.size = 'Large';

INSERT INTO images (collection_item_id, blob_url, is_primary, uploaded_at)
SELECT ci.collection_item_id, 'https://twlimages.blob.core.windows.net/piece-images/pieces/winter-forest-crackle/00162_winter-forest-crackle-jar-candle-tray-plate-lg.jpg', 1, SYSUTCDATETIME()
FROM products p
JOIN collection_items ci ON ci.product_id = p.product_id
WHERE p.name = 'Winter Forest Crackle' AND p.item_type = 'Jar Candle Tray (Plate)' AND p.size = 'Large';

INSERT INTO images (collection_item_id, blob_url, is_primary, uploaded_at)
SELECT ci.collection_item_id, 'https://twlimages.blob.core.windows.net/piece-images/pieces/winter-forest-crackle/00163_winter-forest-crackle-jar-shade-lg.jpg', 1, SYSUTCDATETIME()
FROM products p
JOIN collection_items ci ON ci.product_id = p.product_id
WHERE p.name = 'Winter Forest Crackle' AND p.item_type = 'Jar Shade' AND p.size = 'Large';

INSERT INTO images (collection_item_id, blob_url, is_primary, uploaded_at)
SELECT ci.collection_item_id, 'https://twlimages.blob.core.windows.net/piece-images/pieces/xmas-stockings/00165_xmas-stockings-illuma-lid-topper-lg.jpg', 1, SYSUTCDATETIME()
FROM products p
JOIN collection_items ci ON ci.product_id = p.product_id
WHERE p.name = 'Xmas Stockings' AND p.item_type = 'Illuma-Lid Topper' AND p.size = 'Large';
