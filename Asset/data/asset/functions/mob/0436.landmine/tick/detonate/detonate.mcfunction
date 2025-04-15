#> asset:mob/0436.landmine/tick/detonate/detonate
#
# 
#
# @within function asset:mob/0436.landmine/tick/

# デバフ
    function asset:mob/0436.landmine/tick/detonate/debuff

# ダメージ
    function asset:mob/0436.landmine/tick/detonate/damage

# vfx
    function asset:mob/0436.landmine/tick/detonate/vfx

# 消滅
    tag @e[type=slime,tag=this,distance=..1] remove C4.Active
    execute as @e[type=slime,tag=this,distance=..1] run function api:mob/kill
