USE DecathlonMarketing;
GO

SELECT
    SUM(impressions) AS Impressions,
    SUM(clicks) AS Clicks,
    SUM(sessions) AS Sessions,
    SUM(add_to_cart) AS Add_To_Cart,
    SUM(begin_checkout) AS Checkouts,
    SUM(purchase) AS Purchases,

    ROUND(
        100.0 * SUM(clicks)
        / NULLIF(SUM(impressions), 0),
        2
    ) AS Impression_to_Click_Percent,

    ROUND(
        100.0 * SUM(sessions)
        / NULLIF(SUM(clicks), 0),
        2
    ) AS Click_to_Session_Percent,

    ROUND(
        100.0 * SUM(add_to_cart)
        / NULLIF(SUM(sessions), 0),
        2
    ) AS Session_to_Cart_Percent,

    ROUND(
        100.0 * SUM(begin_checkout)
        / NULLIF(SUM(add_to_cart), 0),
        2
    ) AS Cart_to_Checkout_Percent,

    ROUND(
        100.0 * SUM(purchase)
        / NULLIF(SUM(begin_checkout), 0),
        2
    ) AS Checkout_to_Purchase_Percent,

    ROUND(
        100.0 * SUM(purchase)
        / NULLIF(SUM(sessions), 0),
        2
    ) AS Overall_Conversion_Rate_Percent

FROM dbo.CampaignPerformance;
