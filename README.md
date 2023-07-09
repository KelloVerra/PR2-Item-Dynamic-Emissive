# PR2 Item Dynamic Emissive
A Proof Of Concept Utility Resource Pack that serves to enable dynamic emissive!

# Requirements
- To Disable Default Minecraft Face Shading, requires Overriding any kind of leather armor (helmet, leggings, boots, chestplate or horse_armor)


# Disable Default Minecraft Shading
### Default minecraft shading can be annoying especially if you want to make an emissive model or you just want some style! The upside of this method is that it still preserves the light level, so if you want to made an entire model emissive, just set the block & sky brightness to 15

- Begin by setting the tint-index on all the faces of your preferred model to `0` *(See minecraft:item/shroomlight)*
- Then override any kind of leather armor's custom model data to your preferred model *(See minecraft:item/leather_boots)*
- Get the overrided leather armor **AND set the display color to** `#20240f` / `2106383`

### Ingame Example (Shroomlight Decoy)
(Left) `/summon minecraft:item_display ~ ~ ~ {item:{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:16777215},CustomModelData:1}}}`

(Middle) `/summon minecraft:item_display ~ ~ ~ {item:{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:2106383},CustomModelData:1}}}`

(Right) `/summon minecraft:item_display ~ ~ ~ {item:{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:2106383},CustomModelData:1}},brightness:{block:15,sky:15}}`

![image](https://github.com/KelloVerra/PR2-Item-Dynamic-Emissive/assets/71198584/0ee59725-b9cc-49ff-bb98-89fc21b6168f)




# Dynamic Texture Emissivity
### This type of emissivity doesnt necessarrily require disabling the minecraft default shading, Its another way to enable emmisivity to a certain area on the texture.

- Open up your preferred texture 
- Select parts that you want to make emissive
- Set the alpha/transparency to `254` *(See minecraft:block/matrix_cube or minecraft:block/matrix_cube_entire)*

### Ingame Example (Matrix Cube)
(Left) `/summon item_display ~ ~ ~ {item:{id:"minecraft:ice",Count:1b,tag:{CustomModelData:1}}}`

(Middle) `/summon item_display ~ ~ ~ {item:{id:"minecraft:ice",Count:1b,tag:{CustomModelData:2}}}`

(Right) `/summon item_display ~ ~ ~ {item:{id:"minecraft:ice",Count:1b,tag:{CustomModelData:3}}}`

![image](https://github.com/KelloVerra/PR2-Item-Dynamic-Emissive/assets/71198584/178aabc6-1976-4687-9034-bc4fff514884)

## Extra feature
When it comes for translucent/transparent texture, it might gets quite difficult to get a pixel with an alpha below 24/255 since minecraft discard anything with an alpha below it, Ive lowered the limit to 1/255 to preserve details, **you are free to modify the limit** *(See minecraft:shaders/core/rendertype_entity_translucent_cull.fsh)*.

Tips : Make sure to `/time set midnight` !
