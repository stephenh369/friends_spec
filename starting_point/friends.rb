def get_name(person)
  return person[:name]
end

def favourite_tv_show(person)
  return person[:favourites][:tv_show]
end

def favourite_snack(person, snack)
  if (person[:favourites][:snacks][0] == snack)
    return true
  else
    return false
  end
end

def add_friend(person, friend)
  person[:friends].push(friend)
  p person[:friends].length
end
