CREATE TABLE coupon_codes (
    coupon_id    INT IDENTITY(1,1) PRIMARY KEY,
    code         NVARCHAR(50) NOT NULL,
    description  NVARCHAR(500),
    date_added   DATETIME2 NOT NULL,
    exp_date     DATE,
    is_active    BIT DEFAULT 1,
    created_at   DATETIME2 DEFAULT SYSUTCDATETIME()
);

INSERT INTO coupon_codes (code, description, date_added, exp_date) VALUES
('PLUG3',             'ScentPlug Refills for $3 each',       '2026-09-15 16:02:00', NULL),
('DM2609001',         NULL,                                    '2026-09-15 16:02:00', NULL),
('BONEBURY60',        NULL,                                    '2026-09-15 16:02:00', NULL),
('BB2609001',         '$15 Large Candles, full price only',   '2026-09-15 16:04:00', '2026-10-07'),
('DM2602001',         NULL,                                    '2026-09-15 16:36:00', NULL),
('MONDAY',            NULL,                                    '2026-09-15 16:37:00', NULL),
('WE150-DLMYE7KZAI',  NULL,                                    '2026-09-15 16:37:00', NULL),
('B23G23',            NULL,                                    '2026-09-15 16:37:00', NULL);
