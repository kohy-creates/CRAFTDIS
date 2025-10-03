execute in craftdis:craftdis run setblock 8 100 8 minecraft:structure_block[mode=load]{author:"kohara_",components:{},ignoreEntities:0b,integrity:1.0f,metadata:"",mirror:"NONE",mode:"LOAD",name:"craftdis:craftdis",posX:-16,posY:-8,posZ:-20,powered:0b,rotation:"NONE",seed:0L,showair:0b,showboundingbox:1b,sizeX:31,sizeY:16,sizeZ:40,strict:0b}
execute in craftdis:craftdis run setblock 8 101 8 redstone_block
execute in craftdis:craftdis run fill 8 100 8 8 101 8 light_blue_stained_glass replace

# Fuel
setblock 8 97 6 minecraft:dispenser[facing=down]{Items:[{id:"redstone_block",count:3,Slot:0}]}

# Destination
setblock 8 97 10 minecraft:dispenser[facing=down]

summon marker -5.5 97.001 8.5 {Tags:["craftdis", "craftdis.exit"]}
