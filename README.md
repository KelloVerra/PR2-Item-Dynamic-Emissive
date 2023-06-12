# PR2-Item-Dynamic-Emissive
A Proof Of Concept Resource Pack that includes an item (only) dynamic emissive shader!

# Requirements
- Overriding a leather armor (helmet,leggings,boots,chestplate,horse_armor)


# Disable shading
At the start it seems like nothing has changed much;
- Begin by setting the tint-index on all of your faces of your preferred model to `0` (See minecraft:item/shroomlight)
- Then override a leather armor's custom model data to your preferred model (See minecraft:item/leather_boots)
- Get the overrided leather armor AND set the display color to `#20240f` / `2106383`
Ingame Example : `/summon minecraft:item_display ~ ~ ~ {item:{id:"minecraft:leather_horse_armor",Count:1b,tag:{display:{color:2106383},CustomModelData:1}}}`



# Dynamic emissive-ness
- Open up your preferred texture 
- Select parts that you want to make emissive
- Set the alpha/transparency to `254` (See minecraft:block/ice for proof of concept)
Ingame Example : `/summon item_display ~ ~ ~ {item:{id:"minecraft:ice",Count:1b}}`
