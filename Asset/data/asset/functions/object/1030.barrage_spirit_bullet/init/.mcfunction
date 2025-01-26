#> asset:object/1030.barrage_spirit_bullet/init/
#
# Objectのinit時の処理
#
# @within asset:object/alias/1030/init

#> private
# @private
    #declare tag SpreadMarker

# フィールドのデータからスコアを設定
    data modify storage asset:context this.Speed set value 2
    data modify storage asset:context this.Range set value 60

# デフォルト値0.5
    data modify storage asset:context this.MovePerStep set value 0.5

# 拡散値
        data modify storage lib: Argument.Distance set value 15
        data modify storage lib: Argument.Spread set value 3

# 拡散させるEntityを召喚する
    summon marker ~ ~ ~ {Tags:["SpreadMarker"]}

# 拡散
    execute facing entity @e[tag=Enemy,tag=!Uninterferable,distance=..20,sort=nearest,limit=1] eyes as @e[type=marker,tag=SpreadMarker,limit=1] run function lib:forward_spreader/circle

# マーカーの方を向き、タグを変更
    execute facing entity @e[type=marker,tag=SpreadMarker,distance=..20,sort=nearest,limit=1] feet run tp @s ~ ~ ~ ~ ~5
# リセット
    kill @e[type=marker,tag=SpreadMarker,distance=..20]
    data remove storage lib: Argument

    function asset:object/super.init
