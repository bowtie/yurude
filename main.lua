--- STEAMODDED HEADER
--- MOD_NAME: Yuru Camp
--- MOD_ID: yuru_camp
--- MOD_AUTHOR: [#!++]
--- MOD_DESCRIPTION: Yuru Camp Deck
--- LOADER_VERSION_GEQ: 1.0.0
--- VERSION: 1.0.0
--- BADGE_COLOR: F18F43

-----------------------------------------------------------
-- Deck 1: Original Yuru Camp Deck
-----------------------------------------------------------

local suits = { 'hearts', 'clubs', 'diamonds', 'spades' }
local ranks = { 'Jack', 'Queen', "King" }

local yc_key = 'yuru_atlas'
local yc_path = 'YuruCampDeck.png'
local yc_path_hc = 'HighContrastYuruCamp.png'
local yc_description = 'Yuru Camp'

SMODS.Atlas {
    key = yc_key .. '_lc',
    px = 71,
    py = 95,
    path = yc_path,
    prefix_config = { key = false },
}
if yc_path_hc then
    SMODS.Atlas {
        key = yc_key .. '_hc',
        px = 71,
        py = 95,
        path = yc_path_hc,
        prefix_config = { key = false },
    }
end

for _, suit in ipairs(suits) do
    SMODS.DeckSkin {
        key = suit .. "_skin",
        suit = suit:gsub("^%l", string.upper),
        ranks = ranks,
        lc_atlas = yc_key .. '_lc',
        hc_atlas = yc_path_hc and yc_key .. '_hc' or yc_key .. '_lc',
        loc_txt = { ['en-us'] = yc_description },
        posStyle = 'deck'
    }
end

-----------------------------------------------------------
-- Deck 2: Yuru Camp Party Deck
-----------------------------------------------------------

local ycp_key = 'yuru_party_atlas'
local ycp_path = 'YuruCampDeckParty.png'
local ycp_path_hc = 'HighContrastYuruCampParty.png'
local ycp_description = 'Yuru Camp Party'

SMODS.Atlas {
    key = ycp_key .. '_lc',
    px = 71,
    py = 95,
    path = ycp_path,
    prefix_config = { key = false },
}
if ycp_path_hc then
    SMODS.Atlas {
        key = ycp_key .. '_hc',
        px = 71,
        py = 95,
        path = ycp_path_hc,
        prefix_config = { key = false },
    }
end

for _, suit in ipairs(suits) do
    SMODS.DeckSkin {
        key = suit .. "_party_skin",
        suit = suit:gsub("^%l", string.upper),
        ranks = ranks,
        lc_atlas = ycp_key .. '_lc',
        hc_atlas = ycp_path_hc and ycp_key .. '_hc' or ycp_key .. '_lc',
        loc_txt = { ['en-us'] = ycp_description },
        posStyle = 'deck'
    }
end
