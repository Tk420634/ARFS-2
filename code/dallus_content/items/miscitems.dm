//Stunsword modification kit. Makes a baton into a sword
/obj/item/device/modkit_item/ssword //device/modkit was already taken, and I don't want any surprises from the parent
	name = "stunsword kit"
	desc = "a modkit for making a stunbaton into a stunsword"
	icon = 'icons/vore/custom_items_vr.dmi'
	icon_state = "modkit"
	var/product = /obj/item/weapon/melee/baton/stunsword //what it makes
	var/list/fromitem = list(/obj/item/weapon/melee/baton, /obj/item/weapon/melee/baton/loaded) //what it needs
	afterattack(obj/O, mob/user as mob)
		if(istype(O, product))
			user << "<span class='warning'>The [O] is already modified!"
		else if(O.type in fromitem) //makes sure O is the right thing
			var/obj/item/weapon/melee/baton/B = O
			if(!B.bcell) //checks for a powercell in the baton. If there isn't one, continue. If there is, warn the user to take it out
				new product(usr.loc) //spawns the product
				user.visible_message("<span class='warning'>[user] modifies the [O]!","<span class='warning'>You modify the [O]!")
				qdel(O) //Gets rid of the baton
				qdel(src) //gets rid of the kit

			else
				user << "<span class='warning'>Remove the powercell first!" //We make this check because the stunsword starts without a battery. Weapon cells are scarce, so it would suck to just delete one
		else
			user << "<span class='warning'> You can't modify the [O] with this kit!"