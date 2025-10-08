execute if biome ~ ~ ~ craftdis:redstone/none run return 0

execute if biome ~ ~ ~ craftdis:redstone/low if predicate {condition:"random_chance",chance:0.75} run return 1
execute if biome ~ ~ ~ craftdis:redstone/medium if predicate {condition:"random_chance",chance:0.5} run return 1
execute if biome ~ ~ ~ craftdis:redstone/high if predicate {condition:"random_chance",chance:0.25} run return 1

execute store result storage craftdis:craftdis redstone_particle_spawn.x double 0.1 run random value -110..110
execute store result storage craftdis:craftdis redstone_particle_spawn.z double 0.1 run random value -110..110

function craftdis:craftdis/redstone_particles/spawn with storage craftdis:craftdis redstone_particle_spawn
