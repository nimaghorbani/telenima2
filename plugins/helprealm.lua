do
    function run(msg, matches)
	return 'Realm Commands: \n !creategroup [Name] \n !createrealm [Name] \n !setname [Name] \n !setabout [GroupID] [Text] \n !setrules [GroupID] [Text] \n !lock [GroupID] [setting] \n !unlock [GroupID] [setting] \n !wholist \n !who \n !type \n !kill chat [GroupID] \n !kill realm [RealmID] \n !addadmin [id|username] \n !removeadmin [id|username] \n !list groups \n !list realms \n !log \n !broadcast [text] \n !br [group_id] [text] \n Creator: @MrGhor & @HaWkerGh'
end
return {
  patterns = {
      "^[/!%&$]([Rr]ealm)$",
      "^([Rr]ealm)$"
      }, 
  run = run 
}
end
