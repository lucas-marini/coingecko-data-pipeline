CREATE DATABASE crypto;
GO

USE crypto;
GO

CREATE TABLE crypto_prices
(
  id INT IDENTITY(1,1) PRIMARY KEY,
  coin_id VARCHAR(50),
  price_usd DECIMAL(18,8),
  market_cap DECIMAL(18,2),
  volume_24h DECIMAL(18,2),
  collected_at DATETIME
);
