//NanoTrasen Security Uniforms

/obj/item/clothing/under/arf
	name = "Arf uniform"
	desc = "A comfortable turtleneck and black trousers sporting Arf symbols."
	icon_state = "navyutility"
	worn_state = "navyutility"
	armor = list(melee = 0, bullet = 0, laser = 0,energy = 0, bomb = 0, bio = 0, rad = 0)
	siemens_coefficient = 0.9

/obj/item/clothing/under/arf/security
	name = "Arf security uniform"
	desc = "The security uniform of Arf's security. It looks sturdy and well padded"
	icon_state = "navyutility_sec"
	worn_state = "navyutility_sec"
	armor = list(melee = 10, bullet = 10, laser = 10,energy = 10, bomb = 10, bio = 10, rad = 10)

/obj/item/clothing/under/arf/security/warden
	name = "Arf warden uniform"
	desc = "The uniform of the Arf's prison wardens. It looks sturdy and well padded. This one has gold cuffs."
	icon_state = "navyutility_com"
	worn_state = "navyutility_com"

/obj/item/clothing/under/arf/security/commander
	name = "Arf security command uniform"
	desc = "The uniform of the Arf's security commanding officers. It looks sturdy and well padded. This one has gold trim and red blazes."
	icon_state = "blackutility_seccom"
	worn_state = "blackutility_seccom"

//Head Gear

/obj/item/clothing/head/soft/arf
	name = "Arf security cap"
	desc = "It's a Arf blue ballcap with a Arf crest. It looks surprisingly sturdy."
	icon_state = "fleetsoft"
	item_state_slots = list(
		slot_l_hand_str = "darkbluesoft",
		slot_r_hand_str = "darkbluesoft",
		)
	armor = list(melee = 10, bullet = 5, laser = 5,energy = 5, bomb = 5, bio = 5, rad = 0)

/obj/item/clothing/head/beret/arf
	name = "Arf security beret"
	desc = "A Arf blue beret belonging to the Arf security forces. For personnel that are more inclined towards style than safety."
	icon_state = "beret_navy"

//Armor

/obj/item/clothing/suit/storage/vest/arf
	name = "security armor vest"
	desc = "A Sturdy kevlar plate carrier with webbing attached."
	icon_state = "webvest"
	item_state_slots = list(slot_r_hand_str = "swat", slot_l_hand_str = "swat")
	armor = list(melee = 50, bullet = 40, laser = 40, energy = 25, bomb = 25, bio = 0, rad = 0)
	slowdown = 0.5