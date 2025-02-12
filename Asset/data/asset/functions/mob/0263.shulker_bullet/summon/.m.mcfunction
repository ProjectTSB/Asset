#> asset:mob/0263.shulker_bullet/summon/.m
# @input args Rotation : float[]
# @within asset:mob/0263.shulker_bullet/summon/

$summon slime ~ ~ ~ {Silent:1b,DeathLootTable:"empty",Team:"NoCollision",NoAI:1b,Rotation:$(Rotation),Tags:["MobInit","ProcessCommonTag","AlwaysInvisible"]}
