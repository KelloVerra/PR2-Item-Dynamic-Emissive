# PR2-Item-Dynamic-Emissive
A Proof Of Concept Utility Resource Pack that serves to enable dynamic emissive!

# Requirements
- (To Disable Default Minecraft Shading) Overriding a leather armor (helmet,leggings,boots,chestplate,horse_armor)


# Disable Default Minecraft Shading
Default minecraft shading can be annoying especially if you want to make an emissive model or you just want some style!
The upside of this method is that it still preserves the light level, so if you want to made an entire model emissive, just set the block & sky brightness to 15
- Begin by setting the tint-index on all of your faces of your preferred model to `0` (See minecraft:item/shroomlight)
- Then override a leather armor's custom model data to your preferred model (See minecraft:item/leather_boots)
- Get the overrided leather armor AND set the display color to `#20240f` / `2106383`
Ingame Example (Shadeless Shroomlight) : `/summon minecraft:item_display ~ ~ ~ {item:{id:"minecraft:leather_horse_armor",Count:1b,tag:{display:{color:2106383},CustomModelData:1}}}`



# Dynamic Texture Emissivity
This type off emissivity doesnt necessarrily require disabling the minecraft default shading, its a way to enable emmisivity to a certain area on the texture
- Open up your preferred texture 
- Select parts that you want to make emissive
- Set the alpha/transparency to `254` (See minecraft:block/ice for proof of concept)
Ingame Example (Matrix Cube) : `/summon item_display ~ ~ ~ {item:{id:"minecraft:ice",Count:1b,tag:{CustomModelData:1}}}`
