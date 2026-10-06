{{ config(
    severity='warn'
) }}

{% set configs = [
    {
        "table" : "AIRBNB.GOLD.DIM_BOOKINGS",
        "columns" :"",
        "join_condition" : ""
    },
    
    {
        "table" : "AIRBNB.GOLD.DIM_LISTINGS",
        "columns" :"",
        "join_condition" : "DIM_LISTINGS.LISTING_ID = DIM_BOOKINGS.LISTING_ID"
    },
    
    {
        "table" : "AIRBNB.GOLD.DIM_HOSTS",
        "columns" :"",
        "alias" : "DIM_HOSTS",
        "join_condition" : "DIM_HOSTS.HOST_ID = DIM_LISTINGS.HOST_ID"
    }
] %}

SELECT
1
FROM {{source('staging','bookings')}}
WHERE BOOKING_AMOUNT < 200