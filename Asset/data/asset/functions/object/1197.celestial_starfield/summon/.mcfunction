#> asset:object/1197.celestial_starfield/summon/
#
# Object召喚処理の呼び出し時に実行されるfunction
#
# @within asset:object/alias/1197/summon

# 見えない表示を召喚し、Partsの text_display を乗せる
    function asset:object/1197.celestial_starfield/summon/m with storage asset:context this

# 乗せた後は不要なので、保存するFieldから外す
    data remove storage asset:context this.Parts
