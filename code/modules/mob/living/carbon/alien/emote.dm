/mob/living/carbon/alien/emote(var/act, var/m_type=1, var/message = null)
	var/param = null
	if(findtext(act, "-", 1, null))
		var/t1 = findtext(act, "-", 1, null)
		param = copytext_char(act, t1 + 1, length(act) + 1)
		act = copytext_char(act, 1, t1)

	var/muzzled = is_muzzled()

	switch(act)
		if("sign")
			if(!restrained())
				var/num = null
				if(text2num(param))
					num = "the number [text2num(param)]"
				if(num)
					message = "<B>[src]</B> signs [num]."
					m_type = 1
		if("burp")
			if(!muzzled)
				message = "<B>[src]</B> burps."
				m_type = 2
		if("deathgasp")
			message = "<B>[src]</B> lets out a waning guttural screech, green blood bubbling from its maw."
			m_type = 2
		if("scratch")
			if(!restrained())
				message = "<B>[src]</B> scratches."
				m_type = 1
		if("whimper")
			if(!muzzled)
				message = "<B>[src]</B> whimpers."
				m_type = 2
		if("tail")
			message = "<B>[src]</B> waves its tail."
			m_type = 1
		if("gasp")
			message = "<B>[src]</B> gasps."
			m_type = 2
		if("shiver")
			message = "<B>[src]</B> shivers."
			m_type = 2
		if("drool")
			message = "<B>[src]</B> drools."
			m_type = 1
		if("scretch")
			if(!muzzled)
				message = "<B>[src]</B> scretches."
				m_type = 2
		if("choke")
			message = "<B>[src]</B> chokes."
			m_type = 2
		if("moan")
			message = "<B>[src]</B> moans!"
			m_type = 2
		if("nod")
			message = "<B>[src]</B> nods its head."
			m_type = 1
//		if("sit")
//			message = "<B>[src]</B> sits down." //Larvan can't sit down, /N
//			m_type = 1
		if("sway")
			message = "<B>[src]</B> sways around dizzily."
			m_type = 1
		if("sulk")
			message = "<B>[src]</B> sulks down sadly."
			m_type = 1
		if("twitch")
			message = "<B>[src]</B> twitches."
			m_type = 1
		if("twitch_v")
			message = "<B>[src]</B> twitches violently."
			m_type = 1
		if("dance")
			if(!restrained())
				message = "<B>[src]</B> dances around happily."
				m_type = 1
		if("roll")
			if(!restrained())
				message = "<B>[src]</B> rolls."
				m_type = 1
		if("shake")
			message = "<B>[src]</B> shakes its head."
			m_type = 1
		if("gnarl")
			if(!muzzled)
				message = "<B>[src]</B> gnarls and shows its teeth.."
				m_type = 2
		if("jump")
			message = "<B>[src]</B> jumps!"
			m_type = 1
		if("hiss_")
			message = "<B>[src]</B> hisses softly."
			m_type = 1
		if("collapse")
			Paralyse(2)
			message = "<B>[src]</B> collapses!"
			m_type = 2
		if("chirp")
			message = "<B>[src]</B> chirps!"
			playsound(src, 'sound/misc/nymphchirp.ogg', 50, 0)
			m_type = 2
		if("help")
			to_chat(src, "<span class='filter_say'>burp, chirp, choke, collapse, dance, drool, gasp, shiver, gnarl, jump, moan, nod, roll, scratch,\nscretch, shake, sign-#, sulk, sway, tail, twitch, whimper</span>")

	if(!stat)
		..(act, m_type, message)