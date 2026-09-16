# The Wax Ledger — Project Log

## Summary

The Wax Ledger is Guy's Yankee Candle collection catalog, migrated from a single static HTML file into an Azure SQL + Blob Storage backend, with this repo as the GitHub backup/tracked-history copy.

**Architecture**
- Azure SQL Database `twl-db` (server `twl`, Central US, free serverless tier), resource group `twl-rg`
- Tables: `products` (1 row per distinct piece/variant), `collection_items` (1 row per acquisition, FK to products), `images` (1 row per photo, FK to collection_items, stores blob URL), `coupon_codes`
- Azure Storage account `twlimages`, blob container `piece-images` (anonymous read), path pattern `pieces/<name-slug>/<filename>`
- This repo mirrors the SQL migration scripts and the renamed image set as a GitHub backup

**Current status (2026-09-16)**
- 165 products migrated into `products` + `collection_items`
- 161 of 165 product photos renamed to sequential IDs, uploaded to Azure Blob Storage, and linked to `collection_items` via `images`
- `coupon_codes` table created with 8 real codes
- Fixed: 30 duplicate `collection_items` rows (from a partial failed run of 02 being re-run in full) — cleaned up along with their duplicate `images` rows
- 33 products still have no photo (not blocking)

## Repo contents
- `sql/` — migration scripts, run in order via Azure Query editor
  - `01_migrate_products.sql` — 165 products
  - `02_migrate_collection_items.sql` — acquisition records
  - `03_coupon_codes.sql` — coupon_codes table + 8 codes
  - `04_migrate_images.sql` — links blob URLs to collection_items
  - `05_fix_duplicate_collection_items.sql` — dedup fix
- `images/pieces/<name-slug>/<filename>` — 161 renamed photos, same structure as the Azure blob container
- `index.html` — original single-file HTML catalog (pre-migration)

## Changelog

**2026-09-16**
- Discovered and fixed 30 duplicate `collection_items` rows + their duplicate `images` rows (05_fix_duplicate_collection_items.sql)
- Confirmed all 161 images uploaded to Azure Blob Storage and linked in `images` table (165 collection_items, 161 images)
- Set up this GitHub repo as the tracked backup for SQL scripts + images + this log

**2026-09-15**
- Created Azure SQL server/database, storage account, blob container, 3-table schema
- Migrated 165 products + collection_items (01, 02)
- Added new product "Fork and Spoon Jar Holder" (Vinted purchase) with two photos (owned + listing)
- Created `coupon_codes` table with 8 real codes (03)
- Renamed and organized 161 piece photos by set → item type → size
- Resolved photo/size ambiguities for Gardening Bee, Harvest Bounty, Toucan, Acorn/Fall Foliage

## Open items
- Enrich `BB2609001` coupon_codes row with full offer details from photographed coupon
- Add `coupon_images` table + separate Azure/GitHub storage for coupon photos
- Research Yankee Candle's fragranced product-format lineup (votive, wax melt, spray, jar sizes, pillar, ScentPlug, car jar, vent clip, etc.) and design a `scents` + product-format schema
- Design Azure Functions API layer so the HTML frontend can query Azure SQL instead of embedded data
