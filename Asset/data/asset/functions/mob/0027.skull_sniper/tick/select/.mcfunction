#> asset:mob/0027.skull_sniper/tick/select/
# @within function asset:mob/0027.skull_sniper/tick/

# プレイヤーを1名ターゲットする
# ただし間に壁がないプレイヤーに限定する
    execute positioned ^ ^ ^15 as @a[tag=!PlayerShouldInvulnerable,distance=..40,sort=nearest] at @e[type=#lib:living,tag=this,distance=..55,limit=1] anchored eyes run function asset:mob/0027.skull_sniper/tick/select/foreach

# いなければ再待機
    execute unless data storage asset:context this.Target.ID run function asset:mob/0027.skull_sniper/tick/reset
