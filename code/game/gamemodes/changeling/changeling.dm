/datum/game_mode/changeling
	name = "Changeling"
	round_description = "На станции появились инопланетные подменыши. Не позвольте подменышам выиграть!"
	extended_round_description = "Жизнь всегда находит выход. Однако иногда жизнь может пойти по более сложному пути. \
		Обширные знания человечества о ксенобиологических образцах сделали их самоуверенными и высокомерными. Из за этого \
		что-то проскользнуло мимо их глаз. Что-то опасное. Что-то живое. Самое страшное существо из всех, \
		впрочем, разве что это что-то, есть кто-то. Неизвестный инопланетный экземпляр внедрился в \
		экипаж станции. Его уникальная биология позволяет ему манипулировать своей собственной или чьей-либо еще ДНК. \
		С возможностью копировать лица, голоса, животных, а также изменять химический состав собственного тела, \
		его существование угрожает не только вашей личной безопасности, но и жизни всех, кто находится на станции. \
		Никто не знает, откуда оно взялось. Никто не знает, что оно и чего хочет. Одно мы знаем \
		наверняка... никогда не бывает только одно такое создание. Удачи."
	config_tag = "changeling"
	required_players = 2
	required_players_secret = 3
	required_enemies = 1
	end_on_antag_death = 0
	antag_scaling_coeff = 10
	antag_tags = list(MODE_CHANGELING)
