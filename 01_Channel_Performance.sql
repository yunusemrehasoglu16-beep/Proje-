USE DecathlonMarketing;
GO

SELECT
    channel,

    SUM(impressions) AS Impressions,

    SUM(clicks) AS Clicks,

    ROUND(
        100.0 * SUM(clicks)
        / NULLIF(SUM(impressions), 0),
        2
    ) AS CTR_Percent,

    ROUND(
        SUM(spend_tl)
        / NULLIF(SUM(clicks), 0),
        2
    ) AS CPC_TL,

    SUM(add_to_cart) AS Add_To_Cart,

    SUM(begin_checkout) AS Checkouts,

    SUM(purchase) AS Purchases,

    ROUND(
        100.0 * SUM(purchase)
        / NULLIF(SUM(sessions), 0),
        2
    ) AS Conversion_Rate_Percent,

    ROUND(
        SUM(spend_tl)
        / NULLIF(SUM(purchase), 0),
        2
    ) AS CPA_TL,

    SUM(revenue_tl) AS Revenue_TL,

    ROUND(
        SUM(revenue_tl)
        / NULLIF(SUM(spend_tl), 0),
        2
    ) AS ROAS

FROM dbo.CampaignPerformance

GROUP BY channel

ORDER BY ROAS DESC;s