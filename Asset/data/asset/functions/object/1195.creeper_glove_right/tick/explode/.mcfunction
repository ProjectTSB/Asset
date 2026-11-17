#> asset:object/1195.creeper_glove_right/tick/explode/
#
# 爆発処理
#
# @within function asset:object/1195.creeper_glove_right/tick/swing/out

# 演出
    function asset:object/1195.creeper_glove_right/tick/explode/vfx

# 敵へのダメージ
    function asset:object/1195.creeper_glove_right/tick/explode/damage

# 敵のノックバック 倒れた敵と追加当たり判定は除く
    execute rotated as @p[tag=1195.Owner,distance=..64] rotated ~ -15 positioned ~ ~-0.9 ~ as @e[type=#lib:living_without_player,tag=Enemy,tag=!ExtendedCollision,tag=!Uninterferable,tag=!Death,distance=..2] run function asset:object/1195.creeper_glove_right/tick/explode/knockback_enemy

# 硬直へ移る
    data modify storage asset:context this.State set value "hit_hold"
    data modify storage asset:context this.Step set value 0

# 存在時間が切れていれば、爆発の直後に消滅する
    execute if score $1195.Expired Temporary matches 1 run kill @s
