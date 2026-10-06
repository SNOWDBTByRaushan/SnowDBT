{{config(
    materialized='ephemeral'
)}}


WITH listings AS
(
SELECT
LISTING_ID,
PROPERTY_TYPE,
ROOM_TYPE,
CITY,
COUNTRY,
--ACCOMMODATES,
--BATHROOMS,
--BEDROOMS,
PRICE_PER_NIGHT_TAG,
LISTING_CREATED_AT
FROM {{ref('obt')}}
)Select * from listings