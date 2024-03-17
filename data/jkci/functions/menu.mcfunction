tellraw @a ["\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",{"text": "===","color": "green"},{"text": " 物品种类收集挑战 ","color": "yellow"},{"text": "=== ","color": "green"},"v1.0 for 1.17-1.20.4",{"text": " ===\n","color": "green"}]

tellraw @a ["作者：",{"text": "JK137","color": "aqua"},{"text": "\n\n在规定的时间内成为获得最多物品种类的玩家吧！","color": "gold"}]

kill @e[tag=jkci.display]

execute unless score #keepinv jkci.mem matches 1 run summon marker ~ ~ ~ {Tags: ["jkci.display", "jkci.keepinv"], CustomName: '{"text": "[死亡不掉落]","color": "white"}'}
execute if score #keepinv jkci.mem matches 1 run summon marker ~ ~ ~ {Tags: ["jkci.display", "jkci.keepinv"], CustomName: '{"text": "[死亡不掉落]","color": "green"}'}
execute unless score #night_vision jkci.mem matches 1 run summon marker ~ ~ ~ {Tags: ["jkci.display", "jkci.night_vision"], CustomName: '{"text": "[永久夜视]","color": "white"}'}
execute if score #night_vision jkci.mem matches 1 run summon marker ~ ~ ~ {Tags: ["jkci.display", "jkci.night_vision"], CustomName: '{"text": "[永久夜视]","color": "green"}'}

tellraw @a ["\n设置：",{"selector":"@e[limit=1,tag=jkci.keepinv]","clickEvent":{"action":"run_command","value":"/function jkci:menu/keepinv"}},"  ",{"selector":"@e[limit=1,tag=jkci.night_vision]","clickEvent":{"action":"run_command","value":"/function jkci:menu/night_vision"}},"  ",{"text": "[设置时间]","color": "yellow","clickEvent":{"action":"suggest_command","value":"/scoreboard players set #time jkci.mem "},"hoverEvent": {"action": "show_text","value": "默认为 1800 秒，请设置在 1 以上！"}},{"text": "\n\n-------------------------------> ","color": "green"},{"text": "[开始游戏]","color": "light_purple","clickEvent": {"action":"run_command","value": "/function jkci:start"},"hoverEvent":{"action":"show_text","value":"开始游戏时所有玩家传送到你的位置。"}}]

playsound block.note_block.bell player @s