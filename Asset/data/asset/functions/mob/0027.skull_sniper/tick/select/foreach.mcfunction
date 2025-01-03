#> asset:mob/0027.skull_sniper/tick/select/foreach
# @within asset:mob/0027.skull_sniper/tick/select/

# ターゲットが完了していれば終了
    execute if data storage asset:context this.Target.ID run return fail

# プレイヤーが視認できるか確認する
    tag @s add R.Target
    execute facing entity @s eyes run function asset:mob/0027.skull_sniper/tick/target/
    tag @s remove R.Target
